package nts;

import java.security.MessageDigest;

public class C0338 extends AbstractC0317 {

    public String f1821;

    public String f1822;

    public MessageDigest f1823 = null;

    public C0338(String str, String str2) throws C0537 {
        this.f1822 = str2;
        this.f1703 = C0308.m4215(str);
        this.f1821 = str.toUpperCase();
        mo3250();
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) throws C0537 {
        try {
            this.f1823.update(bArr, i, i2);
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    @Override
    public void mo3250() throws C0537 {
        try {
            String str = this.f1822;
            if (str == null) {
                this.f1823 = MessageDigest.getInstance(this.f1821);
            } else {
                this.f1823 = MessageDigest.getInstance(this.f1821, str);
            }
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    @Override
    public byte[] mo3413() throws C0537 {
        return this.f1823.digest();
    }
}
