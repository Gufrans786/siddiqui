package nts;

public class C0402 {

    public String f2090;

    public Object f2091;

    public int f2092;

    public String f2093;

    public String f2094;

    public Object f2095;

    public String f2096;

    public C0414 f2097;

    public Object f2098;

    public boolean[] f2099;

    public byte[] f2100;

    public C0147 f2101;

    public C0402(C0147 c0147) {
        this.f2101 = c0147;
        this.f2098 = c0147.f1721;
    }

    public void m4636() {
        synchronized (this.f2098) {
            int i = this.f2092;
            this.f2092 = 0;
            switch (i) {
                case 2:
                    this.f2101.fireSSLStatus(this.f2096);
                    break;
                case 3:
                    this.f2101.fireSSLServerAuthentication(this.f2100, this.f2093, this.f2094, this.f2096, this.f2099);
                    break;
                case 4:
                    this.f2101.m3359(this.f2097);
                    break;
                case 5:
                    this.f2101.m3310(this.f2097);
                    break;
                case 6:
                    C0147 c0147 = this.f2101;
                    C0414 c0414 = this.f2097;
                    Object obj = this.f2091;
                    Object obj2 = this.f2095;
                    if (c0147.f388.f3005 == obj) {
                        if (c0414 != null) {
                            c0147.m4312((Exception) c0414);
                            c0147.m3389(C0164.m3500(4508, 22, 98), c0147.f1722);
                        } else {
                            c0147.m3389(C0164.m3500(4530, 23, 124), c0147.f1722);
                        }
                        c0147.m3391(c0414, obj, obj2, true);
                    }
                    break;
                case 7:
                    this.f2101.m3389(this.f2090, this.f2097);
                    break;
                case 8:
                    this.f2101.m3291(this.f2097);
                    break;
            }
            this.f2098.notifyAll();
        }
    }
}
