package nts;

public final class C0336 extends C0406 {

    public final C0147 f1814;

    public C0336(C0610 c0610, Object obj, C0147 c0147) {
        super(c0610, obj);
        this.f1814 = c0147;
    }

    @Override
    public void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        this.f1814.m3398(bArr, str, str2, str3, zArr);
    }

    @Override
    public void fireSSLStatus(String str) {
        this.f1814.m3353(str);
    }

    @Override
    public void mo4282(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        this.f1814.m3398(bArr, str, str2, str3, zArr);
    }

    @Override
    public void mo4280(C0414 c0414, Object obj, Object obj2) {
        this.f1814.m3360(c0414, obj, obj2);
    }
}
