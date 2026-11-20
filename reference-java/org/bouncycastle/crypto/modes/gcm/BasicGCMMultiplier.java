package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.util.Arrays;

public class BasicGCMMultiplier implements GCMMultiplier {
    private byte[] H;

    @Override
    public void init(byte[] bArr) {
        this.H = Arrays.clone(bArr);
    }

    @Override
    public void multiplyH(byte[] bArr) {
        GCMUtil.multiply(bArr, this.H);
    }
}
