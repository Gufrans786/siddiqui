package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.util.Arrays;

public class BasicGCMExponentiator implements GCMExponentiator {
    private byte[] x;

    @Override
    public void exponentiateX(long j, byte[] bArr) {
        byte[] bArrOneAsBytes = GCMUtil.oneAsBytes();
        if (j > 0) {
            byte[] bArrClone = Arrays.clone(this.x);
            do {
                if ((1 & j) != 0) {
                    GCMUtil.multiply(bArrOneAsBytes, bArrClone);
                }
                GCMUtil.multiply(bArrClone, bArrClone);
                j >>>= 1;
            } while (j > 0);
        }
        System.arraycopy(bArrOneAsBytes, 0, bArr, 0, 16);
    }

    @Override
    public void init(byte[] bArr) {
        this.x = Arrays.clone(bArr);
    }
}
