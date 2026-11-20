package nts;

import java.util.Hashtable;

public class C0529 implements InterfaceC0352 {

    public C0147 f3079;

    public InterfaceC0665 f3081;

    public C0239 f3082;

    public Hashtable f3080 = new Hashtable();

    public boolean f3078 = false;

    public C0529(Object obj, Object obj2, C0239 c0239) {
        this.f3082 = null;
        this.f3081 = null;
        this.f3079 = null;
        this.f3082 = c0239;
        if (obj instanceof InterfaceC0665) {
            this.f3081 = (InterfaceC0665) obj;
        }
        this.f3079 = new C0147(this, null, obj2);
    }

    @Override
    public void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
    }

    @Override
    public void fireSSLStatus(String str) {
    }

    public void m5350(int i, String str) {
    }

    public void m5351() {
    }

    public void m5352(int i, String str) {
    }

    public void m5353(String str, int i, String str2) {
    }

    public void m5355(byte[] bArr, int i) throws C0414 {
        if (bArr == null || i == 0) {
            return;
        }
        byte[] bArrM3851 = C0259.m3851(C0259.m3849(i), bArr);
        int i2 = i + 4;
        C0239 c0239 = this.f3082;
        String str = c0239.f2983;
        int i3 = c0239.f2990;
        this.f3079.mo3308(0);
        if (!this.f3079.m3355()) {
            this.f3079.m3314(this.f3082.m5264());
            this.f3079.m3337(this.f3082.m5269());
            this.f3079.m3338(str);
            this.f3079.m3330(i3);
            m5354(true);
        } else if (!this.f3079.f382.equals(str) || this.f3079.f357 != i3) {
            m5354(false);
            this.f3079.m3338(str);
            this.f3079.m3330(i3);
            m5354(true);
        }
        this.f3079.m3396(bArrM3851, 0, i2);
    }

    public final void m5354(boolean z) {
        this.f3079.mo3290(60);
        this.f3079.m3380(z);
        this.f3079.mo3290(this.f3082.f3354);
    }
}
