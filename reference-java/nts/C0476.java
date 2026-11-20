package nts;

import java.security.SecureRandom;

public class C0476 extends AbstractC0264 {

    public SecureRandom f2719;

    public C0476() {
        this.f2719 = null;
        this.f2719 = new SecureRandom();
    }

    @Override
    public void mo3180(byte[] bArr) {
        this.f2719.nextBytes(bArr);
    }
}
