package org.bouncycastle.crypto.digests;

import ch.qos.logback.core.joran.action.ActionConst;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Digest;

public class NullDigest implements Digest {
    private ByteArrayOutputStream bOut = new ByteArrayOutputStream();

    @Override
    public int doFinal(byte[] bArr, int i) {
        byte[] byteArray = this.bOut.toByteArray();
        System.arraycopy(byteArray, 0, bArr, i, byteArray.length);
        reset();
        return byteArray.length;
    }

    @Override
    public String getAlgorithmName() {
        return ActionConst.NULL;
    }

    @Override
    public int getDigestSize() {
        return this.bOut.size();
    }

    @Override
    public void reset() {
        this.bOut.reset();
    }

    @Override
    public void update(byte b) {
        this.bOut.write(b);
    }

    @Override
    public void update(byte[] bArr, int i, int i2) {
        this.bOut.write(bArr, i, i2);
    }
}
