package nts;

import java.util.Vector;

public class C0377 {

    public C0433 f1956;

    public Vector f1957 = new Vector();

    public C0377() {
        byte[] bArr = C0320.f1706;
        this.f1956 = null;
    }

    public void m4471(byte[] bArr) {
        C0302 c0302 = new C0302();
        c0302.m4680(bArr);
        C0418 c0418 = c0302.f1618.f1271;
        if (!(c0418 instanceof C0339)) {
            throw new C0414(271, C0164.m3495(18921, 38, 117));
        }
        C0339 c0339 = (C0339) c0418;
        for (int i = 0; i < c0339.f1825.m5510(); i++) {
            this.f1957.add(c0339.f1825.m5511(i));
        }
        C0671.m5969(this.f1957);
        this.f1956 = this.f1957.size() == 0 ? null : new C0433((C0213) this.f1957.get(0));
    }
}
