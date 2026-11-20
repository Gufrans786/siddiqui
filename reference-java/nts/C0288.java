package nts;

import androidx.appcompat.app.AppCompatDelegate;
import ch.qos.logback.core.net.SyslogConstants;
import java.util.Vector;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0288 extends AbstractC0103 {

    public C0387 f1498 = new C0387();

    public int f1499;

    public int f1500;

    public static final String f1486 = C0177.m3566(0, 5, 38);

    public static final String f1490 = C0177.m3566(5, 5, 9);

    public static final String f1484 = C0177.m3566(10, 5, 84);

    public static final String f1495 = C0177.m3566(15, 5, 58);

    public static final String f1497 = C0177.m3566(20, 5, 8);

    public static final String f1488 = C0177.m3566(25, 5, 99);

    public static final String f1487 = C0177.m3566(30, 5, 38);

    public static final String f1494 = C0177.m3566(35, 5, 72);

    public static final String f1496 = C0177.m3566(40, 5, 55);

    public static final String f1491 = C0177.m3566(45, 5, 78);

    public static final String f1485 = C0177.m3566(50, 5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);

    public static final String f1492 = C0177.m3566(55, 5, 97);

    public static final String f1489 = C0177.m3566(60, 4, 40);

    public static final String f1493 = C0177.m3566(64, 6, 84);

    public C0288() {
        m4066();
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String m4064() {
        switch (this.f1499) {
            case 0:
                return f1486;
            case 1:
                return f1490;
            case 2:
                return f1484;
            case 3:
                return f1495;
            case 4:
                return f1497;
            case 5:
                return f1488;
            case 6:
                return f1487;
            case 7:
                return f1494;
            case 8:
                return f1496;
            case 9:
                return f1491;
            case 10:
                return f1485;
            case 11:
                return f1492;
            case 12:
                return f1489;
            case 13:
                return f1493;
            default:
                return "";
        }
    }

    public int m4065() {
        return this.f1500;
    }

    public void m4066() {
        m3128();
        this.f1499 = 0;
        this.f1500 = 0;
        this.f1498.m4541();
    }

    public boolean m4067() {
        int i = this.f1499;
        return i == 6 || i == 7 || i == 8 || i == 13;
    }

    public boolean m4068() {
        int i = this.f1499;
        return i == 3 || i == 4 || i == 5 || i == 9 || i == 10 || i == 11;
    }

    @Override
    public void mo3144(Vector vector) {
        C0590 c0590;
        AbstractC0103.m3125(vector, C0177.m3566(70, 3, SyslogConstants.LOG_CLOCK), m4064(), 2);
        if (this.f1500 != 0 && (m4067() || m4068())) {
            int i = this.f1500;
            if (((i & 1) != 0 || (i & 2) != 0 || (i & 4) != 0) && (((c0590 = this.f106.f1804) != null && c0590.f3276) || C0259.m3856(this.f106.m4363()))) {
                throw new C0414(205, C0177.m3566(73, 91, 107));
            }
            this.f113.m3671();
            Vector vector2 = new Vector();
            C0671.m5971(this.f106, this.f1498.m4571(), vector2);
            for (int i2 = 0; i2 < vector2.size(); i2++) {
                this.f113.f715.addElement(C0259.m3882(((C0335) vector2.get(i2)).m4377()));
            }
        }
        C0200 c0200 = this.f113;
        if ((this.f1500 & 1) != 0 && (m4068() || m4067())) {
            C0387 c0387 = new C0387();
            if (c0200.m3672() != 0) {
                C0387 c0388 = new C0387();
                c0387.m4547(AbstractJsonLexerKt.BEGIN_LIST);
                for (int i3 = 0; i3 < c0200.m3672(); i3++) {
                    if (i3 > 0) {
                        c0387.m4547(',');
                    }
                    c0387.m4547('\"');
                    c0388.m4531(c0200.m3675(i3));
                    c0388.m4565(C0642.m5855(CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 27, 0), "");
                    c0388.m4565(C0642.m5855(SyslogConstants.LOG_LOCAL5, 25, 80), "");
                    c0388.m4565("\r\n", "");
                    c0388.m4555();
                    c0387.m4563(c0388.m4571());
                    c0387.m4547('\"');
                }
                c0387.m4547(AbstractJsonLexerKt.END_LIST);
            }
            m3130(c0387.m4571());
        }
        if ((this.f1500 & 2) != 0) {
            m3143(new C0335(7, c0200.m3675(0), "", "*").f1804.f3268, this.f112);
        }
        if ((this.f1500 & 4) != 0) {
            m3143(new C0335(7, c0200.m3675(0), "", "*").f1804.f3271, this.f117);
        }
        if ((this.f1500 & 8) != 0) {
            throw new C0414(206, C0177.m3566(164, 56, 49));
        }
    }
}
