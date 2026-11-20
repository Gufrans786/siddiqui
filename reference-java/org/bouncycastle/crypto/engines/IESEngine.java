package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.IESParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;

public class IESEngine {
    BasicAgreement agree;
    BufferedBlockCipher cipher;
    boolean forEncryption;
    DerivationFunction kdf;
    Mac mac;
    byte[] macBuf;
    IESParameters param;
    CipherParameters privParam;
    CipherParameters pubParam;

    public IESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.cipher = null;
    }

    public IESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, BufferedBlockCipher bufferedBlockCipher) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.cipher = bufferedBlockCipher;
    }

    private byte[] decryptBlock(byte[] bArr, int i, int i2, byte[] bArr2) throws InvalidCipherTextException {
        byte[] bArr3;
        int i3;
        KeyParameter keyParameter;
        byte[] bArr4;
        KDFParameters kDFParameters = new KDFParameters(bArr2, this.param.getDerivationV());
        int macKeySize = this.param.getMacKeySize();
        this.kdf.init(kDFParameters);
        int macSize = i2 - this.mac.getMacSize();
        int i4 = 0;
        if (this.cipher == null) {
            int i5 = macKeySize / 8;
            byte[] bArrGenerateKdfBytes = generateKdfBytes(kDFParameters, macSize + i5);
            bArr4 = new byte[macSize];
            for (int i6 = 0; i6 != macSize; i6++) {
                bArr4[i6] = (byte) (bArr[i + i6] ^ bArrGenerateKdfBytes[i6]);
            }
            keyParameter = new KeyParameter(bArrGenerateKdfBytes, macSize, i5);
            bArr3 = bArr;
            i3 = i;
        } else {
            int cipherKeySize = ((IESWithCipherParameters) this.param).getCipherKeySize() / 8;
            int i7 = macKeySize / 8;
            byte[] bArrGenerateKdfBytes2 = generateKdfBytes(kDFParameters, cipherKeySize + i7);
            this.cipher.init(false, new KeyParameter(bArrGenerateKdfBytes2, 0, cipherKeySize));
            byte[] bArr5 = new byte[this.cipher.getOutputSize(macSize)];
            bArr3 = bArr;
            i3 = i;
            int iProcessBytes = this.cipher.processBytes(bArr3, i3, macSize, bArr5, 0);
            int iDoFinal = iProcessBytes + this.cipher.doFinal(bArr5, iProcessBytes);
            byte[] bArr6 = new byte[iDoFinal];
            System.arraycopy(bArr5, 0, bArr6, 0, iDoFinal);
            keyParameter = new KeyParameter(bArrGenerateKdfBytes2, cipherKeySize, i7);
            bArr4 = bArr6;
        }
        byte[] encodingV = this.param.getEncodingV();
        this.mac.init(keyParameter);
        this.mac.update(bArr3, i3, macSize);
        this.mac.update(encodingV, 0, encodingV.length);
        this.mac.doFinal(this.macBuf, 0);
        int i8 = i3 + macSize;
        while (true) {
            byte[] bArr7 = this.macBuf;
            if (i4 >= bArr7.length) {
                return bArr4;
            }
            if (bArr7[i4] != bArr3[i8 + i4]) {
                throw new InvalidCipherTextException("Mac codes failed to equal.");
            }
            i4++;
        }
    }

    private byte[] encryptBlock(byte[] bArr, int i, int i2, byte[] bArr2) throws InvalidCipherTextException {
        byte[] bArr3;
        KeyParameter keyParameter;
        KDFParameters kDFParameters = new KDFParameters(bArr2, this.param.getDerivationV());
        int macKeySize = this.param.getMacKeySize();
        if (this.cipher == null) {
            int i3 = macKeySize / 8;
            byte[] bArrGenerateKdfBytes = generateKdfBytes(kDFParameters, i2 + i3);
            bArr3 = new byte[this.mac.getMacSize() + i2];
            for (int i4 = 0; i4 != i2; i4++) {
                bArr3[i4] = (byte) (bArr[i + i4] ^ bArrGenerateKdfBytes[i4]);
            }
            keyParameter = new KeyParameter(bArrGenerateKdfBytes, i2, i3);
        } else {
            int cipherKeySize = ((IESWithCipherParameters) this.param).getCipherKeySize() / 8;
            int i5 = macKeySize / 8;
            byte[] bArrGenerateKdfBytes2 = generateKdfBytes(kDFParameters, cipherKeySize + i5);
            this.cipher.init(true, new KeyParameter(bArrGenerateKdfBytes2, 0, cipherKeySize));
            byte[] bArr4 = new byte[this.cipher.getOutputSize(i2)];
            int iProcessBytes = this.cipher.processBytes(bArr, i, i2, bArr4, 0);
            i2 = iProcessBytes + this.cipher.doFinal(bArr4, iProcessBytes);
            byte[] bArr5 = new byte[this.mac.getMacSize() + i2];
            System.arraycopy(bArr4, 0, bArr5, 0, i2);
            KeyParameter keyParameter2 = new KeyParameter(bArrGenerateKdfBytes2, cipherKeySize, i5);
            bArr3 = bArr5;
            keyParameter = keyParameter2;
        }
        byte[] encodingV = this.param.getEncodingV();
        this.mac.init(keyParameter);
        this.mac.update(bArr3, 0, i2);
        this.mac.update(encodingV, 0, encodingV.length);
        this.mac.doFinal(bArr3, i2);
        return bArr3;
    }

    private byte[] generateKdfBytes(KDFParameters kDFParameters, int i) {
        byte[] bArr = new byte[i];
        this.kdf.init(kDFParameters);
        this.kdf.generateBytes(bArr, 0, i);
        return bArr;
    }

    public void init(boolean z, CipherParameters cipherParameters, CipherParameters cipherParameters2, CipherParameters cipherParameters3) {
        this.forEncryption = z;
        this.privParam = cipherParameters;
        this.pubParam = cipherParameters2;
        this.param = (IESParameters) cipherParameters3;
    }

    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        this.agree.init(this.privParam);
        BigInteger bigIntegerCalculateAgreement = this.agree.calculateAgreement(this.pubParam);
        boolean z = this.forEncryption;
        byte[] byteArray = bigIntegerCalculateAgreement.toByteArray();
        return z ? encryptBlock(bArr, i, i2, byteArray) : decryptBlock(bArr, i, i2, byteArray);
    }
}
