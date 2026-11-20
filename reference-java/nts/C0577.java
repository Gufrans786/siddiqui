package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.Vector;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0577 extends AbstractC0103 {

    public int f3231;

    public int f3233;

    public int f3235;

    public int f3236;

    public static final String f3212 = C0177.m3554(0, 6, 3);

    public static final String f3223 = C0177.m3554(6, 8, 65);

    public static final String f3224 = C0177.m3554(14, 12, 89);

    public static final String f3219 = C0177.m3554(26, 6, 78);

    public static final String f3207 = C0177.m3554(32, 6, 10);

    public static final String f3220 = C0177.m3554(38, 6, 94);

    public static final String f3217 = C0177.m3554(44, 3, 30);

    public static final String f3222 = C0177.m3554(47, 7, 61);

    public static final String f3205 = C0177.m3554(54, 14, SyslogConstants.LOG_CLOCK);

    public static final String f3218 = C0177.m3554(68, 14, 116);

    public static final String f3227 = C0177.m3554(82, 14, 123);

    public static final String f3211 = C0177.m3554(96, 9, 57);

    public static final String f3209 = C0177.m3554(105, 9, 15);

    public static final String f3213 = C0177.m3554(114, 9, 74);

    public static final String f3210 = C0177.m3554(123, 18, 84);

    public static final String f3215 = C0177.m3554(CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 18, 104);

    public static final String f3216 = C0177.m3554(159, 18, 9);

    public static final String f3206 = C0177.m3554(177, 13, 106);

    public static final String f3225 = C0177.m3554(190, 13, 42);

    public static final String f3214 = C0177.m3554(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, 13, 16);

    public static final String f3221 = C0177.m3554(JfifUtil.MARKER_SOI, 7, 80);

    public static final String f3226 = C0177.m3554(223, 7, WebSocketProtocol.PAYLOAD_SHORT);

    public static final String f3208 = C0177.m3554(230, 7, 122);

    public C0387 f3230 = new C0387();

    public C0387 f3229 = new C0387();

    public C0387 f3232 = new C0387();

    public C0648 f3228 = new C0648();

    public C0627 f3234 = new C0627();

    public C0577() {
        m5550();
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public int m5534() {
        int i = this.f3231;
        if (i > 0) {
            return i;
        }
        int i2 = this.f3235;
        if (i2 == 0) {
            return 32;
        }
        if (i2 == 1) {
            return 48;
        }
        if (i2 == 2) {
            return 64;
        }
        if (i2 != 4) {
            return i2 != 5 ? 16 : 32;
        }
        return 24;
    }

    public String m5535() {
        return this.f3230.m4571();
    }

    public void m5536(byte[] bArr) {
        this.f3234.m5723(bArr);
    }

    public String m5537() {
        switch (this.f3233) {
            case 0:
                return f3212;
            case 1:
                return f3223;
            case 2:
                return f3224;
            case 3:
                return f3219;
            case 4:
                return f3207;
            case 5:
                return f3220;
            case 6:
                return f3217;
            case 7:
                return f3222;
            case 8:
                return f3205;
            case 9:
                return f3218;
            case 10:
                return f3227;
            case 11:
                return f3211;
            case 12:
                return f3209;
            case 13:
                return f3213;
            case 14:
                return f3210;
            case 15:
                return f3215;
            case 16:
                return f3216;
            default:
                return "";
        }
    }

    public boolean m5538() {
        int i = this.f3235;
        return i == 3 || i == 4 || i == 5;
    }

    public int m5539() {
        return this.f3235;
    }

    public boolean m5540() {
        int i = this.f3233;
        return i == 0 || i == 1 || i == 2;
    }

    public boolean m5541() {
        return this.f3233 == 6;
    }

    public boolean m5542() {
        int i = this.f3233;
        return i == 11 || i == 12 || i == 13;
    }

    public void m5543(byte[] bArr) {
        this.f3232.m4543(bArr);
    }

    public boolean m5544() {
        int i = this.f3233;
        return i == 7 || i == 8 || i == 9 || i == 10;
    }

    public void m5545(int i) {
        this.f3236 = i;
    }

    public boolean m5546() {
        int i = this.f3235;
        return i == 0 || i == 1 || i == 2;
    }

    public void m5547(String str) {
        this.f3230.m4531(str);
    }

    public boolean m5549() {
        int i = this.f3233;
        return i == 14 || i == 15 || i == 16;
    }

    public void m5550() {
        m3128();
        this.f3230.m4541();
        this.f3229.m4541();
        this.f3232.m4541();
        this.f3228.m5857();
        this.f3234.m5722();
        this.f3236 = 0;
        this.f3233 = 0;
        this.f3235 = 0;
        this.f3231 = 0;
    }

    public String m5551() {
        int i = this.f3235;
        if (i == 0) {
            return f3206;
        }
        if (i == 1) {
            return f3225;
        }
        if (i == 2) {
            return f3214;
        }
        if (i == 3) {
            return f3221;
        }
        if (i != 4) {
            return i != 5 ? "" : f3208;
        }
        return f3226;
    }

    public void m5552(int i) {
        this.f3235 = i;
    }

    public static void m5530(String str, C0387 c0387) {
        c0387.m4531(str);
        if (c0387.m4535(C0177.m3554(345, 5, 110)) || c0387.m4535(C0177.m3554(350, 5, 104))) {
            C0387 c0388 = new C0387();
            c0388.m4531(c0387.m4538(5));
            c0387.m4541();
            C0558.m5498(c0388.m4571(), c0387);
        }
    }

    public boolean m5548() {
        int i = this.f3233;
        return i == 3 || i == 4 || i == 5;
    }

    @Override
    public void mo3144(Vector vector) {
        C0387 c0387 = new C0387();
        AbstractC0103.m3125(vector, C0177.m3554(237, 3, 16), m5537(), 2);
        String strM5551 = m5551();
        if (!C0259.m3856(strM5551)) {
            AbstractC0103.m3125(vector, C0177.m3554(240, 3, 106), strM5551, 2);
        }
        if (this.f3230.m4533() > 0) {
            AbstractC0103.m3125(vector, C0177.m3554(243, 3, 50), this.f3230.m4571(), 2);
        }
        if (!this.f3228.m5859()) {
            c0387.m4541();
            m5533(this.f3228, c0387);
            AbstractC0103.m3125(vector, C0177.m3554(246, 3, 95), c0387.m4571(), 0);
        }
        if (this.f3229.m4533() > 0) {
            c0387.m4541();
            C0558.m5504(this.f3229.m4554(), 0, this.f3229.m4533(), c0387);
            AbstractC0103.m3125(vector, C0177.m3554(249, 3, 18), c0387.m4571(), 2);
        }
        if (this.f3232.m4533() > 0) {
            c0387.m4541();
            C0558.m5504(this.f3232.m4554(), 0, this.f3232.m4533(), c0387);
            AbstractC0103.m3125(vector, C0177.m3554(252, 3, 17), c0387.m4571(), 2);
        }
        if (this.f3236 > 0) {
            c0387.m4541();
            c0387.m4558(this.f3236);
            AbstractC0103.m3125(vector, C0177.m3554(255, 3, 98), c0387.m4571(), 3);
        }
        if (this.f3234.m5720() > 0) {
            c0387.m4541();
            C0558.m5504(this.f3234.m5725(), 0, this.f3234.m5720(), c0387);
            AbstractC0103.m3125(vector, C0177.m3554(258, 3, 51), c0387.m4571(), 2);
        }
    }

    public static void m5533(C0648 c0648, C0387 c0387) {
        String strM3554;
        int iM5858 = c0648.m5858();
        if (iM5858 == 0) {
            strM3554 = C0177.m3554(261, 5, 96);
        } else if (iM5858 == 1) {
            strM3554 = C0177.m3554(266, 5, 24);
        } else if (iM5858 == 2) {
            strM3554 = C0177.m3554(271, 5, 66);
        } else if (iM5858 == 10) {
            strM3554 = C0177.m3554(276, 9, 38);
        } else {
            throw new C0414(101, C0177.m3554(285, 17, 122));
        }
        C0190 c0190 = new C0190(null, new Object());
        c0190.m3635();
        c0190.m3654(C0177.m3554(302, 3, 39), "EC", 2);
        c0190.m3654(C0177.m3554(305, 3, 92), strM3554, 2);
        C0387 c0388 = new C0387();
        byte[] bArrM3859 = C0259.m3859(c0648.f3629.f490);
        C0558.m5504(bArrM3859, 0, bArrM3859.length, c0388);
        String strM4571 = c0388.m4571();
        c0190.m3646("x", 4);
        c0190.m3653(strM4571, 2);
        byte[] bArrM38510 = C0259.m3859(c0648.f3629.f487);
        c0388.m4541();
        C0558.m5504(bArrM38510, 0, bArrM38510.length, c0388);
        String strM4572 = c0388.m4571();
        c0190.m3646(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, 4);
        c0190.m3653(strM4572, 2);
        if (!c0648.m5856()) {
            byte[] bArrM38511 = C0259.m3859(c0648.f3629.f491);
            c0388.m4541();
            C0558.m5504(bArrM38511, 0, bArrM38511.length, c0388);
            String strM4573 = c0388.m4571();
            c0190.m3646("d", 4);
            c0190.m3653(strM4573, 2);
        }
        c0190.m3649();
        c0387.m4563(c0190.m3647());
    }

    public static void m5531(String str, C0648 c0648) {
        C0190 c0190 = new C0190(null, new Object());
        c0190.m3651(3);
        c0190.f686 = str;
        c0190.m3631(true);
        c0190.m3648();
        c0190.f683.m3201("$");
        m5532(c0190, c0648);
    }

    public static void m5532(C0190 c0190, C0648 c0648) {
        C0387 c0387 = new C0387();
        c0387.m4531(c0190.m3640());
        C0387 c0388 = new C0387();
        C0387 c0389 = new C0387();
        C0387 c03810 = new C0387();
        C0387 c03811 = new C0387();
        c0389.m4531(C0177.m3554(308, 3, 124));
        boolean zM3636 = c0190.m3636(c0389.m4571());
        int i = 1;
        while (zM3636) {
            i++;
            c03810.m4531(c0190.m3634());
            c03811.m4531(c0190.m3630());
            if (c03810.equals(C0177.m3554(311, 3, 113))) {
                if (!c03811.equals("EC")) {
                    break;
                }
            } else if (c03810.equals(C0177.m3554(314, 3, 21))) {
                if (c03811.equals(C0177.m3554(TypedValues.AttributesType.TYPE_EASING, 5, 57))) {
                    c0648.m5861(0);
                } else if (c03811.equals(C0177.m3554(322, 5, 45))) {
                    c0648.m5861(1);
                } else if (c03811.equals(C0177.m3554(327, 5, 84))) {
                    c0648.m5861(2);
                } else if (c03811.equals(C0177.m3554(332, 9, 99))) {
                    c0648.m5861(10);
                }
            } else if (c03810.equals("x")) {
                c0388.m4541();
                C0558.m5498(c03811.m4571(), c0388);
                c0648.f3629.f490 = C0259.m3865(c0388.m4554(), 0, c0388.m4533());
            } else if (c03810.equals(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)) {
                c0388.m4541();
                C0558.m5498(c03811.m4571(), c0388);
                c0648.f3629.f487 = C0259.m3865(c0388.m4554(), 0, c0388.m4533());
            } else if (c03810.equals("d")) {
                c0388.m4541();
                C0558.m5498(c03811.m4571(), c0388);
                c0648.f3629.f491 = C0259.m3865(c0388.m4554(), 0, c0388.m4533());
            }
            c0389.m4531(C0177.m3554(341, 4, 86));
            c0389.m4558(i);
            c0389.m4547(AbstractJsonLexerKt.END_LIST);
            zM3636 = c0190.m3636(c0389.m4571());
        }
        c0190.m3637(c0387.m4571());
        c03811.m4532();
        c0388.m4532();
    }
}
