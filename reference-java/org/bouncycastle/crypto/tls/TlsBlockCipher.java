package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

public class TlsBlockCipher implements TlsCipher {
    protected TlsClientContext context;
    protected BlockCipher decryptCipher;
    protected BlockCipher encryptCipher;
    protected TlsMac readMac;
    protected TlsMac writeMac;

    public TlsBlockCipher(TlsClientContext tlsClientContext, BlockCipher blockCipher, BlockCipher blockCipher2, Digest digest, Digest digest2, int i) {
        this.context = tlsClientContext;
        this.encryptCipher = blockCipher;
        this.decryptCipher = blockCipher2;
        int i2 = i * 2;
        int digestSize = digest.getDigestSize() + i2 + digest2.getDigestSize() + blockCipher.getBlockSize() + blockCipher2.getBlockSize();
        SecurityParameters securityParameters = tlsClientContext.getSecurityParameters();
        byte[] bArrPRF = TlsUtils.PRF(securityParameters.masterSecret, "key expansion", TlsUtils.concat(securityParameters.serverRandom, securityParameters.clientRandom), digestSize);
        this.writeMac = new TlsMac(digest, bArrPRF, 0, digest.getDigestSize());
        int digestSize2 = digest.getDigestSize();
        this.readMac = new TlsMac(digest2, bArrPRF, digestSize2, digest2.getDigestSize());
        int digestSize3 = digest2.getDigestSize() + digestSize2;
        initCipher(true, blockCipher, bArrPRF, i, digestSize3, digestSize3 + i2);
        int i3 = digestSize3 + i;
        initCipher(false, blockCipher2, bArrPRF, i, i3, i3 + i + blockCipher.getBlockSize());
    }

    protected int chooseExtraPadBlocks(SecureRandom secureRandom, int i) {
        return Math.min(lowestBitSet(secureRandom.nextInt()), i);
    }

    @Override
    public byte[] decodeCiphertext(short s, byte[] bArr, int i, int i2) throws IOException {
        boolean z;
        int size = this.readMac.getSize() + 1;
        int blockSize = this.decryptCipher.getBlockSize();
        if (i2 < size) {
            throw new TlsFatalAlert((short) 50);
        }
        if (i2 % blockSize != 0) {
            throw new TlsFatalAlert((short) 21);
        }
        for (int i3 = 0; i3 < i2; i3 += blockSize) {
            int i4 = i3 + i;
            this.decryptCipher.processBlock(bArr, i4, bArr, i4);
        }
        int i5 = (i + i2) - 1;
        int i6 = bArr[i5];
        int i7 = i6 & 255;
        int i8 = i2 - size;
        if (i7 > i8) {
            z = true;
            i7 = 0;
        } else {
            byte b = 0;
            for (int i9 = i5 - i7; i9 < i5; i9++) {
                b = (byte) (b | (bArr[i9] ^ i6));
            }
            if (b != 0) {
                z = true;
                i7 = 0;
            } else {
                z = false;
            }
        }
        int i10 = i8 - i7;
        byte[] bArrCalculateMac = this.readMac.calculateMac(s, bArr, i, i10);
        byte[] bArr2 = new byte[bArrCalculateMac.length];
        System.arraycopy(bArr, i + i10, bArr2, 0, bArrCalculateMac.length);
        if (Arrays.constantTimeAreEqual(bArrCalculateMac, bArr2) ? z : true) {
            throw new TlsFatalAlert((short) 20);
        }
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArr, i, bArr3, 0, i10);
        return bArr3;
    }

    @Override
    public byte[] encodePlaintext(short s, byte[] bArr, int i, int i2) {
        int blockSize = this.encryptCipher.getBlockSize();
        int size = blockSize - (((this.writeMac.getSize() + i2) + 1) % blockSize);
        int iChooseExtraPadBlocks = size + (chooseExtraPadBlocks(this.context.getSecureRandom(), (255 - size) / blockSize) * blockSize);
        int size2 = this.writeMac.getSize() + i2 + iChooseExtraPadBlocks + 1;
        byte[] bArr2 = new byte[size2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        byte[] bArrCalculateMac = this.writeMac.calculateMac(s, bArr, i, i2);
        System.arraycopy(bArrCalculateMac, 0, bArr2, i2, bArrCalculateMac.length);
        int length = i2 + bArrCalculateMac.length;
        for (int i3 = 0; i3 <= iChooseExtraPadBlocks; i3++) {
            bArr2[i3 + length] = (byte) iChooseExtraPadBlocks;
        }
        for (int i4 = 0; i4 < size2; i4 += blockSize) {
            this.encryptCipher.processBlock(bArr2, i4, bArr2, i4);
        }
        return bArr2;
    }

    protected void initCipher(boolean z, BlockCipher blockCipher, byte[] bArr, int i, int i2, int i3) {
        blockCipher.init(z, new ParametersWithIV(new KeyParameter(bArr, i2, i), bArr, i3, blockCipher.getBlockSize()));
    }

    protected int lowestBitSet(int i) {
        if (i == 0) {
            return 32;
        }
        int i2 = 0;
        while ((i & 1) == 0) {
            i2++;
            i >>= 1;
        }
        return i2;
    }
}
