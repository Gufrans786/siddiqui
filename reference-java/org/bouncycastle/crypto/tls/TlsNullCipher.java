package org.bouncycastle.crypto.tls;

public class TlsNullCipher implements TlsCipher {
    protected byte[] copyData(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    @Override
    public byte[] decodeCiphertext(short s, byte[] bArr, int i, int i2) {
        return copyData(bArr, i, i2);
    }

    @Override
    public byte[] encodePlaintext(short s, byte[] bArr, int i, int i2) {
        return copyData(bArr, i, i2);
    }
}
