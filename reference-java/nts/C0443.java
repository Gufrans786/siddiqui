package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0443 extends AbstractC0095 {

    public boolean f2283 = false;

    public String f2276 = "";

    public String f2277 = "";

    public String f2280 = "";

    public int f2286 = 0;

    public int f2278 = 0;

    public String f2279 = "";

    public boolean f2282 = false;

    public String f2284 = "";

    public String f2285 = "";

    public boolean f2281 = true;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0443)) {
            return false;
        }
        C0443 c0443 = (C0443) obj;
        return this.f2276.equals(c0443.f2276) && this.f2277.equals(c0443.f2277) && this.f2280.equals(c0443.f2280) && this.f2279.equals(c0443.f2279) && this.f2284.equals(c0443.f2284) && this.f2285.equals(c0443.f2285) && this.f2282 == c0443.f2282 && this.f2286 == c0443.f2286 && this.f2278 == c0443.f2278 && this.f2281 == c0443.f2281;
    }

    public void m4814(String str) {
        if (this.f2283) {
            throw new C0414(211, C0164.m3498(97, 48, 113));
        }
        if (str == null) {
            str = "";
        }
        this.f2280 = str;
        m4816();
    }

    public void m4815(String str) {
        if (this.f2283) {
            throw new C0414(211, C0164.m3498(233, 44, 96));
        }
        if (str == null) {
            str = "";
        }
        this.f2279 = str;
        m4816();
    }

    public void m4818(String str) {
        if (this.f2283) {
            throw new C0414(211, C0164.m3498(53, 44, 61));
        }
        if (str == null) {
            str = "";
        }
        this.f2277 = str;
    }

    public void m4820(String str) throws C0414 {
        if (this.f2283) {
            throw new C0414(211, C0164.m3498(0, 53, 114));
        }
        if (str == null) {
            str = "";
        }
        this.f2276 = str;
    }

    public void m4817(int i) {
        if (!this.f2283) {
            this.f2286 = i;
            return;
        }
        throw new C0414(211, C0164.m3498(CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 44, 53));
    }

    public void m4819(int i) {
        if (!this.f2283) {
            this.f2278 = i;
            if (this.f2286 != 0 || i == 0) {
                return;
            }
            this.f2286 = i == 1 ? 80 : 1080;
            return;
        }
        throw new C0414(211, C0164.m3498(189, 44, 23));
    }

    public final void m4816() {
        if (this.f2279.length() == 0 && this.f2280.length() == 0) {
            this.f2276 = "";
            return;
        }
        C0619 c0619 = new C0619(null, new Object());
        c0619.f3413 = 1;
        c0619.f3429 = 65535;
        byte[] bArrM3859 = C0259.m3859((this.f2279 + ":" + this.f2280).getBytes());
        c0619.m5706(bArrM3859, 0, bArrM3859.length);
        try {
            c0619.m5674(2);
        } catch (C0414 unused) {
        }
        this.f2276 = C0259.m3892(c0619.f3403);
    }

    public void m4821(boolean z) {
        if (z && !C0259.m3856(C0610.f3335)) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0164.m3498(277, 71, 93));
        }
        if (!this.f2283) {
            this.f2282 = z;
            return;
        }
        throw new C0414(211, C0164.m3498(348, 50, 45));
    }
}
