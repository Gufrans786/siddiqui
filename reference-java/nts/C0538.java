package nts;

import androidx.appcompat.app.AppCompatDelegate;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.math.BigInteger;
import java.util.Hashtable;

public class C0538 {

    public int f3116;

    public C0145 f3115 = new C0145();

    public C0130 f3113 = new C0130();

    public C0158 f3114 = new C0158();

    public C0158 f3111 = new C0158();

    public Hashtable f3112 = new Hashtable();

    public C0538() {
        m5415();
    }

    public C0145 m5409() {
        if (this.f3116 != 1) {
            throw new C0414(288, C0164.m3495(20202, 54, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
        }
        if (!m5410()) {
            throw new C0414(288, C0164.m3495(20165, 37, 7));
        }
        C0145 c0145 = new C0145();
        C0145 c0146 = this.f3115;
        c0145.f336 = c0146.f336;
        c0145.f334 = c0146.f334;
        c0145.f331 = c0146.f331;
        c0145.f333 = c0146.f333;
        c0145.f329 = c0146.f329;
        c0145.f330 = c0146.f330;
        c0145.f332 = c0146.f332;
        c0145.f335 = c0146.f335;
        if (c0145.f334 == null) {
            throw new C0414(280, C0164.m3495(20800, 34, 29));
        }
        if (c0145.f336 == null && c0145.f335 == null) {
            throw new C0414(280, C0164.m3495(20834, 51, 4));
        }
        try {
            byte[] bArr = c0145.f335;
            if (bArr != null && c0145.f336 != null && c0145.f331 != null && c0145.f333 != null) {
                BigInteger bigInteger = new BigInteger(1, bArr);
                BigInteger bigInteger2 = new BigInteger(1, c0145.f331);
                BigInteger bigInteger3 = new BigInteger(1, c0145.f333);
                if (c0145.f329 == null) {
                    c0145.f329 = bigInteger.mod(bigInteger2.subtract(BigInteger.ONE)).toByteArray();
                }
                if (c0145.f330 == null) {
                    c0145.f330 = bigInteger.mod(bigInteger3.subtract(BigInteger.ONE)).toByteArray();
                }
                if (c0145.f332 == null) {
                    c0145.f332 = bigInteger3.modInverse(bigInteger2).toByteArray();
                }
            }
            return c0145;
        } catch (Exception unused) {
            throw new C0414(280, C0164.m3495(20885, 32, 93));
        }
    }

    public boolean m5410() {
        byte[] bArr;
        C0145 c0145;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        int i = this.f3116;
        if (i == 1) {
            C0145 c0146 = this.f3115;
            byte[] bArr10 = c0146.f334;
            return bArr10 != null && bArr10.length > 0 && (((bArr = c0146.f335) != null && bArr.length > 0) || ((bArr2 = (c0145 = this.f3115).f331) != null && bArr2.length > 0 && (bArr3 = c0145.f333) != null && bArr3.length > 0 && (bArr4 = c0145.f329) != null && bArr4.length > 0 && (bArr5 = c0145.f330) != null && bArr5.length > 0));
        }
        if (i == 2) {
            C0130 c0130 = this.f3113;
            byte[] bArr11 = c0130.f259;
            return bArr11 != null && bArr11.length > 0 && (bArr6 = c0130.f258) != null && bArr6.length > 0 && (bArr7 = c0130.f256) != null && bArr7.length > 0 && (bArr8 = c0130.f255) != null && bArr8.length > 0;
        }
        if (i != 3) {
            return i == 4 && (bArr9 = this.f3111.f486) != null && bArr9.length > 0;
        }
        byte[] bArr12 = this.f3114.f491;
        return bArr12 != null && bArr12.length > 0;
    }

    public C0158 m5411() {
        if (this.f3116 != 4) {
            throw new C0414(288, C0164.m3495(20742, 58, 117));
        }
        if (!this.f3111.m3428()) {
            throw new C0414(288, C0164.m3495(20703, 39, 92));
        }
        C0158 c0158 = new C0158();
        C0158 c0159 = this.f3111;
        c0158.f488 = c0159.f488;
        c0158.f489 = c0159.f489;
        c0158.f485 = c0159.f485;
        c0158.f486 = c0159.f486;
        return c0158;
    }

    public boolean m5412() {
        return this.f3116 == 4;
    }

    public boolean m5413() {
        return this.f3116 == 1;
    }

    public boolean m5414() {
        return this.f3116 == 2;
    }

    public void m5415() {
        this.f3116 = 0;
        this.f3115 = new C0145();
        this.f3113 = new C0130();
        this.f3114 = new C0158();
        this.f3111 = new C0158();
        this.f3112.clear();
    }

    public String m5416() {
        return !this.f3112.containsKey(C0164.m3495(21015, 12, 41)) ? "" : (String) this.f3112.get(C0164.m3495(21027, 12, 66));
    }

    public C0158 m5417() {
        if (this.f3116 != 3) {
            throw new C0414(288, C0164.m3495(20549, 58, 56));
        }
        if (!m5410()) {
            throw new C0414(288, C0164.m3495(20510, 39, 66));
        }
        C0158 c0158 = new C0158();
        C0158 c0159 = this.f3114;
        c0158.f488 = c0159.f488;
        c0158.f489 = c0159.f489;
        c0158.f490 = c0159.f490;
        c0158.f487 = c0159.f487;
        c0158.f491 = c0159.f491;
        return c0158;
    }

    public boolean m5418() {
        return this.f3116 == 3;
    }

    public C0130 m5419() {
        if (this.f3116 != 2) {
            throw new C0414(288, C0164.m3495(20398, 54, 22));
        }
        if (!m5410()) {
            throw new C0414(288, C0164.m3495(20361, 37, 44));
        }
        C0130 c0130 = new C0130();
        C0130 c0130M5420 = m5420(this.f3113);
        this.f3113 = c0130M5420;
        c0130.f259 = c0130M5420.f259;
        c0130.f258 = c0130M5420.f258;
        c0130.f256 = c0130M5420.f256;
        c0130.f257 = c0130M5420.f257;
        c0130.f255 = c0130M5420.f255;
        return c0130;
    }

    public final C0130 m5420(C0130 c0130) {
        C0130 c0131 = this.f3113;
        if (c0131.f259 != null && c0131.f258 != null && c0130.f256 != null) {
            if (c0130.f257 == null && c0130.f255 == null) {
                throw new C0414(280, C0164.m3495(20964, 51, 41));
            }
            if (c0130.f257 == null) {
                c0130.f257 = new BigInteger(1, c0130.f256).modPow(new BigInteger(1, c0130.f255), new BigInteger(1, c0130.f259)).toByteArray();
            }
            return c0130;
        }
        throw new C0414(280, C0164.m3495(20917, 47, RNMBXStyleValue.InterpolationModeIdentity));
    }
}
