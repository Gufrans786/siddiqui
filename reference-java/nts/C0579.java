package nts;

import java.util.Vector;

public class C0579 {

    public int f3242;

    public C0387 f3243;

    public int f3244;

    public String f3245;

    public Vector f3246 = new Vector();

    public C0579() {
        byte[] bArr = C0320.f1706;
        this.f3245 = "";
        this.f3243 = new C0387();
        this.f3244 = -1;
        this.f3242 = -1;
    }

    public C0538 m5557() {
        if (m5559() != null && m5559().f242 != null) {
            return m5559().f242;
        }
        if (m5558()) {
            return m5559().f239.f3200;
        }
        if (m5559() != null && m5559().f240 != null) {
            return m5559().f240.f1956.f2240;
        }
        if (m5559() != null && m5559().f241 != null) {
            return m5559().f241.f2240;
        }
        if (m5559() != null && m5559().f237 != null) {
            return m5559().f237.f508;
        }
        if (m5559() == null || m5559().f238 == null) {
            return null;
        }
        return m5559().f238.f3239;
    }

    public boolean m5558() {
        return (m5559() == null || m5559().f239 == null) ? false : true;
    }

    public final C0120 m5559() {
        int i = this.f3244;
        if (i >= 0 && i < this.f3246.size()) {
            return (C0120) this.f3246.get(this.f3244);
        }
        if (this.f3246.size() > 0) {
            return (C0120) this.f3246.get(0);
        }
        return null;
    }

    public Vector m5560() {
        C0433 c0433;
        Vector vector = new Vector();
        for (int i = 0; i < this.f3246.size(); i++) {
            C0120 c0120 = (C0120) this.f3246.get(i);
            if (c0120.f239 != null) {
                for (int i2 = 0; i2 < c0120.f239.f3201.size(); i2++) {
                    vector.add(new C0433((C0213) c0120.f239.f3201.get(i2)));
                }
            } else if (c0120.f240 != null) {
                for (int i3 = 0; i3 < c0120.f240.f1957.size(); i3++) {
                    vector.add(new C0433((C0213) c0120.f240.f1957.get(i3)));
                }
            } else {
                C0433 c0434 = c0120.f241;
                if (c0434 != null) {
                    vector.add(c0434);
                } else {
                    C0159 c0159 = c0120.f237;
                    if (c0159 != null && (c0433 = c0159.f509) != null) {
                        vector.add(c0433);
                    } else if (c0120.f238 != null) {
                        for (int i4 = 0; i4 < c0120.f238.f3241.size(); i4++) {
                            vector.add(new C0433((C0213) c0120.f238.f3241.get(i4)));
                        }
                    }
                }
            }
        }
        return vector;
    }

    public C0433 m5561() {
        C0120 c0120M5559 = m5559();
        if (c0120M5559 == null) {
            return null;
        }
        C0574 c0574 = c0120M5559.f239;
        if (c0574 != null) {
            return c0574.f3197;
        }
        C0377 c0377 = c0120M5559.f240;
        if (c0377 != null) {
            return c0377.f1956;
        }
        C0159 c0159 = c0120M5559.f237;
        if (c0159 != null) {
            return c0159.f509;
        }
        C0578 c0578 = c0120M5559.f238;
        return c0578 != null ? c0578.f3238 : c0120M5559.f241;
    }

    public void m5562(String str) {
        this.f3244 = -1;
        if (str == null || str.length() == 0 || str.equals("*") || this.f3246.size() == 0) {
            return;
        }
        if (this.f3246.size() == 1) {
            if (((C0120) this.f3246.get(0)).f239 != null) {
                C0574 c0574 = ((C0120) this.f3246.get(0)).f239;
                int iM5945 = C0671.m5945(c0574.f3201, str);
                if (iM5945 >= 0) {
                    c0574.f3197 = new C0433((C0213) c0574.f3201.get(iM5945));
                    if (!C0259.m3856((String) c0574.f3199.get(iM5945))) {
                        C0671.m5907(c0574.f3200, c0574.m5523((String) c0574.f3199.get(iM5945)));
                    }
                } else {
                    throw new C0414(271, C0164.m3495(17384, 54, 60));
                }
            }
            if (((C0120) this.f3246.get(0)).f240 != null) {
                C0377 c0377 = ((C0120) this.f3246.get(0)).f240;
                int iM5946 = C0671.m5945(c0377.f1957, str);
                if (iM5946 >= 0) {
                    c0377.f1956 = new C0433((C0213) c0377.f1957.get(iM5946));
                } else {
                    throw new C0414(271, C0164.m3495(17438, 54, 0));
                }
            }
            if (((C0120) this.f3246.get(0)).f238 != null) {
                C0578 c0578 = ((C0120) this.f3246.get(0)).f238;
                int iM5947 = C0671.m5945(c0578.f3241, str);
                if (iM5947 >= 0) {
                    c0578.f3238 = new C0433((C0213) c0578.f3241.get(iM5947));
                    C0671.m5907(c0578.f3239, (String) c0578.f3240.get(iM5947));
                    return;
                }
                return;
            }
            return;
        }
        Vector vector = new Vector();
        for (int i = 0; i < this.f3246.size(); i++) {
            C0120 c0120 = (C0120) this.f3246.get(i);
            C0574 c0575 = c0120.f239;
            if (c0575 != null) {
                vector.add(c0575.f3197.f2241);
            }
            C0377 c0378 = c0120.f240;
            if (c0378 != null) {
                vector.add(c0378.f1956.f2241);
            }
            C0433 c0433 = c0120.f241;
            if (c0433 != null) {
                vector.add(c0433.f2241);
            }
            if (c0120.f242 != null) {
                vector.add(null);
            }
            C0159 c0159 = c0120.f237;
            if (c0159 != null) {
                vector.add(c0159.f509);
            }
            C0578 c0579 = c0120.f238;
            if (c0579 != null) {
                vector.add(c0579.f3238);
            }
        }
        int iM5948 = C0671.m5945(vector, str);
        this.f3244 = iM5948;
        if (iM5948 < 0) {
            throw new C0414(271, C0164.m3495(17492, 54, 102));
        }
    }

    public void m5564(byte[] bArr, String str) {
        int[] iArr = {0};
        boolean[] zArr = {false};
        C0671.m5981(this, bArr, str, this.f3243, zArr, iArr);
        this.f3242 = iArr[0];
        if (zArr[0]) {
            String strM3853 = C0259.m3853(bArr);
            this.f3245 = strM3853;
            C0671.m5919(strM3853);
        }
    }

    public void m5563(C0538 c0538) {
        C0120 c0120 = new C0120();
        c0120.f242 = c0538;
        this.f3246.add(c0120);
    }
}
