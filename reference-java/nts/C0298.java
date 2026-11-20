package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.internal.ViewUtils;
import com.google.api.ResourceProto;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.common.base.Ascii;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.math.BigInteger;
import java.util.Hashtable;
import java.util.Vector;
import kotlin.UShort;
import kotlin.jvm.internal.ShortCompanionObject;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0298 implements InterfaceC0141 {

    public int f1590;

    public boolean f1604;

    public static final String f1548 = C0128.m3232(0, SyslogConstants.LOG_LOCAL5, 77);

    public static final String f1549 = C0208.f769 + "," + C0208.f777 + "," + C0208.f753 + "," + C0208.f763 + "," + C0208.f773 + "," + C0208.f745 + "," + C0208.f740 + "," + C0208.f757 + "," + C0208.f737 + "," + C0208.f747 + "," + C0208.f766;

    public static final String f1547 = C0208.f775 + "," + C0208.f755 + "," + C0208.f767;

    public static final String f1544 = C0208.f776 + "," + C0208.f754 + "," + C0208.f775 + "," + C0208.f755 + "," + C0208.f767 + "," + C0208.f778 + "," + C0208.f774 + "," + C0208.f764 + "," + C0208.f768 + "," + C0208.f746;

    public static final String f1546 = C0208.f776 + "," + C0208.f775 + "," + C0208.f755 + "," + C0208.f778 + "," + C0208.f774;

    public static final int[] f1545 = {0};

    public Object f1593 = new Object();

    public Object f1566 = new Object();

    public byte[] f1587 = null;

    public C0325 f1553 = null;

    public C0325 f1560 = null;

    public int f1572 = 0;

    public C0382 f1602 = null;

    public boolean f1567 = false;

    public C0335 f1569 = null;

    public C0670 f1580 = null;

    public boolean f1594 = true;

    public boolean f1598 = false;

    public boolean f1575 = false;

    public int f1589 = 65535;

    public String f1599 = null;

    public C0382 f1574 = null;

    public String f1601 = "*";

    public byte[] f1597 = null;

    public byte[] f1586 = null;

    public boolean f1562 = true;

    public String f1585 = f1548;

    public String f1596 = "";

    public String f1561 = "";

    public boolean f1555 = false;

    public int f1578 = 1024;

    public String f1551 = f1547;

    public boolean f1591 = true;

    public boolean f1600 = false;

    public boolean f1573 = false;

    public boolean f1563 = false;

    public String f1588 = "";

    public String f1592 = "";

    public boolean f1581 = false;

    public Vector f1554 = new Vector();

    public int[] f1582 = new int[0];

    public String f1577 = f1549;

    public String f1584 = f1544;

    public String f1550 = f1546;

    public Vector f1579 = new Vector();

    public Vector f1605 = new Vector();

    public byte[] f1559 = C0320.f1706;

    public String f1557 = "";

    public Hashtable f1565 = new Hashtable(6);

    public byte[] f1558 = C0320.f1706;

    public C0414 f1571 = null;

    public InterfaceC0121 f1576 = null;

    public InterfaceC0125 f1552 = null;

    public InterfaceC0568 f1595 = null;

    public boolean f1568 = false;

    public byte[] f1583 = null;

    public byte[] f1603 = null;

    public byte[] f1556 = null;

    public byte[] f1570 = null;

    public byte[] f1564 = null;

    public C0298(boolean z, int i) {
        this.f1604 = true;
        this.f1590 = 0;
        this.f1604 = z;
        this.f1590 = i;
    }

    public static boolean m4079(int i) {
        return i == 23 || i == 24 || i == 25 || i == 29 || i == 30;
    }

    public final void m4088(C0382 c0382) throws Exception {
        c0382.m4499(1, c0382.f1971 - 4);
        this.f1602.m4500(c0382.f1972);
        m4132(Ascii.SYN, this.f1560.f1746, c0382);
    }

    public final void m4090(C0382 c0382) {
        byte[] bArr = c0382.f1972;
        int i = c0382.f1971;
        C0382 c0383 = this.f1574;
        if (c0383 != null) {
            c0383.m4501(bArr, 0, i);
            return;
        }
        InterfaceC0121 interfaceC0121 = this.f1576;
        if (interfaceC0121 != null) {
            ((C0521) interfaceC0121).m5315(bArr, 0, i, 1, i);
        }
    }

    public final void m4091() throws Exception {
        C0325 c0325 = this.f1560;
        c0325.f1750 = null;
        c0325.f1751.mo3456();
        byte[] bArrMo3454 = this.f1560.f1751.mo3454();
        m4137(C0128.m3232(3057, 8, 33), bArrMo3454);
        this.f1560.m4329();
        C0510 c0510 = this.f1560.f1757.f3183;
        byte[] bArr = new byte[c0510.m5215()];
        C0325 c0326 = this.f1560;
        if (c0326.f1750 == null) {
            c0326.f1750 = bArr;
        }
        m4137(C0128.m3232(3065, 3, 26), this.f1560.f1750);
        byte[] bArrM5210 = C0510.m5210(c0510.f2954, this.f1560.f1750, bArr);
        m4137(C0128.m3232(3068, 17, 92), bArrM5210);
        byte[] bArrM4300 = C0308.m4217(c0510.m5219()).m4300(C0320.f1706);
        m4137("h0", bArrM4300);
        byte[] bArrM5212 = C0510.m5212(c0510.f2954, bArrM5210, C0208.f781, bArrM4300, C0208.f743);
        m4137(C0128.m3232(3085, 18, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), bArrM5212);
        byte[] bArrM5211 = C0510.m5210(c0510.f2954, bArrM5212, bArrMo3454);
        m4137(C0128.m3232(3103, 21, 95), bArrM5211);
        if (this.f1600) {
            m4137(C0128.m3232(3124, 9, 45), this.f1602.m4502());
        }
        byte[] bArrM4339 = this.f1560.m4339(this.f1602.m4502());
        m4137("h2", bArrM4339);
        this.f1583 = C0510.m5212(c0510.f2954, bArrM5211, C0208.f756, bArrM4339, C0208.f743);
        m4137(C0128.m3232(3133, 34, 35), this.f1583);
        this.f1603 = C0510.m5212(c0510.f2954, bArrM5211, C0208.f762, bArrM4339, C0208.f743);
        m4137(C0128.m3232(3167, 34, 85), this.f1603);
        byte[] bArrM5213 = C0510.m5211(c0510.f2954, this.f1583, C0259.m3902(C0128.m3232(3201, 3, 73)), C0320.f1706, c0510.f2959, C0208.f743);
        m4137(C0128.m3232(3204, 24, WebSocketProtocol.PAYLOAD_SHORT), bArrM5213);
        byte[] bArrM5214 = C0510.m5211(c0510.f2954, this.f1583, C0259.m3902(HeaderParameterNames.INITIALIZATION_VECTOR), C0320.f1706, c0510.m5220(), C0208.f743);
        m4137(C0128.m3232(3228, 23, 10), bArrM5214);
        byte[] bArrM5215 = C0510.m5211(c0510.f2954, this.f1603, C0259.m3902(C0128.m3232(3251, 3, 110)), C0320.f1706, c0510.f2959, C0208.f743);
        m4137(C0128.m3232(3254, 24, 54), bArrM5215);
        byte[] bArrM5216 = C0510.m5211(c0510.f2954, this.f1603, C0259.m3902(HeaderParameterNames.INITIALIZATION_VECTOR), C0320.f1706, c0510.m5220(), C0208.f743);
        m4137(C0128.m3232(3278, 23, 58), bArrM5216);
        byte[] bArrM5217 = C0510.m5212(c0510.f2954, bArrM5211, C0208.f781, bArrM4300, C0208.f743);
        this.f1560.f1743 = C0510.m5210(c0510.f2954, bArrM5217, bArr);
        m4137(C0128.m3232(3301, 12, 17), this.f1560.f1743);
        this.f1560.m4326(bArrM5213, bArrM5214);
        this.f1560.m4323(bArrM5215, bArrM5216);
        byte[] bArrM5218 = C0510.m5211(c0510.f2954, this.f1583, C0208.f760, C0320.f1706, c0510.m5215(), C0208.f743);
        m4137(C0128.m3232(3313, 19, 72), bArrM5218);
        byte[] bArrM5219 = C0510.m5211(c0510.f2954, this.f1603, C0208.f760, C0320.f1706, c0510.m5215(), C0208.f743);
        m4137(C0128.m3232(3332, 19, 58), bArrM5219);
        this.f1560.m4320(bArrM5218, bArrM5219);
        this.f1560.m4334(bArrM5214, bArrM5216);
        this.f1560.f1757.m5516();
        this.f1560.f1764.m5516();
        C0325 c0327 = this.f1553;
        if (c0327 == null) {
            this.f1553 = this.f1560;
        } else {
            c0327.m4333(this.f1560);
        }
    }

    public final void m4092() throws Exception {
        byte[] bArr;
        AbstractC0453 abstractC0453M5098;
        C0325 c0325;
        this.f1572 = 0;
        this.f1586 = null;
        if (this.f1602 == null || !m4123() || ((c0325 = this.f1560) != null && !c0325.f1742)) {
            this.f1602 = new C0382();
            this.f1560 = m4097();
        }
        this.f1560.f1756 = m4087();
        if (!this.f1581) {
            C0325 c0326 = this.f1560;
            if (!c0326.f1742) {
                c0326.f1746 = c0326.f1756;
            }
        }
        this.f1582 = C0510.m5213(this.f1601, m4123() ? (short) 772 : this.f1560.f1756, this.f1555, this.f1589, C0320.f1718);
        m4093(m4105());
        m4093(m4085(this.f1582));
        C0382 c0382M4129 = m4129((byte) 1);
        c0382M4129.m4515(this.f1560.f1756);
        c0382M4129.m4500(this.f1560.f1749);
        byte[] bArr2 = this.f1560.f1741;
        if (bArr2 != null) {
            c0382M4129.m4487(bArr2.length);
            c0382M4129.m4500(this.f1560.f1741);
        } else {
            c0382M4129.m4487(0);
        }
        c0382M4129.m4489(this.f1582.length * 2);
        int i = 0;
        while (true) {
            int[] iArr = this.f1582;
            if (i >= iArr.length) {
                break;
            }
            c0382M4129.m4489(iArr[i]);
            i++;
        }
        c0382M4129.m4487(1);
        c0382M4129.m4487(0);
        C0382 c0382 = new C0382();
        if (m4123()) {
            C0382 c0383 = new C0382();
            this.f1554.clear();
            c0383.m4489(772);
            this.f1554.add(772);
            if (m4120()) {
                c0383.m4489(771);
                this.f1554.add(771);
            }
            if (m4102()) {
                c0383.m4489(770);
                this.f1554.add(770);
            }
            if (m4101()) {
                c0383.m4489(769);
                this.f1554.add(769);
            }
            if (m4098()) {
                c0383.m4489(ViewUtils.EDGE_TO_EDGE_FLAGS);
                this.f1554.add(Integer.valueOf(ViewUtils.EDGE_TO_EDGE_FLAGS));
            }
            m4141(c0382, 43, c0383.m4502(), 1);
            C0382 c0384 = new C0382();
            C0382 c0385 = new C0382();
            String[] strArrM3908 = C0259.m3908(this.f1584, ",", true, false);
            this.f1579.clear();
            this.f1605.clear();
            for (String str : strArrM3908) {
                int iM3684 = C0208.m3684(str);
                this.f1605.add(Integer.valueOf(iM3684));
                c0384.m4489(iM3684);
                boolean zContains = this.f1550.contains(str);
                C0325 c0327 = this.f1560;
                if (c0327.f1742) {
                    zContains = iM3684 == c0327.f1752;
                }
                if (zContains) {
                    if (m4079(iM3684)) {
                        abstractC0453M5098 = AbstractC0453.m5096();
                        C0160 c0160 = (C0160) abstractC0453M5098;
                        c0160.m3458(iM3684, true);
                        c0160.m3453();
                    } else {
                        abstractC0453M5098 = AbstractC0453.m5098();
                        abstractC0453M5098.m5101(false, iM3684, true);
                    }
                    this.f1579.add(abstractC0453M5098);
                    c0385.m4489(iM3684);
                    byte[] bArrMo3451 = abstractC0453M5098.mo3451();
                    c0385.m4489(bArrMo3451.length);
                    c0385.m4500(bArrMo3451);
                    m4137(C0128.m3232(6397, 17, 11), bArrMo3451);
                    if (this.f1560.f1742) {
                        break;
                    }
                }
            }
            m4141(c0382, 10, c0384.m4502(), 2);
            m4141(c0382, 51, c0385.m4502(), 2);
            if (m4123()) {
                C0325 c0328 = this.f1560;
                if (c0328.f1742 && (bArr = c0328.f1740) != null) {
                    m4141(c0382, 44, bArr, 2);
                }
            }
            new C0382();
            C0382 c0386 = new C0382();
            c0386.m4487(1);
            m4141(c0382, 45, c0386.m4502(), 1);
        }
        String str2 = this.f1599;
        if (str2 != null && str2.length() != 0) {
            String strM3232 = C0128.m3232(8240, 65, 121);
            String strM3233 = C0128.m3232(8305, 34, 86);
            if (!str2.matches(strM3232) && !str2.matches(strM3233)) {
                byte[] bArrM3883 = C0259.m3883(this.f1599);
                c0382.m4489(0);
                c0382.m4489(bArrM3883.length + 5);
                c0382.m4489(bArrM3883.length + 3);
                c0382.m4487(0);
                c0382.m4489(bArrM3883.length);
                c0382.m4500(bArrM3883);
            }
        }
        if (m4123()) {
            C0382 c0387 = new C0382();
            for (String str3 : C0259.m3908(this.f1577, ",", true, false)) {
                c0387.m4489(C0208.m3683(str3));
            }
            m4141(c0382, 13, c0387.m4502(), 2);
        } else {
            if (C0510.m5209(this.f1582)) {
                C0382 c0388 = new C0382();
                for (String str4 : C0259.m3908(this.f1551, ",", true, false)) {
                    c0388.m4489(C0208.m3684(str4));
                }
                m4141(c0382, 10, c0388.m4502(), 2);
                c0388.m4505();
                int i2 = 0;
                while (true) {
                    int[] iArr2 = f1545;
                    if (i2 >= iArr2.length) {
                        break;
                    }
                    c0388.m4487(iArr2[i2]);
                    i2++;
                }
                m4141(c0382, 11, c0388.m4502(), 1);
            }
            if (m4120() && !C0259.m3856(this.f1585)) {
                byte[] bArrM4076 = m4076(this.f1585);
                if (bArrM4076.length > 0) {
                    c0382.m4489(13);
                    c0382.m4489(bArrM4076.length + 2);
                    c0382.m4489(bArrM4076.length);
                    c0382.m4500(bArrM4076);
                }
            }
        }
        if (!C0259.m3856(this.f1596)) {
            String[] strArrM3852 = C0259.m3852(this.f1596, ",");
            if (strArrM3852.length > 0) {
                C0382 c0389 = new C0382();
                for (int i3 = 0; i3 < strArrM3852.length; i3++) {
                    if (strArrM3852[i3].length() <= 255) {
                        c0389.m4509((byte) (strArrM3852[i3].length() & 255));
                        c0389.m4500(C0259.m3902(strArrM3852[i3]));
                    }
                }
                byte[] bArrM4502 = c0389.m4502();
                c0382.m4489(16);
                c0382.m4489(bArrM4502.length + 2);
                c0382.m4489(bArrM4502.length);
                c0382.m4500(bArrM4502);
            }
        }
        if (this.f1562 && !m4123()) {
            m4141(c0382, 65281, this.f1558, 1);
        }
        if (this.f1568 && this.f1564 != null) {
            c0382.m4489(57);
            c0382.m4489(this.f1564.length);
            c0382.m4500(this.f1564);
        }
        byte[] bArr3 = this.f1559;
        if (bArr3 != null && bArr3.length > 0) {
            c0382.m4500(bArr3);
        }
        c0382M4129.m4489(c0382.f1971);
        if (c0382.f1971 > 0) {
            c0382M4129.m4500(c0382.m4502());
        }
        if (this.f1600) {
            m4137(C0128.m3232(6362, 11, 17), c0382M4129.m4502());
        }
        m4088(c0382M4129);
        m4093(C0128.m3232(6373, 24, 28));
    }

    public final void m4095(C0382 c0382, int i) {
        int i2 = c0382.f1971 - i;
        if (i2 == 0) {
            this.f1587 = null;
        } else {
            this.f1587 = C0259.m3865(c0382.f1972, i, i2);
        }
    }

    public final C0325 m4097() throws Exception {
        byte[] bArr;
        C0325 c0325 = new C0325();
        C0567 c0567 = c0325.f1757;
        boolean z = this.f1591;
        c0567.f3179 = z;
        c0325.f1764.f3179 = z;
        c0325.f1767 = this.f1604;
        c0325.f1746 = (short) 769;
        c0325.f1753 = this.f1569;
        C0325 c0326 = this.f1553;
        if (c0326 != null) {
            c0325.f1741 = c0326.f1741;
            c0325.f1747 = c0326.f1747;
            c0325.f1743 = c0326.f1743;
        }
        C0670 c0670 = this.f1580;
        if (c0670 != null && (bArr = c0670.f3688) != null && bArr.length != 0 && System.currentTimeMillis() < c0670.f3685 + 36000000 && this.f1594 && this.f1580.m5900(this.f1599)) {
            C0670 c0671 = this.f1580;
            c0325.f1741 = c0671.f3688;
            c0325.f1743 = c0671.f3687;
            m4093(C0128.m3232(7605, 30, 33));
        }
        C0382 c0382 = new C0382();
        c0382.m4513(System.currentTimeMillis() / 1000, 4);
        c0382.m4498(28);
        C0308.m4246(c0382.f1972, c0382.f1970, 28);
        c0382.f1970 += 28;
        c0382.f1971 += 28;
        if (this.f1604) {
            c0325.f1749 = c0382.m4502();
            return c0325;
        }
        c0325.f1766 = c0382.m4502();
        return c0325;
    }

    public boolean m4098() {
        return (this.f1589 & 48) != 0;
    }

    public final void m4099() throws Exception {
        if (this.f1553 == null) {
            this.f1553 = this.f1560;
        }
        C0325 c0325 = this.f1553;
        c0325.f1757 = this.f1560.f1757;
        c0325.f1757.m5516();
        m4093(C0128.m3232(1285, 57, 107));
        this.f1553.m4333(this.f1560);
        this.f1553.m4329();
    }

    public final void m4100() throws Exception {
        C0335[] c0335ArrM4382;
        C0382 c0382M4129 = m4129(Ascii.VT);
        if (this.f1581) {
            byte[] bArr = this.f1560.f1761;
            c0382M4129.m4487(bArr == null ? 0 : bArr.length);
            byte[] bArr2 = this.f1560.f1761;
            if (bArr2 != null) {
                c0382M4129.m4500(bArr2);
            }
        }
        if (this.f1569 == null) {
            c0382M4129.m4495(0);
            C0325 c0325 = this.f1560;
            if (c0325.f1767 && c0325.f1759) {
                m4093(C0128.m3232(6694, 36, 49));
            }
        } else {
            C0382 c0382 = new C0382();
            try {
                c0335ArrM4382 = this.f1569.m4382(this.f1588);
            } catch (C0414 unused) {
                m4135(279, C0128.m3232(6730, 51, 122));
                c0335ArrM4382 = new C0335[]{this.f1569};
            }
            for (int i = 0; c0335ArrM4382 != null && i < c0335ArrM4382.length && (i != c0335ArrM4382.length - 1 || i <= 0); i++) {
                byte[] bArrM4360 = c0335ArrM4382[i].m4360();
                if (bArrM4360 != null && bArrM4360.length > 0) {
                    c0382.m4495(bArrM4360.length);
                    c0382.m4500(bArrM4360);
                    if (this.f1581) {
                        c0382.m4489(0);
                    }
                }
            }
            c0382M4129.m4495(c0382.f1971);
            c0382M4129.m4501(c0382.f1972, 0, c0382.f1971);
        }
        m4088(c0382M4129);
        if (this.f1569 != null) {
            m4093(C0128.m3232(6781, 24, 5));
        }
    }

    public boolean m4101() {
        return (this.f1589 & 192) != 0;
    }

    public boolean m4102() {
        return (this.f1589 & ViewUtils.EDGE_TO_EDGE_FLAGS) != 0;
    }

    public final void m4103() throws Exception {
        C0325 c0325 = this.f1560;
        int i = c0325.f1764.f3183.f2948;
        if (i != 1 && i != 2) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    c0325.f1751.m5100();
                    byte[] bArrMo3450 = this.f1560.f1751.mo3450();
                    int length = bArrMo3450.length;
                    C0382 c0382M4129 = m4129((byte) 16);
                    c0382M4129.m4487(length);
                    c0382M4129.m4500(bArrMo3450);
                    m4088(c0382M4129);
                    m4093(C0128.m3232(7164, 76, 95));
                    byte[] bArrMo3452 = this.f1560.f1751.mo3452();
                    m4118(bArrMo3452);
                    m4146(bArrMo3452);
                    break;
                default:
                    c0325.f1751.m5100();
                    byte[] bArrMo3451 = this.f1560.f1751.mo3451();
                    C0382 c0382M41210 = m4129((byte) 16);
                    if ((bArrMo3451.length & 1) != 0) {
                        c0382M41210.m4489(bArrMo3451.length - 1);
                        c0382M41210.m4501(bArrMo3451, 1, bArrMo3451.length - 1);
                    } else {
                        c0382M41210.m4489(bArrMo3451.length);
                        c0382M41210.m4500(bArrMo3451);
                    }
                    m4088(c0382M41210);
                    m4093(C0128.m3232(7240, 61, 49));
                    byte[] bArrMo3453 = this.f1560.f1751.mo3452();
                    m4118(C0325.m4314(bArrMo3453));
                    m4146(bArrMo3453);
                    break;
            }
        } else {
            byte[] bArrM4227 = C0308.m4227(48);
            short s = this.f1560.f1756;
            bArrM4227[0] = (byte) (s >> 8);
            bArrM4227[1] = (byte) (s & 255);
            m4118(bArrM4227);
            C0382 c0382M41211 = m4129((byte) 16);
            C0325 c0326 = this.f1560;
            C0335 c0335 = c0326.f1747;
            if (c0335.m4371() != 1) {
                throw new C0414(278, C0128.m3224(46, 58, 112));
            }
            byte[] bArrM4229 = C0308.m4229(c0326.m4319(c0335), bArrM4227, false);
            int length2 = bArrM4229.length;
            if (c0326.m4324()) {
                c0382M41211.m4489(length2);
            }
            c0382M41211.m4501(bArrM4229, bArrM4229.length - length2, length2);
            m4088(c0382M41211);
            m4093(C0128.m3232(7101, 63, 95));
            m4146(bArrM4227);
        }
        m4138(this.f1560);
    }

    public final void m4104() throws Exception {
        C0382 c0382 = new C0382();
        c0382.m4487(1);
        m4132(Ascii.DC4, this.f1560.f1746, c0382);
        if (this.f1604) {
            C0325 c0325 = this.f1560;
            C0670 c0670 = new C0670(c0325.f1741, c0325.f1743);
            this.f1580 = c0670;
            c0670.f3686 = this.f1599;
        } else {
            C0325 c0326 = this.f1560;
            byte[] bArr = c0326.f1741;
            byte[] bArr2 = c0326.f1743;
            System.currentTimeMillis();
        }
        if (!this.f1604 || this.f1553 == null) {
            this.f1553 = this.f1560;
        }
        C0325 c0327 = this.f1553;
        c0327.f1764 = this.f1560.f1764;
        c0327.f1764.m5516();
        m4093(C0128.m3232(6619, 54, 1));
    }

    public final void m4107(C0382 c0382) throws Exception {
        C0382 c0383;
        int i;
        C0382 c0384;
        int i2;
        int i3;
        C0382 c0385;
        byte bM4496;
        int iM4483;
        int i4;
        String strM3238;
        int i5;
        byte[] bArr;
        int iM4110;
        byte[] bArr2;
        int i6;
        int iM5220;
        int i7;
        byte[] bArrM4484;
        byte[] bArrM4485;
        int i8 = 0;
        int i9 = 0;
        int i10 = 1;
        while (i10 != 0) {
            int i11 = c0382.f1971 - i9;
            if (i11 < 5) {
                m4095(c0382, i9);
            } else {
                if (C0208.m3686(c0382.f1972[i9])) {
                    int iM4481 = c0382.m4481(i9 + 3) + 5;
                    if (i11 < iM4481) {
                        m4095(c0382, i9);
                    } else {
                        c0383 = new C0382(c0382.f1972, i9, iM4481);
                    }
                } else {
                    if (this.f1604) {
                        throw new C0414(276, C0128.m3232(1159, 38, 21));
                    }
                    int iM4482 = (c0382.m4481(i8) & 32767) + 2;
                    if (i11 < iM4482) {
                        m4095(c0382, i9);
                    } else {
                        c0383 = new C0382(c0382.f1972, i9, iM4482);
                    }
                }
                if (c0383 != null || (i = c0383.f1971) == 0) {
                    i8 = i8;
                    i10 = i8;
                } else {
                    int i12 = i9 + i;
                    C0382 c0386 = new C0382();
                    if (this.f1572 != 20) {
                        byte bM4485 = c0383.m4485(i8);
                        C0325 c0325 = this.f1553;
                        if (c0325 == null || !c0325.f1757.m5513() || (this.f1581 && bM4485 != 23)) {
                            c0384 = c0386;
                            i2 = 286;
                            i10 = i10;
                            i3 = 20;
                            c0383 = c0383;
                            c0385 = c0383;
                        } else {
                            if (this.f1573) {
                                c0386.m4500(c0383.m4502());
                            }
                            C0382 c0387 = new C0382();
                            byte bM4497 = c0383.m4496();
                            short sM4483 = c0383.m4483();
                            short sM4484 = c0383.m4483();
                            if (this.f1553.f1757.f3183.m5228()) {
                                C0382 c0388 = new C0382();
                                C0382 c0389 = new C0382();
                                byte[] bArr3 = C0320.f1706;
                                if (this.f1581) {
                                    if (sM4484 <= this.f1553.f1757.f3183.m5216()) {
                                        m4134(2, 50);
                                        throw new C0414(286, C0128.m3232(734, 35, 113));
                                    }
                                    c0388.m4500(m4155(this.f1553.f1757.m5515(), this.f1553.f1757.m5514()));
                                    bArrM4484 = c0383.m4484(c0383.m4486() - this.f1553.f1757.f3183.m5216());
                                    bArrM4485 = c0383.m4484(this.f1553.f1757.f3183.m5216());
                                    c0389.m4509(bM4497);
                                    c0389.m4515(sM4483);
                                    c0389.m4489(sM4484);
                                } else {
                                    if (sM4484 < this.f1553.f1757.f3183.m5216() + 8) {
                                        m4134(2, 50);
                                        throw new C0414(286, C0128.m3232(769, 35, 33));
                                    }
                                    long jM5514 = this.f1553.f1757.m5514();
                                    byte[] bArrM4486 = c0383.m4484(8);
                                    int iM5216 = (sM4484 - 8) - this.f1553.f1757.f3183.m5216();
                                    c0388.m4500(this.f1553.f1757.f3183.m5226());
                                    c0388.m4500(bArrM4486);
                                    c0389.m4512(jM5514);
                                    c0389.m4509(bM4497);
                                    c0389.m4515(sM4483);
                                    c0389.m4489(iM5216);
                                    bArrM4484 = c0383.m4484(iM5216);
                                    bArrM4485 = c0383.m4484(this.f1553.f1757.f3183.m5216());
                                }
                                try {
                                    this.f1553.f1757.f3183.m5235(c0388.m4502(), c0389.m4502(), bArrM4485);
                                    if (this.f1600) {
                                        m4137(C0128.m3232(804, 18, 60), c0388.m4502());
                                        m4137(C0128.m3232(822, 28, SyslogConstants.LOG_CLOCK), c0389.m4502());
                                        m4137(C0128.m3232(850, 16, 78), bArrM4485);
                                        m4137(C0128.m3232(866, 16, 58), this.f1553.f1757.f3183.m5224());
                                        m4137(C0128.m3232(882, 19, 24), bArrM4484);
                                    }
                                    byte[] bArrM5227 = this.f1553.f1757.f3183.m5227(bArrM4484);
                                    m4137(C0128.m3232(TypedValues.Custom.TYPE_FLOAT, 24, 53), bArrM5227);
                                    if (this.f1581) {
                                        int i13 = 0;
                                        for (int length = bArrM5227.length - 1; length >= 0 && bArrM5227[length] == 0; length--) {
                                            i13++;
                                        }
                                        byte b = bArrM5227[(bArrM5227.length - i13) - 1];
                                        if (this.f1600) {
                                            m4114(C0128.m3232(925, 21, 104) + ((int) b));
                                        }
                                        bArrM5227 = C0259.m3865(bArrM5227, 0, (bArrM5227.length - i13) - 1);
                                        c0387.m4509(b);
                                    } else {
                                        c0387.m4509(bM4497);
                                    }
                                    c0387.m4515(sM4483);
                                    m4137(C0128.m3232(946, 24, WebSocketProtocol.PAYLOAD_SHORT), bArrM5227);
                                    c0387.m4489(bArrM5227.length);
                                    c0387.m4500(bArrM5227);
                                    c0384 = c0386;
                                    c0387 = c0387;
                                    i2 = 286;
                                    i3 = 20;
                                } catch (Exception e) {
                                    if (this.f1600) {
                                        m4114(C0128.m3232(970, 22, 83) + C0414.m4672(e) + ")");
                                    }
                                    m4134(2, 20);
                                    throw new C0414(286, C0128.m3232(992, 20, 49));
                                }
                            } else {
                                i10 = i10;
                                c0387.m4509(bM4497);
                                c0387.m4515(sM4483);
                                byte[] bArrM4487 = c0383.m4484(sM4484);
                                m4137(C0128.m3232(PointerIconCompat.TYPE_NO_DROP, 14, 15), bArrM4487);
                                byte[] bArrM5228 = this.f1553.f1757.f3183.m5227(bArrM4487);
                                m4137(C0128.m3232(1026, 14, 2), bArrM5228);
                                int length2 = bArrM5228.length;
                                if (this.f1553.f1757.f3183.m5236()) {
                                    i6 = 20;
                                    c0387 = c0387;
                                    iM5220 = 0;
                                    i7 = 0;
                                } else {
                                    i7 = bArrM5228[length2 - 1] & 255;
                                    if (i7 >= length2) {
                                        m4134(2, 20);
                                        throw new C0414(286, C0128.m3232(1040, 41, 74));
                                    }
                                    iM5220 = this.f1553.m4327() ? this.f1553.f1757.f3183.m5220() : 0;
                                    i6 = 20;
                                }
                                int iM5215 = this.f1553.f1757.f3183.m5215();
                                int i14 = (length2 - iM5215) - (this.f1553.f1757.f3183.m5236() ? 0 : i7 + 1);
                                int i15 = i14 - iM5220;
                                i3 = i6;
                                c0384 = c0386;
                                byte[] bArrM4154 = m4154(this.f1553.f1757, bArrM5228, iM5220, i15, this.f1553.f1757.m5514(), bM4497);
                                if (!this.f1553.f1757.f3183.m5236() && this.f1553.m4324()) {
                                    for (int i16 = length2 - 2; i16 > (length2 - 1) - i7; i16--) {
                                        if (bArrM5228[i16] != ((byte) i7)) {
                                            m4134(2, i3);
                                            throw new C0414(286, C0128.m3232(1081, 41, 67));
                                        }
                                    }
                                }
                                i2 = 286;
                                for (int i17 = 0; i17 < iM5215; i17++) {
                                    if (bArrM5228[i14 + i17] != bArrM4154[i17]) {
                                        m4134(2, i3);
                                        throw new C0414(286, C0128.m3232(1122, 37, 25));
                                    }
                                }
                                c0387.m4489(i15);
                                c0387.m4501(bArrM5228, iM5220, i15);
                            }
                            c0387.m4493();
                            c0385 = c0387;
                        }
                        C0325 c0326 = this.f1553;
                        if (c0326 == null && (c0326 = this.f1560) == null) {
                            m4087();
                        } else {
                            short s = c0326.f1746;
                        }
                        byte[] bArr4 = this.f1586;
                        if (bArr4 != null) {
                            byte[] bArrM3687 = C0208.m3687(bArr4, c0385.m4497(5));
                            c0385 = new C0382(bArrM3687);
                            iM4483 = bArrM3687.length;
                            this.f1586 = null;
                            bM4496 = Ascii.SYN;
                        } else {
                            bM4496 = c0385.m4496();
                            c0385.m4483();
                            iM4483 = c0385.m4483();
                        }
                        if (this.f1573) {
                            if (c0384.f1971 <= 0) {
                                c0384 = null;
                            }
                            m4142(c0385, c0384, false);
                        }
                        switch (bM4496) {
                            case 20:
                                if (!this.f1604 && this.f1560.f1743 == null) {
                                    m4106(C0128.m3232(656, 16, 42));
                                    throw null;
                                }
                                m4099();
                                i4 = 0;
                                break;
                                break;
                            case 21:
                                byte bM4498 = c0385.m4496();
                                byte bM4499 = c0385.m4496();
                                boolean z = this.f1581;
                                if (1 == bM4499 && z) {
                                    strM3238 = C0128.m3238(TypedValues.TransitionType.TYPE_FROM, 14, 68);
                                } else if (bM4499 == 0) {
                                    strM3238 = C0128.m3238(715, 12, 60);
                                } else if (bM4499 == 10) {
                                    strM3238 = C0128.m3238(727, 18, 14);
                                } else if (bM4499 == 30) {
                                    strM3238 = C0128.m3238(791, 21, WebSocketProtocol.PAYLOAD_SHORT);
                                } else if (bM4499 == 60) {
                                    strM3238 = C0128.m3238(PointerIconCompat.TYPE_NO_DROP, 27, 96);
                                } else if (bM4499 == 80) {
                                    strM3238 = C0128.m3238(1076, 14, SyslogConstants.LOG_CLOCK);
                                } else if (bM4499 == 90) {
                                    strM3238 = C0128.m3238(1090, 13, 32);
                                } else if (bM4499 == 100) {
                                    strM3238 = C0128.m3238(1103, 16, 50);
                                } else if (bM4499 == 120) {
                                    strM3238 = C0128.m3238(1313, 23, 67);
                                } else if (bM4499 == 70) {
                                    strM3238 = C0128.m3238(1039, 16, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
                                } else if (bM4499 != 71) {
                                    switch (bM4499) {
                                        case 20:
                                            strM3238 = C0128.m3238(745, 14, 48);
                                            break;
                                        case 21:
                                            strM3238 = C0128.m3238(759, 17, 94);
                                            break;
                                        case 22:
                                            strM3238 = C0128.m3238(776, 15, 79);
                                            break;
                                        default:
                                            switch (bM4499) {
                                                case 40:
                                                    strM3238 = C0128.m3238(812, 17, 23);
                                                    break;
                                                case 41:
                                                    strM3238 = C0128.m3238(829, 23, 0);
                                                    break;
                                                case 42:
                                                    strM3238 = C0128.m3238(852, 15, RNMBXStyleValue.InterpolationModeIdentity);
                                                    break;
                                                case 43:
                                                    strM3238 = C0128.m3238(867, 23, 110);
                                                    break;
                                                case 44:
                                                    strM3238 = C0128.m3238(890, 19, 39);
                                                    break;
                                                case 45:
                                                    strM3238 = C0128.m3238(909, 19, 67);
                                                    break;
                                                case 46:
                                                    strM3238 = C0128.m3238(928, 19, 3);
                                                    break;
                                                case 47:
                                                    strM3238 = C0128.m3238(947, 17, 82);
                                                    break;
                                                case 48:
                                                    strM3238 = C0128.m3238(964, 10, 115);
                                                    break;
                                                case 49:
                                                    strM3238 = C0128.m3238(974, 13, 81);
                                                    break;
                                                case 50:
                                                    strM3238 = C0128.m3238(987, 12, 63);
                                                    break;
                                                case 51:
                                                    strM3238 = C0128.m3238(999, 13, 58);
                                                    break;
                                                default:
                                                    switch (bM4499) {
                                                        case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY:
                                                            strM3238 = C0128.m3238(1119, 17, 111);
                                                            break;
                                                        case 110:
                                                            strM3238 = C0128.m3238(1136, 21, 93);
                                                            break;
                                                        case 111:
                                                            strM3238 = C0128.m3238(1157, 33, 38);
                                                            break;
                                                        case 112:
                                                            strM3238 = C0128.m3238(1190, 17, 85);
                                                            break;
                                                        case 113:
                                                            strM3238 = C0128.m3238(1207, 31, 90);
                                                            break;
                                                        case 114:
                                                            strM3238 = C0128.m3238(1238, 35, 86);
                                                            break;
                                                        case 115:
                                                            strM3238 = C0128.m3238(1273, i3, 12);
                                                            break;
                                                        case 116:
                                                            strM3238 = C0128.m3238(1293, i3, 5);
                                                            break;
                                                        default:
                                                            strM3238 = C0128.m3238(1336, 12, 113);
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    strM3238 = C0128.m3238(ResourceProto.RESOURCE_REFERENCE_FIELD_NUMBER, 21, 114);
                                }
                                if (this.f1581 && bM4499 == 1) {
                                    i5 = 0;
                                    m4131(Ascii.NAK, c0385, 0, c0385.f1971);
                                } else {
                                    i5 = 0;
                                }
                                if (bM4499 == 0) {
                                    if (this.f1576 != null && (bArr = this.f1597) != null) {
                                        m4110(bArr, i5, bArr.length);
                                    }
                                    m4093(C0128.m3232(1197, 51, 66));
                                    if (this.f1572 != i3) {
                                        try {
                                            m4134(1, i5);
                                            break;
                                        } catch (C0414 unused) {
                                        }
                                    }
                                    this.f1572 = i3;
                                } else if (bM4498 == 2) {
                                    m4136((Exception) new C0414(i2, C0128.m3232(1248, 22, 13) + strM3238));
                                } else {
                                    m4093(C0128.m3232(1270, 15, 4) + strM3238);
                                }
                                i4 = 0;
                                break;
                            case 22:
                                while (iM4483 > 0) {
                                    int i18 = c0385.f1970;
                                    int iMo3838 = ((int) c0385.f1969.mo3838(c0385.f1972, i18 + 1, 3)) + 4;
                                    if (iMo3838 == iM4483) {
                                        m4139(c0385);
                                        this.f1586 = null;
                                    } else if (iMo3838 < iM4483) {
                                        m4139(new C0382(c0385.m4484(iMo3838)));
                                        this.f1586 = null;
                                    } else {
                                        this.f1586 = c0385.m4497(i18);
                                        iM4483 = 0;
                                    }
                                    iM4483 -= iMo3838;
                                }
                                i4 = 0;
                                i8 = i4;
                                i9 = i12;
                                i10 = i10;
                                break;
                            case 23:
                                if (this.f1576 != null) {
                                    int i19 = c0385.f1970;
                                    byte[] bArr5 = c0385.f1972;
                                    byte[] bArr6 = this.f1597;
                                    if (bArr6 != null) {
                                        int iM4111 = m4110(bArr6, 0, bArr6.length);
                                        byte[] bArr7 = this.f1597;
                                        if (iM4111 < bArr7.length) {
                                            C0382 c03810 = new C0382((bArr7.length - iM4111) + iM4483);
                                            byte[] bArr8 = this.f1597;
                                            c03810.m4501(bArr8, iM4111, bArr8.length - iM4111);
                                            c03810.m4501(bArr5, i19, iM4483);
                                            this.f1597 = c03810.f1972;
                                        } else {
                                            iM4110 = m4110(bArr5, i19, iM4483);
                                            if (iM4110 < iM4483) {
                                                this.f1597 = C0259.m3865(bArr5, i19 + iM4110, iM4483 - iM4110);
                                            } else {
                                                this.f1597 = null;
                                            }
                                        }
                                    } else {
                                        iM4110 = m4110(bArr5, i19, iM4483);
                                        if (iM4110 < iM4483) {
                                            this.f1597 = C0259.m3865(bArr5, i19 + iM4110, iM4483 - iM4110);
                                        } else {
                                            this.f1597 = null;
                                        }
                                    }
                                }
                                i4 = 0;
                                i8 = i4;
                                i9 = i12;
                                i10 = i10;
                                break;
                            default:
                                if (this.f1572 != 2) {
                                    throw new C0414(278, C0128.m3232(672, 41, 12));
                                }
                                c0383.m4493();
                                int iM4484 = c0383.m4483() & ShortCompanionObject.MAX_VALUE;
                                byte bM44910 = c0383.m4496();
                                if (bM44910 != 1) {
                                    throw new C0414(278, C0128.m3232(713, 21, 8));
                                }
                                this.f1602 = new C0382();
                                m4131(bM44910, c0383, 2, iM4484);
                                m4093(C0128.m3232(2879, 35, 47));
                                short sM4485 = c0383.m4483();
                                if (sM4485 < 768) {
                                    throw new C0414(278, C0128.m3232(2914, 18, 118));
                                }
                                C0325 c0325M4097 = m4097();
                                this.f1560 = c0325M4097;
                                c0325M4097.f1756 = sM4485;
                                short sM4111 = m4111(sM4485);
                                this.f1560.f1746 = sM4111;
                                int iM4485 = c0383.m4483() / 3;
                                short sM4486 = c0383.m4483();
                                short sM4487 = c0383.m4483();
                                int[] iArr = new int[iM4485];
                                for (int i20 = 0; i20 < iM4485; i20++) {
                                    iArr[i20] = c0383.m4491();
                                }
                                m4093(m4085(iArr));
                                C0510 c0510M5208 = C0510.m5208(iArr, this.f1569, null, this.f1601, this.f1567, this.f1555, false, m4087());
                                if (c0510M5208 == null) {
                                    m4134(2, 40);
                                    throw new C0414(278, C0128.m3232(2932, 33, 73));
                                }
                                m4093(m4083((int) sM4111));
                                m4093(C0128.m3232(2965, 23, 58) + c0510M5208);
                                c0383.m4484(sM4486);
                                byte[] bArrM4108 = m4108();
                                byte[] bArrM4488 = c0383.m4484(sM4487);
                                if (sM4487 < 16) {
                                    throw new C0414(278, C0128.m3232(2988, 36, 90));
                                }
                                if (sM4487 < 16 || sM4487 >= 32) {
                                    if (sM4487 > 32) {
                                        bArr2 = new byte[32];
                                        System.arraycopy(bArrM4488, bArrM4488.length - 32, bArr2, 0, 32);
                                    }
                                    C0325 c0327 = this.f1560;
                                    c0327.f1741 = bArrM4108;
                                    c0327.f1749 = bArrM4488;
                                    C0567 c0567 = c0327.f1757;
                                    c0567.f3183 = c0510M5208.m5233(c0567.f3179);
                                    C0567 c0568 = this.f1560.f1764;
                                    c0568.f3183 = c0510M5208.m5233(c0568.f3179);
                                    C0325 c0328 = this.f1560;
                                    i4 = 0;
                                    c0328.f1757.f3182 = 0;
                                    c0328.f1764.f3182 = 0;
                                    c0328.m4329();
                                    m4144((C0670) null);
                                    i8 = i4;
                                    i9 = i12;
                                    i10 = i10;
                                } else {
                                    bArr2 = new byte[32];
                                    System.arraycopy(bArrM4488, 0, bArr2, 32 - sM4487, sM4487);
                                }
                                bArrM4488 = bArr2;
                                C0325 c0329 = this.f1560;
                                c0329.f1741 = bArrM4108;
                                c0329.f1749 = bArrM4488;
                                C0567 c0569 = c0329.f1757;
                                c0569.f3183 = c0510M5208.m5233(c0569.f3179);
                                C0567 c05610 = this.f1560.f1764;
                                c05610.f3183 = c0510M5208.m5233(c05610.f3179);
                                C0325 c03210 = this.f1560;
                                i4 = 0;
                                c03210.f1757.f3182 = 0;
                                c03210.f1764.f3182 = 0;
                                c03210.m4329();
                                m4144((C0670) null);
                                i8 = i4;
                                i9 = i12;
                                i10 = i10;
                                break;
                                break;
                        }
                    } else {
                        m4110(c0383.f1972, i8, c0383.f1971);
                        i4 = i8;
                        i10 = i10;
                    }
                    i8 = i4;
                    i9 = i12;
                    i10 = i10;
                }
            }
            c0383 = null;
            if (c0383 != null) {
            }
            i8 = i8;
            i10 = i8;
        }
    }

    public final byte[] m4108() {
        return C0308.m4227(32);
    }

    public final void m4109() throws Exception {
        if (!m4098() || m4123()) {
            m4092();
            return;
        }
        this.f1572 = 0;
        this.f1586 = null;
        this.f1602 = new C0382();
        this.f1560 = m4097();
        C0382 c0382 = new C0382();
        c0382.m4489(0);
        c0382.m4509((byte) 1);
        this.f1560.f1756 = m4087();
        c0382.m4515(this.f1560.f1756);
        m4093(m4105());
        int[] iArrM5213 = C0510.m5213(this.f1601, this.f1560.f1756, this.f1555, this.f1589, C0320.f1718);
        byte[] bArr = this.f1560.f1741;
        if (bArr == null) {
            bArr = C0320.f1706;
        }
        c0382.m4489(iArrM5213.length * 3);
        c0382.m4489(bArr.length);
        c0382.m4489(16);
        for (int i : iArrM5213) {
            c0382.m4495(i);
        }
        m4093(m4085(iArrM5213));
        c0382.m4500(bArr);
        for (int i2 = 0; i2 < 16; i2++) {
            this.f1560.f1749[i2] = 0;
        }
        c0382.m4501(this.f1560.f1749, 16, 16);
        c0382.m4511(0, ((c0382.f1971 - 2) & 32767) | 32768);
        this.f1602.m4501(c0382.f1972, 2, c0382.f1971 - 2);
        m4090(c0382);
        m4093(C0128.m3232(6331, 31, 17));
    }

    public final void m4112() throws Exception {
        C0382 c0382 = this.f1574;
        this.f1574 = null;
        m4090(c0382);
    }

    public boolean m4120() {
        return (this.f1589 & 3072) != 0;
    }

    public final void m4121() throws Exception {
        int i;
        int i2;
        C0325 c0325 = this.f1560;
        int i3 = c0325.f1757.f3183.f2948;
        int i4 = 4;
        if (i3 == 2) {
            if (c0325.m4322()) {
                C0145 c0145M4315 = C0325.m4315();
                byte[] bArrM4314 = C0325.m4314(c0145M4315.f334);
                byte[] bArrM4315 = C0325.m4314(c0145M4315.f336);
                this.f1560.m4332(c0145M4315);
                C0382 c0382 = new C0382(bArrM4314.length + bArrM4315.length + 4);
                c0382.m4489(bArrM4314.length);
                c0382.m4500(bArrM4314);
                c0382.m4489(bArrM4315.length);
                c0382.m4500(bArrM4315);
                byte[] bArrM4502 = c0382.m4502();
                C0382 c0382M4129 = m4129(Ascii.FF);
                c0382M4129.m4500(bArrM4502);
                boolean zM5221 = this.f1560.f1757.f3183.m5221();
                String strM3232 = zM5221 ? C0128.m3232(6805, 7, 19) : C0128.m3232(6812, 4, 106);
                if (this.f1560.m4317()) {
                    String strM3233 = C0128.m3232(6816, 4, 69);
                    if (zM5221 && this.f1560.f1748 == 1) {
                        strM3233 = C0128.m3232(6820, 6, 48);
                        strM3232 = C0128.m3232(6826, 6, 125);
                    }
                    if (zM5221 && this.f1560.f1748 == 2) {
                        strM3233 = C0128.m3232(6832, 6, SyslogConstants.LOG_CLOCK);
                        strM3232 = C0128.m3232(6838, 6, 35);
                    }
                    c0382M4129.m4500(m4076(C0663.m5891(strM3233).append(zM5221 ? C0128.m3232(6844, 4, 29) : C0128.m3232(6848, 4, 78)).toString()));
                }
                byte[] bArrM4156 = m4156(bArrM4502, strM3232);
                c0382M4129.m4489(bArrM4156.length);
                c0382M4129.m4500(bArrM4156);
                m4088(c0382M4129);
                m4093(C0128.m3232(6852, 54, 63));
                return;
            }
            return;
        }
        if (i3 != 15) {
            switch (i3) {
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    AbstractC0453 abstractC0453M5097 = AbstractC0453.m5097();
                    abstractC0453M5097.m5101(this.f1560.f1757.f3183.m5230(), this.f1578, false);
                    byte[] bArrM4316 = C0325.m4314(abstractC0453M5097.m5099());
                    byte[] byteArray = abstractC0453M5097.f2590.toByteArray();
                    byte[] bArrM4317 = C0325.m4314(abstractC0453M5097.mo3450());
                    C0382 c0383 = new C0382(bArrM4316.length + byteArray.length + bArrM4317.length + 6);
                    c0383.m4489(bArrM4316.length);
                    c0383.m4500(bArrM4316);
                    c0383.m4489(byteArray.length);
                    c0383.m4500(byteArray);
                    c0383.m4489(bArrM4317.length);
                    c0383.m4500(bArrM4317);
                    byte[] bArrM4503 = c0383.m4502();
                    C0382 c0382M41210 = m4129(Ascii.FF);
                    c0382M41210.m4500(bArrM4503);
                    if (!this.f1560.f1757.f3183.m5229()) {
                        boolean zM5222 = this.f1560.f1757.f3183.m5221();
                        String strM3234 = zM5222 ? C0128.m3232(6906, 7, 125) : C0128.m3232(6913, 4, 69);
                        if (this.f1560.m4317()) {
                            String strM3235 = C0128.m3232(6917, 4, 29);
                            if (zM5222 && this.f1560.f1748 == 1) {
                                strM3235 = C0128.m3232(6921, 6, 66);
                                strM3234 = C0128.m3232(6927, 6, 13);
                            }
                            if (zM5222 && this.f1560.f1748 == 2) {
                                strM3235 = C0128.m3232(6933, 6, 5);
                                strM3234 = C0128.m3232(6939, 6, 75);
                            }
                            StringBuilder sbM5891 = C0663.m5891(strM3235);
                            if (zM5222) {
                                i = 6945;
                                i2 = 121;
                            } else {
                                i = 6949;
                                i2 = 123;
                            }
                            c0382M41210.m4500(m4076(sbM5891.append(C0128.m3232(i, 4, i2)).toString()));
                        }
                        byte[] bArrM4157 = m4156(bArrM4503, strM3234);
                        c0382M41210.m4489(bArrM4157.length);
                        c0382M41210.m4500(bArrM4157);
                    }
                    this.f1560.f1751 = abstractC0453M5097;
                    m4088(c0382M41210);
                    m4093(C0128.m3232(6953, 55, 81));
                    break;
            }
            return;
        }
        C0160 c0160 = (C0160) this.f1560.f1751;
        c0160.m3453();
        byte[] bArrMo3450 = c0160.mo3450();
        C0382 c0384 = new C0382();
        c0384.m4487(3);
        c0384.m4489(C0160.m3449(c0160.f511.f488));
        c0384.m4487(bArrMo3450.length);
        c0384.m4500(bArrMo3450);
        byte[] bArrM4504 = c0384.m4502();
        C0382 c0382M41211 = m4129(Ascii.FF);
        c0382M41211.m4500(bArrM4504);
        if (!this.f1560.f1757.f3183.m5229()) {
            String strM3236 = C0128.m3232(7008, 7, 36);
            if (this.f1560.m4317()) {
                int i5 = this.f1560.f1748;
                if (i5 == 1) {
                    strM3236 = C0128.m3232(7015, 6, 16);
                } else if (i5 == 2) {
                    strM3236 = C0128.m3232(7021, 6, 123);
                    i4 = 5;
                } else {
                    strM3236 = C0128.m3232(7027, 4, 18);
                    i4 = 2;
                }
                int i6 = this.f1560.f1757.f3183.f2948 == 11 ? 3 : 1;
                c0382M41211.m4487(i4);
                c0382M41211.m4487(i6);
            }
            byte[] bArrM4158 = m4156(bArrM4504, strM3236);
            c0382M41211.m4489(bArrM4158.length);
            c0382M41211.m4500(bArrM4158);
        }
        m4088(c0382M41211);
        m4093(C0128.m3232(7031, 70, 5));
    }

    public final void m4122() throws Exception {
        byte[] bArrM4339;
        int i;
        int i2;
        if (this.f1569 == null) {
            return;
        }
        C0382 c0382M4129 = m4129(Ascii.SI);
        byte[] bArrM4126 = m4126();
        m4137(C0128.m3232(7301, 36, 74), bArrM4126);
        if (this.f1560.m4321()) {
            bArrM4339 = m4157((byte[]) null, this.f1560.f1743, bArrM4126);
        } else if (this.f1560.m4318()) {
            bArrM4339 = this.f1560.m4340(bArrM4126, true);
        } else {
            bArrM4339 = this.f1560.f1753.m4371() == 1 ? this.f1560.m4339(bArrM4126) : C0308.m4214(C0128.m3232(7337, 4, 8)).m4300(bArrM4126);
        }
        m4137(C0128.m3232(7341, 34, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), bArrM4339);
        byte[] bArrM4328 = this.f1560.m4328(bArrM4339);
        m4137(C0128.m3232(7375, 35, 60), bArrM4328);
        if (this.f1560.m4317()) {
            boolean z = this.f1560.f1753.m4371() == 1;
            String strM3232 = C0128.m3232(7410, 4, 101);
            if (z && this.f1560.f1748 == 1) {
                strM3232 = C0128.m3232(7414, 6, 121);
            }
            if (z && this.f1560.f1748 == 2) {
                strM3232 = C0128.m3232(7420, 6, 79);
            }
            StringBuilder sbM5891 = C0663.m5891(strM3232);
            if (z) {
                i = 7426;
                i2 = 116;
            } else {
                i = 7430;
                i2 = 40;
            }
            c0382M4129.m4500(m4076(sbM5891.append(C0128.m3232(i, 4, i2)).toString()));
        } else if (this.f1560.m4318()) {
            c0382M4129.m4489(this.f1560.f1744);
        }
        c0382M4129.m4489(bArrM4328.length);
        c0382M4129.m4500(bArrM4328);
        m4088(c0382M4129);
    }

    public boolean m4123() {
        return (this.f1589 & 12288) != 0;
    }

    public final void m4124() {
        String strM3232;
        String string = C0663.m5891(C0128.m3232(5936, 26, 85)).append(C0128.m3232(5962, 11, 111)).toString();
        switch (this.f1553.f1746) {
            case ViewUtils.EDGE_TO_EDGE_FLAGS:
                strM3232 = C0128.m3232(5973, 4, 40);
                break;
            case 769:
                strM3232 = C0128.m3232(5977, 4, 104);
                break;
            case 770:
                strM3232 = C0128.m3232(5981, 6, 19);
                break;
            case 771:
                strM3232 = C0128.m3232(5987, 6, 102);
                break;
            case 772:
                strM3232 = C0128.m3232(5993, 6, 55);
                break;
            default:
                strM3232 = "";
                break;
        }
        String strM5880 = C0663.m5880(string, strM3232);
        C0510 c0510 = this.f1553.f1757.f3183;
        String string2 = C0663.m5891(strM5880).append(C0128.m3232(5999, 9, 51)).append(c0510.f2951).append(C0128.m3232(6008, 18, 122)).append(c0510.f2959 * 8).toString();
        if (!c0510.m5228()) {
            string2 = C0663.m5891(C0663.m5891(string2).append(C0128.m3232(6026, 7, 117)).append(c0510.m5219()).toString()).append(C0128.m3232(6033, 16, 73)).append(C0259.m3886(c0510.m5215(), 4)).toString();
        }
        String strM3685 = this.f1581 ? C0208.m3685(this.f1553.f1751.f2591) : c0510.m5231();
        String string3 = C0663.m5891(string2).append(C0663.m5891(string2).append(C0128.m3232(6049, 15, 39)).append(strM3685).append(C0128.m3232(6064, 24, 102)).append(this.f1553.m4330()).toString()).toString();
        if (this.f1581) {
            StringBuilder sbAppend = C0663.m5891(string3).append(C0128.m3232(6088, 25, 30));
            int i = this.f1553.f1744;
            StringBuilder sbAppend2 = C0663.m5891(sbAppend.append(i == 0 ? C0128.m3232(6113, 4, 88) : C0208.m3681(i)).toString()).append(C0128.m3232(6117, 26, 64));
            int i2 = this.f1553.f1754;
            string3 = sbAppend2.append(i2 == 0 ? C0128.m3232(6143, 4, 71) : C0208.m3681(i2)).toString();
        }
        this.f1565.put(C0128.m3232(6147, 20, 52), strM3232);
        this.f1565.put(C0128.m3232(6167, 19, 31), c0510.f2951);
        this.f1565.put(C0128.m3232(6186, 24, 113), c0510.f2960);
        this.f1565.put(C0128.m3232(6210, 20, 3), C0663.m5891("").append(c0510.f2959 * 8).toString());
        this.f1565.put(C0128.m3232(6230, 24, 79), strM3685);
        this.f1565.put(C0128.m3232(6254, 28, 66), C0663.m5891("").append(this.f1553.m4330()).toString());
        m4093(string3);
        this.f1602 = null;
        this.f1572 = 10;
        this.f1553.f1742 = false;
        m4143((C0414) null);
    }

    public final void m4125() throws Exception {
        C0382 c0382M4129 = m4129(Ascii.CR);
        c0382M4129.m4487(2);
        c0382M4129.m4487(1);
        c0382M4129.m4487(2);
        if (this.f1560.m4317()) {
            byte[] bArrM4076 = m4076(C0128.m3232(6477, 19, 45));
            c0382M4129.m4489(bArrM4076.length);
            c0382M4129.m4500(bArrM4076);
        }
        Vector vectorM3544 = new C0176().m3544();
        int i = c0382M4129.f1970;
        c0382M4129.m4489(0);
        int length = 0;
        for (int i2 = 0; i2 < vectorM3544.size(); i2++) {
            byte[] bArr = (byte[]) vectorM3544.get(i2);
            if (c0382M4129.f1970 + bArr.length + 2 > 16384) {
                m4093(C0128.m3232(6496, 61, 33));
                break;
            }
            c0382M4129.m4489(bArr.length);
            c0382M4129.m4500(bArr);
            length += bArr.length + 2;
        }
        c0382M4129.m4511(i, length);
        m4088(c0382M4129);
        this.f1572 = 3;
        m4093(C0128.m3232(6557, 31, 51));
    }

    public final byte[] m4126() {
        return this.f1602.m4502();
    }

    public void m4139(C0382 c0382) throws Exception {
        C0325 c0325;
        int i;
        int i2;
        C0160 c0160;
        int i3 = c0382.f1970;
        byte bM4496 = c0382.m4496();
        int iM4491 = c0382.m4491();
        int i4 = iM4491 + 4;
        boolean z = true;
        if (bM4496 == 0) {
            m4093(C0128.m3232(1804, 69, RNMBXStyleValue.InterpolationModeIdentity));
            if (this.f1572 != 10) {
                return;
            }
            if (m4096()) {
                m4092();
                return;
            } else {
                m4093(C0128.m3232(1873, 61, 87));
                m4134(1, 100);
                return;
            }
        }
        if (bM4496 == 1) {
            if (!this.f1581 || (c0325 = this.f1560) == null || !c0325.f1742) {
                this.f1602 = new C0382();
            }
            m4131(bM4496, c0382, i3, i4);
            if (this.f1600) {
                m4137(C0128.m3232(1449, 11, 81), c0382.m4518(i3, i4));
            }
            m4094(c0382);
            return;
        }
        if (bM4496 == 2) {
            if (this.f1600) {
                m4137(C0128.m3232(1460, 11, 125), c0382.m4518(i3, i4));
            }
            m4131(bM4496, c0382, i3, i4);
            m4117(c0382, iM4491);
            return;
        }
        if (bM4496 == 4) {
            if (this.f1600) {
                m4137(C0128.m3232(1342, 18, 5), c0382.m4518(i3, i4));
            }
            c0382.m4506();
            c0382.m4506();
            byte bM4497 = c0382.m4496();
            c0382.m4484(bM4497);
            if (m4081(c0382, 2, 2, 2, new Vector(), new Vector()) + bM4497 + Ascii.VT + c0382.m4484(c0382.m4483()).length == iM4491) {
                return;
            }
            m4113(50, C0128.m3232(1360, 34, 68));
            throw null;
        }
        int i5 = 0;
        if (bM4496 == 6) {
            if (this.f1600) {
                m4137(C0128.m3232(1508, 27, 101), c0382.m4518(i3, i4));
            }
            m4131(bM4496, c0382, i3, i4);
            C0325 c0326 = this.f1560;
            if (c0326.f1742) {
                m4113(10, C0128.m3232(1934, 42, 42));
                throw null;
            }
            c0326.f1742 = true;
            c0382.m4483();
            Vector vector = new Vector();
            Vector vector2 = new Vector();
            if (m4081(c0382, 2, 2, 2, vector, vector2) + 2 != iM4491) {
                m4113(50, C0128.m3232(1976, 37, 93));
                throw null;
            }
            int i6 = 0;
            while (true) {
                if (i6 >= vector.size()) {
                    i = 0;
                    break;
                } else {
                    if (((Integer) vector.get(i6)).intValue() == 51) {
                        byte[] bArr = (byte[]) vector2.get(i6);
                        i = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
                        break;
                    }
                    i6++;
                }
            }
            if (i == 0) {
                m4113(50, C0128.m3232(2013, 43, 43));
                throw null;
            }
            String[] strArrM3908 = C0259.m3908(f1544, ",", true, false);
            while (i5 < strArrM3908.length) {
                if (C0208.m3684(strArrM3908[i5]) == i) {
                    this.f1560.f1752 = i;
                    m4092();
                    return;
                }
                i5++;
            }
            m4113(50, C0128.m3232(2056, 81, 69) + i);
            throw null;
        }
        if (bM4496 == 8) {
            if (this.f1600) {
                m4137(C0128.m3232(1394, 19, 51), c0382.m4518(i3, i4));
            }
            m4131(bM4496, c0382, i3, i4);
            short sM4483 = c0382.m4483();
            while (i5 < sM4483) {
                int iM4483 = c0382.m4483() & UShort.MAX_VALUE;
                short sM4484 = c0382.m4483();
                i5 += sM4484 + 4;
                if (iM4483 == 0) {
                    c0382.m4507(sM4484);
                } else {
                    if (iM4483 == 1) {
                        c0382.m4507(sM4484);
                        m4113(47, C0128.m3232(395, 46, 122));
                        throw null;
                    }
                    if (iM4483 != 10) {
                        if (iM4483 == 19) {
                            c0382.m4507(sM4484);
                            m4113(47, C0128.m3232(546, 50, 59));
                            throw null;
                        }
                        if (iM4483 == 42) {
                            c0382.m4507(sM4484);
                            m4113(47, C0128.m3232(596, 37, 32));
                            throw null;
                        }
                        if (iM4483 != 57) {
                            switch (iM4483) {
                                case 14:
                                    c0382.m4507(sM4484);
                                    m4113(47, C0128.m3232(475, 35, 83));
                                    throw null;
                                case 15:
                                    c0382.m4507(sM4484);
                                    m4113(47, C0128.m3232(TypedValues.PositionType.TYPE_POSITION_TYPE, 36, 42));
                                    throw null;
                                case 16:
                                    c0382.m4483();
                                    this.f1561 = "";
                                    int i7 = 2;
                                    while (i7 < sM4484) {
                                        int iM4496 = c0382.m4496() & 255;
                                        if (iM4496 > 0 && this.f1561.length() > 0) {
                                            this.f1561 = C0663.m5888(new StringBuilder(), this.f1561, ",");
                                        }
                                        if (iM4496 > 0) {
                                            this.f1561 += C0259.m3892(c0382.m4484(iM4496));
                                        }
                                        i7 += iM4496 + 1;
                                    }
                                    break;
                                default:
                                    c0382.m4507(sM4484);
                                    m4113(47, C0128.m3232(633, 23, 56) + iM4483);
                                    throw null;
                            }
                        } else {
                            this.f1564 = c0382.m4484(sM4484);
                        }
                    } else if (m4082(c0382, 2, 2, new Vector()) != sM4484) {
                        m4113(50, C0128.m3232(441, 34, 84));
                        throw null;
                    }
                }
            }
            this.f1572 = 31;
            if (i5 + 2 == iM4491) {
                return;
            }
            m4113(50, C0128.m3232(1413, 36, 79));
            throw null;
        }
        if (bM4496 == 20) {
            if (this.f1600) {
                m4137(C0128.m3232(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 8, 7), c0382.m4518(i3, i4));
            }
            if (this.f1568) {
                m4099();
            }
            if (this.f1572 != 8) {
                m4106(C0128.m3232(5237, 8, 102));
                throw null;
            }
            byte[] bArrM4484 = c0382.m4484(iM4491);
            m4137(C0128.m3232(5245, 11, 20), bArrM4484);
            byte[] bArrM4338 = this.f1553.m4338(false);
            m4137(C0128.m3232(5256, 5, 70), bArrM4338);
            byte[] bArrM4153 = m4153(this.f1553, bArrM4338, false);
            m4137(C0128.m3232(5261, 9, 81), bArrM4153);
            if (!C0259.m3896(bArrM4153, bArrM4484)) {
                m4134(2, 40);
                throw new C0414(286, C0128.m3232(5270, 46, 44));
            }
            m4093(C0128.m3232(5316, 51, WebSocketProtocol.PAYLOAD_SHORT));
            m4131(bM4496, c0382, i3, i4);
            if (this.f1581) {
                if (this.f1560.f1767) {
                    m4145(false);
                    if (this.f1560.f1759) {
                        m4100();
                        m4122();
                    }
                    m4115(this.f1560);
                }
                C0325 c0327 = this.f1560;
                C0567 c0567 = c0327.f1757;
                c0567.m5517(c0567.f3183.f2956);
                C0567 c0568 = c0327.f1764;
                c0568.m5517(c0568.f3183.f2956);
                c0327.m4326(c0327.f1762, c0327.f1755);
                c0327.m4323(c0327.f1758, c0327.f1745);
                c0327.m4334(c0327.f1755, c0327.f1745);
                c0327.f1757.m5516();
                c0327.f1764.m5516();
            } else {
                boolean z2 = this.f1604;
                if ((z2 && this.f1575) || (!z2 && !this.f1575)) {
                    m4104();
                    m4115(this.f1560);
                }
            }
            m4124();
            return;
        }
        switch (bM4496) {
            case 11:
                if (this.f1600) {
                    m4137(C0128.m3232(1471, 11, 114), c0382.m4518(i3, i4));
                }
                m4131(bM4496, c0382, i3, i4);
                m4093(C0128.m3232(3956, 28, 66));
                boolean z3 = this.f1581;
                if (z3) {
                    int i8 = this.f1572;
                    if (i8 != 3 && i8 != 31) {
                        m4106(C0128.m3232(3984, 11, 113));
                        throw null;
                    }
                } else {
                    boolean z4 = this.f1604;
                    if ((z4 && this.f1572 != 1) || (!z4 && this.f1572 != 3)) {
                        m4106(C0128.m3232(3995, 11, 125));
                        throw null;
                    }
                }
                if (z3) {
                    c0382.m4484(c0382.m4496());
                }
                Vector vector3 = new Vector();
                int iM4492 = c0382.m4491();
                int i9 = 0;
                while (i9 < iM4492) {
                    int iM4493 = c0382.m4491();
                    i9 += 3;
                    if (iM4493 > 0) {
                        vector3.add(c0382.m4484(iM4493));
                        i9 += iM4493;
                        if (this.f1581) {
                            short sM4485 = c0382.m4483();
                            int i10 = i9 + 2;
                            if (sM4485 > 0) {
                                int iM4081 = m4081(c0382, 2, 2, 2, new Vector(), new Vector());
                                i10 += iM4081;
                                if (sM4485 != iM4081) {
                                    m4113(50, C0128.m3232(4006, 18, 74));
                                    throw null;
                                }
                            }
                            i9 = i10;
                        }
                        if (!this.f1598) {
                            if (vector3.size() > 0) {
                                this.f1560.f1747 = new C0335((byte[]) vector3.get(0));
                            }
                            if (this.f1560.f1747 != null && !this.f1604 && this.f1567) {
                                throw new C0414(276, C0128.m3232(4024, 71, 101));
                            }
                            m4150(this.f1560.f1747, vector3);
                            i2 = this.f1560.f1757.f3183.f2948;
                            if (i2 != 13 || i2 == 14) {
                                AbstractC0453 abstractC0453M5096 = AbstractC0453.m5096();
                                c0160 = (C0160) abstractC0453M5096;
                                C0158 c0158 = (C0158) C0671.m5927(this.f1560.f1747);
                                if (c0160.f511 == null) {
                                    c0160.f511 = new C0158();
                                }
                                c0160.f511.m3445(c0158, false);
                                c0160.f2588 = c0160.f511.m3427();
                                this.f1560.f1751 = abstractC0453M5096;
                            }
                            if (this.f1604 || this.f1581) {
                                this.f1572 = 4;
                                return;
                            }
                            return;
                        }
                    }
                }
                if (vector3.size() > 0) {
                    this.f1560.f1747 = new C0335((byte[]) vector3.get(0));
                }
                if (this.f1560.f1747 != null) {
                }
                m4150(this.f1560.f1747, vector3);
                i2 = this.f1560.f1757.f3183.f2948;
                if (i2 != 13) {
                    AbstractC0453 abstractC0453M5097 = AbstractC0453.m5096();
                    c0160 = (C0160) abstractC0453M5097;
                    C0158 c0159 = (C0158) C0671.m5927(this.f1560.f1747);
                    if (c0160.f511 == null) {
                        c0160.f511 = new C0158();
                    }
                    c0160.f511.m3445(c0159, false);
                    c0160.f2588 = c0160.f511.m3427();
                    this.f1560.f1751 = abstractC0453M5097;
                } else {
                    AbstractC0453 abstractC0453M5098 = AbstractC0453.m5096();
                    c0160 = (C0160) abstractC0453M5098;
                    C0158 c01510 = (C0158) C0671.m5927(this.f1560.f1747);
                    if (c0160.f511 == null) {
                        c0160.f511 = new C0158();
                    }
                    c0160.f511.m3445(c01510, false);
                    c0160.f2588 = c0160.f511.m3427();
                    this.f1560.f1751 = abstractC0453M5098;
                }
                if (this.f1604) {
                }
                this.f1572 = 4;
                return;
            case 12:
                m4131(bM4496, c0382, i3, i4);
                m4093(C0128.m3232(4341, 34, 115));
                if (this.f1572 != 1) {
                    m4106(C0128.m3232(4375, 17, 5));
                    throw null;
                }
                int i11 = this.f1560.f1757.f3183.f2948;
                if (i11 == 1 || i11 == 2) {
                    C0145 c0145 = new C0145();
                    int i12 = c0382.f1970;
                    c0145.f334 = c0382.m4484(c0382.m4483());
                    c0145.f336 = c0382.m4484(c0382.m4483());
                    byte[] bArrM4518 = c0382.m4518(i12, c0382.f1970 - i12);
                    String strM3232 = this.f1560.f1757.f3183.m5221() ? C0128.m3232(5111, 7, 48) : C0128.m3232(5118, 4, 102);
                    if (this.f1560.m4317()) {
                        short sM4486 = c0382.m4483();
                        if (this.f1560.f1757.f3183.m5221()) {
                            strM3232 = C0128.m3232(5122, 6, 76);
                            if (this.f1560.f1748 == 2) {
                                strM3232 = C0128.m3232(5128, 6, 112);
                            }
                        }
                        if (sM4486 == 513) {
                            strM3232 = C0128.m3232(5134, 4, 19);
                        } else if (sM4486 == 1025) {
                            strM3232 = C0128.m3232(5138, 6, 98);
                        } else if (sM4486 == 1537) {
                            strM3232 = C0128.m3232(5144, 6, 56);
                        } else {
                            m4093(C0128.m3232(5150, 55, 89) + Integer.toHexString(sM4486));
                        }
                    }
                    m4149(bArrM4518, c0382, strM3232, false);
                    this.f1560.m4332(c0145);
                    return;
                }
                switch (i11) {
                    case 11:
                    case 12:
                    case 15:
                        AbstractC0453 abstractC0453M5099 = AbstractC0453.m5096();
                        int i13 = c0382.f1970;
                        byte bM4498 = c0382.m4496();
                        if (bM4498 != 3) {
                            throw new C0414(C0128.m3232(4770, 24, 60) + ((int) bM4498));
                        }
                        int iM4484 = c0382.m4483() & UShort.MAX_VALUE;
                        m4093(C0128.m3232(4754, 16, 78) + C0208.m3685(iM4484));
                        byte[] bArrM4485 = c0382.m4484(c0382.m4496() & 255);
                        C0160 c0161 = (C0160) abstractC0453M5099;
                        c0161.m3458(iM4484, false);
                        c0161.mo3460(bArrM4485);
                        byte[] bArrM4519 = c0382.m4518(i13, c0382.f1970 - i13);
                        if (!this.f1560.f1757.f3183.m5229()) {
                            String strM3233 = this.f1560.f1757.f3183.m5221() ? C0128.m3232(4794, 7, 116) : C0128.m3232(4801, 4, 125);
                            if (this.f1560.m4317()) {
                                byte bM4499 = c0382.m4496();
                                int iM4497 = (bM4499 << 8) | c0382.m4496();
                                if (bM4499 == 1) {
                                    strM3233 = C0128.m3232(4805, 3, 1);
                                } else if (bM4499 == 2) {
                                    strM3233 = C0128.m3232(4808, 4, 68);
                                } else if (bM4499 == 3) {
                                    strM3233 = C0128.m3232(4812, 6, 114);
                                } else if (bM4499 == 4) {
                                    strM3233 = C0128.m3232(4818, 6, 96);
                                } else if (bM4499 == 5) {
                                    strM3233 = C0128.m3232(4824, 6, 20);
                                } else if (bM4499 == 6) {
                                    strM3233 = C0128.m3232(4830, 6, 15);
                                } else if (iM4497 == 2052 || iM4497 == 2057) {
                                    strM3233 = C0128.m3232(4836, 6, 118);
                                } else if (iM4497 == 2053 || iM4497 == 2058) {
                                    strM3233 = C0128.m3232(4842, 6, WebSocketProtocol.PAYLOAD_SHORT);
                                } else if (iM4497 == 2054 || iM4497 == 2059) {
                                    strM3233 = C0128.m3232(4848, 6, 76);
                                } else {
                                    m4093(C0128.m3232(4854, 56, 75) + Integer.toHexString(iM4497));
                                }
                                z = false;
                            } else {
                                z = false;
                            }
                            m4149(bArrM4519, c0382, strM3233, z);
                        }
                        this.f1560.f1751 = abstractC0453M5099;
                        return;
                    case 13:
                    case 14:
                        m4106(C0128.m3232(4392, 17, 127));
                        throw null;
                    default:
                        AbstractC0453 abstractC0453M50910 = AbstractC0453.m5098();
                        int i14 = c0382.f1970;
                        byte[] bArrM4486 = c0382.m4484(c0382.m4483());
                        abstractC0453M50910.f2588 = bArrM4486.length * 8;
                        abstractC0453M50910.f2592 = new BigInteger(1, bArrM4486);
                        abstractC0453M50910.f2590 = new BigInteger(1, c0382.m4484(c0382.m4483()));
                        abstractC0453M50910.mo3460(c0382.m4484(c0382.m4483()));
                        if (!this.f1555 && abstractC0453M50910.m5099().length * 8 < 1024) {
                            m4134(2, 47);
                            throw new C0414(286, C0128.m3232(4910, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 125));
                        }
                        byte[] bArrM45110 = c0382.m4518(i14, c0382.f1970 - i14);
                        if (!this.f1560.f1757.f3183.m5229()) {
                            String strM3234 = this.f1560.f1757.f3183.m5221() ? C0128.m3232(5018, 7, 37) : C0128.m3232(5025, 4, 1);
                            if (this.f1560.m4317()) {
                                short sM4487 = c0382.m4483();
                                if (this.f1560.f1757.f3183.m5221()) {
                                    strM3234 = C0128.m3232(5029, 6, 97);
                                    if (this.f1560.f1748 == 2) {
                                        strM3234 = C0128.m3232(5035, 6, 121);
                                    }
                                }
                                if (sM4487 == 513) {
                                    strM3234 = C0128.m3232(5041, 4, 119);
                                } else if (sM4487 == 1025) {
                                    strM3234 = C0128.m3232(5045, 6, 47);
                                } else if (sM4487 == 1537) {
                                    strM3234 = C0128.m3232(5051, 6, 36);
                                } else {
                                    m4093(C0128.m3232(5057, 54, 81) + Integer.toHexString(sM4487));
                                }
                            }
                            m4149(bArrM45110, c0382, strM3234, false);
                        }
                        this.f1560.f1751 = abstractC0453M50910;
                        return;
                }
            case 13:
                m4131(bM4496, c0382, i3, i4);
                if (this.f1581) {
                    m4140(c0382, iM4491);
                    return;
                }
                m4093(C0128.m3232(4701, 35, 75));
                if (this.f1572 != 1) {
                    m4106(C0128.m3232(4736, 18, 54));
                    throw null;
                }
                int iM4498 = c0382.m4496() & 65535;
                int[] iArr = new int[iM4498];
                while (i5 < iM4498) {
                    iArr[i5] = c0382.m4496();
                    i5++;
                }
                c0382.m4484(c0382.m4483());
                this.f1560.f1759 = true;
                return;
            case 14:
                m4131(bM4496, c0382, i3, i4);
                m4093(C0128.m3232(5205, 32, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
                this.f1572 = 8;
                m4130();
                try {
                    if (this.f1560.f1759) {
                        m4100();
                    }
                    m4103();
                    if (this.f1560.f1759) {
                        m4122();
                    }
                    m4104();
                    m4115(this.f1560);
                    return;
                } finally {
                    m4112();
                }
            case 15:
                if (this.f1600) {
                    m4137(C0128.m3232(1482, 18, 38), c0382.m4518(i3, i4));
                }
                m4116(c0382);
                m4131(bM4496, c0382, i3, i4);
                return;
            case 16:
                m4131(bM4496, c0382, i3, i4);
                int i15 = this.f1572;
                if (i15 != 8 && i15 != 4) {
                    m4106(C0128.m3232(5367, 17, SyslogConstants.LOG_CLOCK));
                    throw null;
                }
                int i16 = this.f1560.f1757.f3183.f2948;
                if (i16 != 1 && i16 != 2) {
                    switch (i16) {
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                            m4093(C0128.m3232(5716, 81, 100));
                            byte[] bArrM4487 = c0382.m4484(c0382.m4496() & 255);
                            if (bArrM4487.length == 0) {
                                if (this.f1560.f1747 != null) {
                                    throw new C0414(278, C0128.m3232(5851, 85, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                                }
                                throw new C0414(276, C0128.m3232(5797, 54, 0));
                            }
                            this.f1560.f1751.mo3460(bArrM4487);
                            int i17 = this.f1560.f1757.f3183.f2948;
                            if (i17 == 14 || i17 == 13) {
                                ((C0160) this.f1560.f1751).f510 = (C0158) C0671.m5927(this.f1569);
                            }
                            byte[] bArrMo3452 = this.f1560.f1751.mo3452();
                            m4118(bArrMo3452);
                            m4146(bArrMo3452);
                            break;
                            break;
                        default:
                            m4093(C0128.m3232(5528, 66, 22));
                            byte[] bArrM4488 = c0382.m4484(c0382.m4483());
                            if (bArrM4488.length == 0) {
                                if (this.f1560.f1747 != null) {
                                    throw new C0414(278, C0128.m3232(5646, 70, 82));
                                }
                                throw new C0414(276, C0128.m3232(5594, 52, 30));
                            }
                            this.f1560.f1751.mo3460(bArrM4488);
                            byte[] bArrMo3453 = this.f1560.f1751.mo3452();
                            m4118(C0325.m4314(bArrMo3453));
                            m4146(bArrMo3453);
                            break;
                            break;
                    }
                } else {
                    m4093(C0128.m3232(5384, 71, 116));
                    if (this.f1560.m4324()) {
                        iM4491 = c0382.m4483();
                    }
                    byte[] bArrM4489 = c0382.m4484(iM4491);
                    C0325 c0328 = this.f1560;
                    C0335 c0335 = c0328.f1753;
                    if (c0335.m4371() != 1) {
                        throw new C0414(278, C0128.m3224(104, 58, 44));
                    }
                    byte[] bArrM4314 = C0325.m4314(C0308.m4260((Object) (c0328.m4322() ? C0325.m4315() : c0328.m4325(c0335)), bArrM4489, false));
                    short s = this.f1560.f1756;
                    short s2 = (byte) (s >> 8);
                    short s3 = (byte) (s & 255);
                    if (bArrM4314[0] != s2 || bArrM4314[1] != s3) {
                        bArrM4314 = C0308.m4227(48);
                        m4093(C0128.m3232(5455, 73, 65));
                    }
                    m4118(bArrM4314);
                    m4146(bArrM4314);
                }
                m4138(this.f1560);
                return;
            default:
                m4093(C0128.m3232(1535, 30, 80) + ((int) bM4496));
                return;
        }
    }

    public final void m4119(byte[] bArr, int i, int i2, int i3) throws Exception {
        InterfaceC0121 interfaceC0121;
        int i4 = i;
        while (i2 > 0) {
            int iMin = Math.min(16384, i2);
            while (true) {
                int i5 = this.f1572;
                if (i5 == 10 || i5 == 20) {
                    break;
                } else if (this.f1552 != null) {
                    ((C0521) this.f1576).f3017.mo5626();
                }
            }
            byte[] bArr2 = bArr;
            m4133(Ascii.ETB, this.f1553.f1746, bArr2, i4, iMin);
            if (i3 == 2 && this.f1576 != null) {
                byte[] bArrM3865 = C0259.m3865(bArr2, i4, iMin);
                C0521 c0521 = (C0521) this.f1576;
                c0521.mo3405(c0521.f3003, bArrM3865);
            } else if (i3 == 3 && (interfaceC0121 = this.f1576) != null) {
                C0521 c0522 = (C0521) interfaceC0121;
                c0522.mo3405(c0522.f3003, (byte[]) null);
            }
            i4 += iMin;
            i2 -= iMin;
            bArr = bArr2;
        }
    }

    public boolean m4096() {
        return this.f1562;
    }

    public final void m4093(String str) {
        InterfaceC0125 interfaceC0125 = this.f1552;
        if (interfaceC0125 != null) {
            interfaceC0125.fireSSLStatus(str);
        }
    }

    public final short m4087() {
        if (m4120() || m4123()) {
            return (short) 771;
        }
        if (m4102()) {
            return (short) 770;
        }
        if (m4101()) {
            return (short) 769;
        }
        if (m4098()) {
            return (short) 768;
        }
        throw new C0414(278, C0128.m3232(7951, 38, 20));
    }

    public static String m4078(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return "";
        }
        String[] strArrM3908 = C0259.m3908(strTrim, ",", true, false);
        for (int i = 0; i < strArrM3908.length; i++) {
            if (!f1549.contains(strArrM3908[i])) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0128.m3232(9446, 40, 99)), strArrM3908[i], "'."));
            }
        }
        return strTrim;
    }

    public final void m4094(C0382 c0382) throws Exception {
        byte b;
        int i;
        int[] iArr;
        byte b2;
        int i2;
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        int i3;
        byte b3;
        int iIntValue;
        AbstractC0453 abstractC0453M5097;
        byte[] bArr;
        int i4;
        int i5;
        Vector vector;
        C0325 c0325;
        m4093(C0128.m3232(2137, 28, 71));
        int i6 = this.f1572;
        int i7 = 10;
        if (i6 == 10 && !this.f1562) {
            m4093(C0128.m3232(2165, 61, 73));
            m4134(1, 100);
            return;
        }
        if (i6 != 10 && i6 != 2) {
            m4106(C0128.m3232(2226, 11, 44));
            throw null;
        }
        m4093(m4105());
        if (!this.f1581 || (c0325 = this.f1560) == null || !c0325.f1742) {
            this.f1560 = m4097();
        }
        short sM4483 = c0382.m4483();
        this.f1560.f1756 = sM4483;
        short sM4111 = m4111(sM4483);
        C0325 c0326 = this.f1560;
        c0326.f1746 = sM4111;
        c0326.f1749 = c0382.m4484(32);
        byte[] bArrM4484 = c0382.m4484(c0382.m4496());
        int iM4483 = c0382.m4483() / 2;
        int[] iArr2 = new int[iM4483];
        for (int i8 = 0; i8 < iM4483; i8++) {
            iArr2[i8] = c0382.m4483() & UShort.MAX_VALUE;
        }
        m4093(m4085(iArr2));
        byte[] bArrM4485 = c0382.m4484(c0382.m4496());
        int i9 = 0;
        while (true) {
            if (i9 >= bArrM4485.length) {
                b = -1;
                break;
            }
            b = bArrM4485[i9];
            if (b == 0) {
                break;
            } else {
                i9++;
            }
        }
        if (b == 0) {
            Vector vector2 = new Vector();
            Vector vector3 = new Vector();
            int iM4486 = c0382.m4486();
            if (iM4486 > 0) {
                iArr = iArr2;
                b2 = b;
                i = iM4483;
                i2 = 0;
                if (m4081(c0382, 2, 2, 2, vector2, vector3) != iM4486) {
                    m4113(50, C0128.m3232(2306, 19, 55));
                    throw null;
                }
            } else {
                i = iM4483;
                iArr = iArr2;
                b2 = b;
                i2 = 0;
            }
            Vector vector4 = new Vector();
            Vector vector5 = new Vector();
            Vector vector6 = new Vector();
            Vector vector7 = new Vector();
            Vector vector8 = new Vector();
            int i10 = i2;
            while (i10 < vector2.size()) {
                int iIntValue2 = ((Integer) vector2.get(i10)).intValue();
                byte[] bArr2 = (byte[]) vector3.get(i10);
                if (iIntValue2 != 0) {
                    if (iIntValue2 == i7) {
                        vector = vector4;
                        Vector vector9 = new Vector();
                        if (m4082(new C0382(bArr2), 2, 2, vector9) == bArr2.length) {
                            String[] strArrM3908 = C0259.m3908(this.f1584, ",", true, false);
                            String[] strArrM3909 = C0259.m3908(this.f1551, ",", true, false);
                            int i11 = 0;
                            while (i11 < vector9.size()) {
                                int iIntValue3 = ((Integer) vector9.get(i11)).intValue();
                                int i12 = i10;
                                for (String str : strArrM3908) {
                                    if (C0208.m3684(str) == iIntValue3) {
                                        vector6.add(Integer.valueOf(iIntValue3));
                                        break;
                                    }
                                }
                                for (String str2 : strArrM3909) {
                                    if (C0208.m3684(str2) == iIntValue3) {
                                        vector7.add(Integer.valueOf(iIntValue3));
                                        break;
                                    }
                                }
                                i11++;
                                i10 = i12;
                            }
                        } else {
                            m4113(50, C0128.m3232(2325, 28, 97));
                            throw null;
                        }
                    } else if (iIntValue2 == 13) {
                        vector = vector4;
                        if (m4082(new C0382(bArr2), 2, 2, vector8) != bArr2.length) {
                            m4113(50, C0128.m3232(2408, 19, 57));
                            throw null;
                        }
                    } else if (iIntValue2 == 16) {
                        vector = vector4;
                    } else if (iIntValue2 == 43) {
                        vector = vector4;
                        Vector vector10 = new Vector();
                        m4082(new C0382(bArr2), 1, 2, vector10);
                        int i13 = 0;
                        while (true) {
                            if (i13 < vector10.size()) {
                                short sIntValue = (short) (((Integer) vector10.get(i13)).intValue() & 65535);
                                try {
                                    if (!C0325.m4316(sIntValue) || !m4123()) {
                                        sIntValue = m4111(sIntValue);
                                    }
                                    this.f1581 = C0325.m4316(sIntValue);
                                    this.f1560.f1746 = sIntValue;
                                    i5 = i10;
                                    sM4111 = sIntValue;
                                    break;
                                } catch (Exception unused) {
                                    sM4111 = sIntValue;
                                    i13++;
                                }
                            }
                        }
                    } else if (iIntValue2 == 45) {
                        vector = vector4;
                        C0382 c0383 = new C0382(bArr2);
                        for (int iM4496 = c0383.m4496(); iM4496 > 0; iM4496--) {
                            c0383.m4496();
                        }
                        if (c0383.m4486() != 0) {
                            m4113(50, C0128.m3232(2374, 34, 45));
                            throw null;
                        }
                    } else if (iIntValue2 != 51) {
                        i5 = i10;
                        vector = vector4;
                    } else {
                        vector = vector4;
                        if (m4081(new C0382(bArr2), 2, 2, 2, vector4, vector5) != bArr2.length) {
                            m4113(50, C0128.m3232(2353, 21, 77));
                            throw null;
                        }
                    }
                    i5 = i10;
                    break;
                }
                i5 = i10;
                vector = vector4;
                i10 = i5 + 1;
                vector4 = vector;
                i7 = 10;
            }
            Vector vector11 = vector4;
            String str3 = "";
            String strM5880 = "";
            int i14 = i;
            int i15 = 0;
            while (i15 < i14) {
                String strM5201 = C0510.m5201(iArr[i15]);
                String str4 = str3;
                if (!strM5201.startsWith(C0128.m3232(2427, 7, 51))) {
                    if (strM5880.length() > 0) {
                        strM5880 = C0663.m5880(strM5880, ",");
                    }
                    strM5880 = C0663.m5880(strM5880, strM5201);
                }
                i15++;
                str3 = str4;
            }
            String str5 = str3;
            String strM5881 = str5;
            for (int i16 = 0; i16 < vector8.size(); i16++) {
                String strM3681 = C0208.m3681(((Integer) vector8.get(i16)).intValue());
                if (!strM3681.equals(C0663.m5891(str5).append((Integer) vector8.get(i16)).toString())) {
                    if (strM5881.length() > 0) {
                        strM5881 = C0663.m5880(strM5881, ",");
                    }
                    strM5881 = C0663.m5880(strM5881, strM3681);
                }
            }
            String strM3882 = C0259.m3882(this.f1569.f1797);
            C0335 c0335 = this.f1569;
            int[] iArr3 = {c0335.f1800};
            String[] strArr4 = {strM3882};
            String[] strArr5 = {c0335.f1801};
            String[] strArr6 = {c0335.m4368()};
            InterfaceC0568 interfaceC0568 = this.f1595;
            if (interfaceC0568 != null) {
                strArr = strArr4;
                strArr2 = strArr5;
                strArr3 = strArr6;
                interfaceC0568.m5519("", strM5880, strM5881, iArr3, strArr, strArr2, strArr3);
            } else {
                strArr = strArr4;
                strArr2 = strArr5;
                strArr3 = strArr6;
            }
            if (strArr[0] != null && strArr2[0] != null && strArr3[0] != null && (iArr3[0] != this.f1569.f1800 || !strArr[0].equals(strM3882) || !strArr2[0].equals(this.f1569.f1801) || !strArr3[0].equals(this.f1569.m4368()))) {
                C0335 c0336 = new C0335(iArr3[0], strArr[0], strArr2[0], strArr3[0]);
                this.f1569 = c0336;
                this.f1560.f1753 = c0336;
                m4093(C0128.m3232(2434, 61, 50));
            }
            if (vector8.size() != 0) {
                Vector vectorM4086 = m4086(this.f1569, this.f1577);
                int i17 = 0;
                for (int i18 = 0; i18 < vector8.size(); i18++) {
                    int iIntValue4 = ((Integer) vector8.get(i18)).intValue();
                    for (int i19 = 0; i19 < vectorM4086.size(); i19++) {
                        if (iIntValue4 == ((Integer) vectorM4086.get(i19)).intValue()) {
                            this.f1560.f1754 = iIntValue4;
                            i17 = iIntValue4;
                            break;
                        }
                    }
                    if (i17 != 0) {
                        this.f1560.f1744 = i17;
                        break;
                    }
                }
                i3 = i17;
                if (this.f1600) {
                    m4114(C0128.m3232(2495, 35, 32) + C0208.m3681(this.f1560.f1754));
                    m4114(C0128.m3232(2530, 34, 53) + C0208.m3681(this.f1560.f1744));
                }
            } else {
                i3 = 0;
            }
            if (this.f1589 == 12288 && !this.f1581) {
                m4134(2, 40);
                throw new C0414(278, C0128.m3232(2564, 57, 39));
            }
            boolean z = this.f1581;
            if (z && i3 == 0) {
                m4113(40, C0128.m3232(2621, 40, 112));
                throw null;
            }
            C0510 c0510M5208 = C0510.m5208(iArr, this.f1569, z ? vector6 : vector7, this.f1601, this.f1567, this.f1555, z, m4087());
            if (c0510M5208 != null) {
                if (this.f1581 && (i4 = c0510M5208.f2955) != 772) {
                    this.f1581 = false;
                    sM4111 = (short) (i4 & 65535);
                    this.f1560.f1746 = sM4111;
                }
                m4093(m4083((int) sM4111));
                m4093(C0128.m3232(2694, 23, 76) + c0510M5208);
                if (m4123() && !C0325.m4316(sM4111) && !this.f1581) {
                    if (sM4111 == 771) {
                        bArr = C0208.f741;
                    } else {
                        bArr = sM4111 == 770 ? C0208.f748 : null;
                    }
                    if (bArr != null) {
                        byte[] bArr3 = this.f1560.f1766;
                        System.arraycopy(bArr, 0, bArr3, bArr3.length - bArr.length, bArr.length);
                    }
                }
                if (this.f1581) {
                    if (vector6.size() != 0) {
                        byte[] bArr4 = null;
                        int i20 = 0;
                        for (int i21 = 0; i21 < vector5.size(); i21++) {
                            int iIntValue5 = ((Integer) vector11.get(i21)).intValue();
                            for (int i22 = 0; i22 < vector6.size(); i22++) {
                                if (((Integer) vector6.get(i22)).intValue() == iIntValue5) {
                                    bArr4 = (byte[]) vector5.get(i21);
                                    i20 = iIntValue5;
                                    break;
                                }
                            }
                            if (bArr4 != null) {
                                break;
                            }
                        }
                        m4093(C0128.m3232(2743, 16, 121) + C0208.m3685(i20));
                        if (bArr4 == null) {
                            if (vector6.size() > 0) {
                                C0325 c0327 = this.f1560;
                                if (!c0327.f1742) {
                                    c0327.f1741 = bArrM4484;
                                    C0567 c0567 = c0327.f1757;
                                    c0567.f3183 = c0510M5208.m5233(c0567.f3179);
                                    C0325 c0328 = this.f1560;
                                    c0328.f1757.f3182 = b2;
                                    c0328.m4329();
                                    byte[] bArrM4339 = this.f1560.m4339(this.f1602.f1972);
                                    this.f1602.m4505();
                                    this.f1602.m4487(254);
                                    this.f1602.m4500(new byte[2]);
                                    this.f1602.m4487(bArrM4339.length);
                                    this.f1602.m4500(bArrM4339);
                                    C0325 c0329 = this.f1560;
                                    int i23 = c0510M5208.f2956;
                                    int iIntValue6 = ((Integer) vector6.get(0)).intValue();
                                    C0382 c0382M4129 = m4129((byte) 2);
                                    c0382M4129.m4489(771);
                                    c0382M4129.m4500(C0208.f742);
                                    c0382M4129.m4487(c0329.f1741.length);
                                    c0382M4129.m4500(c0329.f1741);
                                    c0382M4129.m4513(i23, 2);
                                    c0382M4129.m4487(c0329.f1757.f3182);
                                    C0382 c0384 = new C0382();
                                    c0384.m4489(51);
                                    c0384.m4489(2);
                                    c0384.m4513(iIntValue6, 2);
                                    c0384.m4489(43);
                                    c0384.m4489(2);
                                    c0384.m4515(c0329.f1746);
                                    c0382M4129.m4489(c0384.f1971);
                                    c0382M4129.m4500(c0384.m4502());
                                    m4088(c0382M4129);
                                    m4093(C0128.m3232(2849, 30, 13));
                                    c0329.f1742 = true;
                                    return;
                                }
                            }
                            m4113(50, C0128.m3232(2759, 32, 18));
                            throw null;
                        }
                        b3 = b2;
                        if (m4079(i20)) {
                            abstractC0453M5097 = AbstractC0453.m5096();
                            C0160 c0160 = (C0160) abstractC0453M5097;
                            c0160.m3458(i20, true);
                            c0160.m3453();
                        } else {
                            abstractC0453M5097 = AbstractC0453.m5097();
                            abstractC0453M5097.m5101(false, i20, true);
                        }
                        this.f1560.f1751 = abstractC0453M5097;
                        m4137(C0128.m3232(2791, 16, 61), bArr4);
                        this.f1560.f1751.mo3460(bArr4);
                    } else {
                        m4134(2, 40);
                        throw new C0414(278, C0128.m3232(2717, 26, 6));
                    }
                } else {
                    b3 = b2;
                    if (c0510M5208.m5222()) {
                        if (c0510M5208.m5225()) {
                            iIntValue = C0160.m3449(((C0158) C0671.m5927(this.f1569)).f488);
                        } else if (vector7.size() != 0) {
                            iIntValue = ((Integer) vector7.get(0)).intValue();
                        } else {
                            m4134(2, 40);
                            throw new C0414(278, C0128.m3232(2807, 26, 91));
                        }
                        m4093(C0128.m3232(2833, 16, 6) + C0208.m3685(iIntValue));
                        AbstractC0453 abstractC0453M5096 = AbstractC0453.m5096();
                        ((C0160) abstractC0453M5096).m3458(iIntValue, false);
                        this.f1560.f1751 = abstractC0453M5096;
                    }
                }
                if (!this.f1581) {
                    bArrM4484 = C0308.m4227(32);
                }
                C0325 c03210 = this.f1560;
                c03210.f1741 = bArrM4484;
                C0567 c0568 = c03210.f1757;
                c0568.f3183 = c0510M5208.m5233(c0568.f3179);
                C0325 c03211 = this.f1560;
                c03211.f1757.f3182 = b3;
                C0567 c0569 = c03211.f1764;
                c0569.f3183 = c0510M5208.m5233(c0569.f3179);
                C0325 c03212 = this.f1560;
                c03212.f1764.f3182 = b3;
                c03212.m4329();
                m4144((C0670) null);
                return;
            }
            m4134(2, 40);
            throw new C0414(278, C0128.m3232(2661, 33, 54));
        }
        m4134(2, 40);
        throw new C0414(278, C0128.m3232(2267, 39, 91));
    }

    public final short m4089() {
        if (m4098()) {
            return (short) 768;
        }
        if (m4101()) {
            return (short) 769;
        }
        if (m4102()) {
            return (short) 770;
        }
        if (m4120() || m4123()) {
            return (short) 771;
        }
        throw new C0414(278, C0128.m3232(7989, 38, 0));
    }

    public static byte[] m4076(String str) {
        String[] strArrM3908 = C0259.m3908(str, ",", true, true);
        C0301 c0301 = new C0301();
        for (String str2 : strArrM3908) {
            String[] strArrM3909 = C0259.m3908(str2, "-", true, true);
            if (strArrM3909.length == 2) {
                String lowerCase = strArrM3909[0].trim().toLowerCase();
                String lowerCase2 = strArrM3909[1].trim().toLowerCase();
                int i = 4;
                int i2 = 255;
                if (lowerCase.equals(C0128.m3232(8339, 4, 105))) {
                    i = 0;
                } else if (lowerCase.equals(C0128.m3232(8343, 3, 82))) {
                    i = 1;
                } else if (lowerCase.equals(C0128.m3232(8346, 4, 43))) {
                    i = 2;
                } else if (lowerCase.equals(C0128.m3232(8350, 6, 107))) {
                    i = 3;
                } else if (!lowerCase.equals(C0128.m3232(8356, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
                    if (lowerCase.equals(C0128.m3232(8362, 6, 79))) {
                        i = 5;
                    } else if (lowerCase.equals(C0128.m3232(8368, 6, 80))) {
                        i = 6;
                    } else {
                        i = lowerCase.equals(C0128.m3232(8374, 3, 127)) ? 255 : -1;
                    }
                }
                if (lowerCase2.equals(C0128.m3232(8377, 9, 96))) {
                    i2 = 0;
                } else if (lowerCase2.equals(C0128.m3232(8386, 3, 7))) {
                    i2 = 1;
                } else if (lowerCase2.equals(C0128.m3232(8389, 3, 41))) {
                    i2 = 2;
                } else if (lowerCase2.equals(C0128.m3232(8392, 5, 2))) {
                    i2 = 3;
                } else if (!lowerCase2.equals(C0128.m3232(8397, 3, 114))) {
                    i2 = -1;
                }
                if (i >= 0 && i2 >= 0) {
                    c0301.m4180(new byte[]{(byte) i, (byte) i2});
                }
            }
        }
        return c0301.m4182();
    }

    public final void m4113(int i, String str) throws Exception {
        m4134(2, i);
        throw new C0414(0, str);
    }

    public static String m4077(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return "";
        }
        String[] strArrM3908 = C0259.m3908(strTrim, ",", true, false);
        for (int i = 0; i < strArrM3908.length; i++) {
            String[] strArrM3909 = C0259.m3908(strArrM3908[i], "-", true, false);
            if (strArrM3909.length == 2) {
                String lowerCase = strArrM3909[0].trim().toLowerCase();
                String lowerCase2 = strArrM3909[1].trim().toLowerCase();
                if ((!lowerCase.equals(C0128.m3232(9305, 4, 65)) && !lowerCase.equals(C0128.m3232(9309, 3, 41)) && !lowerCase.equals(C0128.m3232(9312, 4, 118)) && !lowerCase.equals(C0128.m3232(9316, 6, 75)) && !lowerCase.equals(C0128.m3232(9322, 6, 94)) && !lowerCase.equals(C0128.m3232(9328, 6, 92)) && !lowerCase.equals(C0128.m3232(9334, 6, 116)) && !lowerCase.equals(C0128.m3232(9340, 3, 62))) || (!lowerCase2.equals(C0128.m3232(9343, 9, 123)) && !lowerCase2.equals(C0128.m3232(9352, 3, 3)) && !lowerCase2.equals(C0128.m3232(9355, 3, 113)) && !lowerCase2.equals(C0128.m3232(9358, 5, SyslogConstants.LOG_CLOCK)) && !lowerCase2.equals(C0128.m3232(9363, 3, 56)))) {
                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0128.m3232(9366, 40, 52)), strArrM3908[i], "'."));
                }
            } else {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0128.m3232(9406, 40, 116)), strArrM3908[i], "'."));
            }
        }
        return strTrim;
    }

    public final int m4110(byte[] bArr, int i, int i2) {
        int i3;
        InterfaceC0121 interfaceC0121 = this.f1576;
        if (interfaceC0121 == null) {
            return i2;
        }
        C0521.C0524 c0524 = ((C0521) interfaceC0121).f3000;
        int i4 = c0524.f3066;
        int i5 = c0524.f3060;
        if (i4 >= i5) {
            int length = c0524.f3069.length - i4;
            if (i5 == 0) {
                length--;
            }
            if (length == 0) {
                return 0;
            }
            int iMin = Math.min(length, i2);
            System.arraycopy(bArr, i, c0524.f3069, c0524.f3066, iMin);
            C0521.this.f3017.m5633(1, c0524.f3069, c0524.f3066, iMin);
            c0524.f3066 = c0524.m5336(c0524.f3066, iMin);
            i3 = i2 - iMin;
            i += iMin;
            c0524.f3056 = true;
        } else {
            i3 = i2;
        }
        int i6 = c0524.f3066;
        int i7 = c0524.f3060;
        if (i6 < i7) {
            int iMin2 = Math.min((i7 - i6) - 1, i3);
            System.arraycopy(bArr, i, c0524.f3069, c0524.f3066, iMin2);
            C0521.this.f3017.m5633(1, c0524.f3069, c0524.f3066, iMin2);
            c0524.f3066 = c0524.m5336(c0524.f3066, iMin2);
            i3 -= iMin2;
            c0524.f3056 = true;
        }
        return i2 - i3;
    }

    public final void m4117(C0382 c0382, int i) throws Exception {
        boolean z;
        short s;
        byte[] bArr;
        String strM3232;
        m4093(C0128.m3232(3351, 28, 54));
        int i2 = 17;
        if (this.f1572 == 0) {
            short sM4483 = c0382.m4483();
            if ((sM4483 == 768 && m4098()) || ((sM4483 == 769 && m4101()) || ((sM4483 == 770 && m4102()) || ((sM4483 == 771 && m4120()) || (m4123() && (C0325.m4316(sM4483) || sM4483 == 771)))))) {
                this.f1560.f1766 = c0382.m4484(32);
                m4137(C0128.m3232(3503, 12, 67), this.f1560.f1766);
                if (C0259.m3896(this.f1560.f1766, C0208.f742)) {
                    C0325 c0325 = this.f1560;
                    if (!c0325.f1742) {
                        c0325.f1742 = true;
                        z = true;
                    } else {
                        m4113(10, C0128.m3232(3515, 42, 10));
                        throw null;
                    }
                } else {
                    z = false;
                }
                int i3 = i - 34;
                this.f1560.f1746 = sM4483;
                if (sM4483 == 771) {
                    int[] iArr = {sM4483};
                    int i4 = c0382.f1970;
                    try {
                        try {
                            c0382.m4484(c0382.m4496());
                            c0382.m4483();
                            c0382.m4496();
                            if (c0382.m4486() > 2) {
                                int iM4483 = c0382.m4483() + c0382.f1970;
                                while (true) {
                                    if (c0382.f1970 < iM4483) {
                                        short sM4484 = c0382.m4483();
                                        s = UShort.MAX_VALUE;
                                        try {
                                            short sM4485 = c0382.m4483();
                                            if (sM4484 == 43) {
                                                iArr[0] = c0382.m4483();
                                                c0382.f1970 = i4;
                                                sM4483 = (short) (iArr[0] & 65535);
                                                this.f1560.f1746 = sM4483;
                                            } else {
                                                c0382.m4484(sM4485);
                                            }
                                        } catch (Exception unused) {
                                            c0382.f1970 = i4;
                                        }
                                    } else {
                                        s = UShort.MAX_VALUE;
                                        c0382.f1970 = i4;
                                    }
                                }
                            } else {
                                s = UShort.MAX_VALUE;
                                c0382.f1970 = i4;
                            }
                        } catch (Throwable th) {
                            c0382.f1970 = i4;
                            throw th;
                        }
                    } catch (Exception unused2) {
                    }
                } else {
                    s = UShort.MAX_VALUE;
                }
                boolean zM4316 = C0325.m4316(sM4483);
                this.f1581 = zM4316;
                if (zM4316) {
                    Throwable th2 = null;
                    int i5 = 0;
                    while (i5 < this.f1554.size()) {
                        if (sM4483 == ((Integer) this.f1554.get(i5)).intValue()) {
                            m4093(m4083((int) sM4483));
                            this.f1560.f1741 = c0382.m4484(c0382.m4496());
                            int length = i3 - (this.f1560.f1741.length + 1);
                            short sM4486 = c0382.m4483();
                            int i6 = 0;
                            while (true) {
                                int[] iArr2 = this.f1582;
                                if (i6 < iArr2.length) {
                                    if (sM4486 == iArr2[i6]) {
                                        m4093(C0128.m3232(3594, 23, 21) + C0510.m5201(sM4486));
                                        this.f1560.f1757.m5517(sM4486);
                                        this.f1560.f1764.m5517(sM4486);
                                        byte bM4496 = c0382.m4496();
                                        int i7 = length - 3;
                                        C0325 c0326 = this.f1560;
                                        c0326.f1757.f3182 = bM4496;
                                        c0326.f1764.f3182 = bM4496;
                                        if (i7 > 0) {
                                            int iM4484 = c0382.m4483();
                                            byte[] bArr2 = th2;
                                            while (iM4484 > 0) {
                                                short sM4487 = c0382.m4483();
                                                short sM4488 = c0382.m4483();
                                                if (sM4487 == 41) {
                                                    c0382.m4483();
                                                    m4113(47, C0128.m3232(3796, 31, 53));
                                                    throw th2;
                                                }
                                                if (sM4487 == 44) {
                                                    this.f1560.f1740 = c0382.m4484(c0382.m4483());
                                                } else if (sM4487 != 51) {
                                                    c0382.m4484(sM4488);
                                                } else if (z) {
                                                    short sM4489 = c0382.m4483();
                                                    String[] strArrM3908 = C0259.m3908(f1544, ",", true, false);
                                                    int i8 = 0;
                                                    while (true) {
                                                        if (i8 < strArrM3908.length) {
                                                            if (sM4489 == C0208.m3684(strArrM3908[i8])) {
                                                                this.f1560.f1752 = sM4489;
                                                                break;
                                                            }
                                                            i8++;
                                                        } else {
                                                            m4113(50, C0128.m3232(3617, 81, i2) + ((int) sM4489));
                                                            throw th2;
                                                        }
                                                    }
                                                } else if (this.f1560.f1751 == null) {
                                                    short sM44810 = c0382.m4483();
                                                    m4093(C0128.m3232(3747, 16, 99) + C0208.m3685(sM44810));
                                                    byte[] bArrM4484 = c0382.m4484(c0382.m4483());
                                                    m4137(C0128.m3232(3763, 9, 104), bArrM4484);
                                                    for (int i9 = 0; i9 < this.f1579.size(); i9++) {
                                                        AbstractC0453 abstractC0453 = (AbstractC0453) this.f1579.get(i9);
                                                        if (abstractC0453.f2591 == sM44810) {
                                                            this.f1560.f1751 = abstractC0453;
                                                            break;
                                                        }
                                                    }
                                                    if (this.f1560.f1751 == null) {
                                                        m4113(47, C0128.m3232(3772, 24, 53));
                                                        throw th2;
                                                    }
                                                    bArr2 = bArrM4484;
                                                } else {
                                                    m4113(47, C0128.m3232(3698, 49, 39));
                                                    throw th2;
                                                }
                                                iM4484 -= sM4488 + 4;
                                                i2 = 17;
                                                bArr2 = bArr2;
                                            }
                                            if (!z) {
                                                m4137(C0128.m3232(3827, 9, 66), bArr2);
                                                this.f1560.f1751.mo3460(bArr2);
                                                m4091();
                                            }
                                        }
                                        if (z) {
                                            C0325 c0327 = this.f1560;
                                            c0327.f1741 = th2;
                                            c0327.m4329();
                                            C0382 c0383 = this.f1602;
                                            byte[] bArr3 = c0383.f1972;
                                            int length2 = bArr3.length - (c0382.f1971 - 5);
                                            byte[] bArrM4339 = this.f1560.m4339(c0383.m4518(0, length2));
                                            this.f1602.m4505();
                                            this.f1602.m4487(254);
                                            this.f1602.m4500(new byte[2]);
                                            this.f1602.m4487(bArrM4339.length);
                                            this.f1602.m4500(bArrM4339);
                                            this.f1602.m4501(bArr3, length2, bArr3.length - length2);
                                            m4092();
                                            return;
                                        }
                                        this.f1572 = 30;
                                        return;
                                    }
                                    i6++;
                                    i2 = 17;
                                    th2 = null;
                                } else {
                                    m4113(47, C0128.m3232(3573, 21, 44));
                                    throw null;
                                }
                            }
                        } else {
                            i5++;
                            i2 = 17;
                        }
                    }
                    m4113(70, C0128.m3232(3557, 16, 80));
                    throw null;
                }
                if (m4123()) {
                    if (sM4483 == 771) {
                        bArr = C0208.f741;
                        strM3232 = C0128.m3232(3836, 34, 122);
                    } else {
                        bArr = C0208.f748;
                        strM3232 = C0128.m3232(3870, 34, 68);
                    }
                    if (bArr != null) {
                        int length3 = this.f1560.f1766.length - bArr.length;
                        int length4 = bArr.length - 1;
                        while (length4 >= 0 && bArr[length4] == this.f1560.f1766[length3 + length4]) {
                            length4--;
                        }
                        if (length4 == 0) {
                            m4113(47, strM3232);
                            throw null;
                        }
                    }
                }
                byte[] bArrM4485 = c0382.m4484(c0382.m4496());
                int length5 = i3 - (bArrM4485.length + 1);
                int iM4485 = c0382.m4483() & s;
                byte bM4497 = c0382.m4496();
                int i10 = length5 - 3;
                C0325 c0328 = this.f1560;
                c0328.f1741 = bArrM4485;
                c0328.f1757.m5517(iM4485);
                C0325 c0329 = this.f1560;
                c0329.f1757.f3182 = bM4497;
                c0329.f1764.m5517(iM4485);
                C0325 c03210 = this.f1560;
                c03210.f1764.f3182 = bM4497;
                c03210.m4329();
                if (i10 > 0) {
                    int iM4486 = c0382.m4483();
                    while (iM4486 > 0) {
                        short sM44811 = c0382.m4483();
                        short sM44812 = c0382.m4483();
                        if (sM44811 != 16) {
                            c0382.m4484(sM44812);
                        } else {
                            int iM4487 = c0382.m4483();
                            while (iM4487 > 0) {
                                byte bM4498 = c0382.m4496();
                                if (this.f1561.length() > 0) {
                                    this.f1561 = C0663.m5888(new StringBuilder(), this.f1561, ",");
                                }
                                this.f1561 = C0259.m3892(c0382.m4484(bM4498));
                                iM4487 -= bM4498 + 1;
                            }
                        }
                        iM4486 -= sM44812 + 4;
                    }
                }
                m4093(m4083((int) this.f1560.f1746));
                m4093(C0128.m3232(3904, 9, 49) + this.f1560.f1757.f3183 + C0128.m3232(3913, 13, 98));
                this.f1572 = 1;
                this.f1575 = false;
                C0670 c0670 = this.f1580;
                if (c0670 == null || bArrM4485.length <= 0 || !c0670.m5901(bArrM4485)) {
                    return;
                }
                this.f1572 = 8;
                m4138(this.f1560);
                C0325 c03211 = this.f1553;
                if (c03211 == null) {
                    this.f1553 = this.f1560;
                } else {
                    c03211.m4333(this.f1560);
                }
                this.f1575 = true;
                m4093(C0128.m3232(3926, 30, 23));
                return;
            }
            throw new C0414(276, C0128.m3232(3390, 113, 4));
        }
        m4106(C0128.m3232(3379, 11, 17));
        throw null;
    }

    public final void m4116(C0382 c0382) throws Exception {
        String strM3232;
        byte[] bArrM4300;
        m4093(C0128.m3232(4095, 34, 86));
        if (this.f1572 == 4) {
            String strM3679 = "";
            if (this.f1560.m4317() || this.f1560.m4318()) {
                short sM4483 = c0382.m4483();
                if (this.f1560.m4318()) {
                    this.f1560.f1754 = sM4483;
                } else {
                    int i = (65280 & sM4483) >> 8;
                    if (i != 0) {
                        if (i == 1) {
                            strM3232 = C0128.m3232(8400, 3, 65);
                        } else if (i == 2) {
                            strM3232 = C0128.m3232(8403, 4, 106);
                        } else if (i == 3) {
                            strM3232 = C0128.m3232(8407, 6, 17);
                        } else if (i == 4) {
                            strM3232 = C0128.m3232(8413, 6, 57);
                        } else if (i == 5) {
                            strM3232 = C0128.m3232(8419, 6, 10);
                        } else if (i == 6) {
                            strM3232 = C0128.m3232(8425, 6, 44);
                        }
                        strM3679 = strM3232;
                    }
                }
                if (this.f1600) {
                    m4114(C0128.m3232(4146, 34, 31) + C0208.m3681(sM4483));
                }
            }
            byte[] bArrM4484 = c0382.m4484(c0382.m4483());
            m4137(C0128.m3232(4180, 9, 47), bArrM4484);
            byte[] bArrM4126 = m4126();
            m4137(C0128.m3232(4189, 24, SyslogConstants.LOG_CLOCK), bArrM4126);
            boolean z = this.f1560.f1747.m4371() == 1;
            if (strM3679.length() == 0) {
                String strM3233 = z ? C0128.m3232(4213, 7, 2) : C0128.m3232(4220, 4, 80);
                if (z && this.f1560.f1748 == 1) {
                    strM3233 = C0128.m3232(4224, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
                }
                strM3679 = strM3233;
                if (z && this.f1560.f1748 == 2) {
                    strM3679 = C0128.m3232(4230, 6, 113);
                }
            }
            if (this.f1560.m4321()) {
                bArrM4300 = m4157((byte[]) null, this.f1560.f1743, bArrM4126);
            } else {
                if (this.f1560.m4318()) {
                    strM3679 = C0208.m3679(this.f1560.f1754);
                    bArrM4300 = this.f1560.m4340(bArrM4126, false);
                } else {
                    bArrM4300 = C0308.m4214(strM3679).m4300(bArrM4126);
                }
                m4137(C0128.m3232(4236, 8, 9), bArrM4300);
            }
            byte[] bArr = bArrM4300;
            String str = strM3679;
            C0325 c0325 = this.f1560;
            if (c0325.m4336(c0325.f1747, bArr, bArrM4484, str, c0325.m4335(c0325.f1754))) {
                this.f1572 = 8;
                return;
            } else {
                m4093(C0128.m3232(4244, 52, 50));
                throw new C0414(276, C0128.m3232(4296, 45, 35));
            }
        }
        m4106(C0128.m3232(4129, 17, 59));
        throw null;
    }

    public final void m4106(String str) throws Exception {
        m4134(2, 10);
        m4093(C0128.m3232(6282, 11, 89) + str + C0128.m3232(6293, 38, 65));
        throw new C0414(276, str);
    }

    public String m4105() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C0128.m3232(8519, 23, 62));
        if (m4123()) {
            stringBuffer.append(C0128.m3232(8542, 7, 39));
        }
        if (m4120()) {
            stringBuffer.append(C0128.m3232(8549, 7, 92));
        }
        if (m4102()) {
            stringBuffer.append(C0128.m3232(8556, 7, 99));
        }
        if (m4101()) {
            stringBuffer.append(C0128.m3232(8563, 7, 95));
        }
        if (m4098()) {
            stringBuffer.append(C0128.m3232(8570, 6, 76));
        }
        return stringBuffer.toString();
    }

    public final void m4115(C0325 c0325) throws Exception {
        byte[] bArrM4338 = c0325.m4338(true);
        C0382 c0382M4129 = m4129(Ascii.DC4);
        byte[] bArrM4153 = m4153(c0325, bArrM4338, true);
        this.f1558 = bArrM4153;
        c0382M4129.m4500(bArrM4153);
        m4088(c0382M4129);
        m4093(C0128.m3232(6673, 21, 74));
    }

    public final void m4118(byte[] bArr) throws Exception {
        byte[] bArrM4341;
        m4137(C0128.m3232(7496, 17, 75), bArr);
        C0325 c0325 = this.f1560;
        if (c0325.m4324()) {
            byte[] bArr2 = C0208.f765;
            byte[] bArr3 = this.f1560.f1749;
            m4137(C0128.m3232(7553, 13, 53), bArr3);
            byte[] bArr4 = this.f1560.f1766;
            m4137(C0128.m3232(7566, 13, 19), bArr4);
            bArrM4341 = this.f1560.m4341(bArr, C0208.m3688(bArr2, bArr3, bArr4), 48);
        } else {
            byte[] bArr5 = this.f1560.f1749;
            m4137(C0128.m3232(7579, 13, 60), bArr5);
            byte[] bArr6 = this.f1560.f1766;
            m4137(C0128.m3232(7592, 13, 12), bArr6);
            bArrM4341 = this.f1560.m4341(bArr, C0208.m3687(bArr5, bArr6), 48);
        }
        c0325.f1743 = bArrM4341;
        m4137(C0128.m3232(7513, 13, 53), this.f1560.f1743);
        m4093(C0128.m3232(7526, 27, 73));
    }

    public static byte[] m4080(String str, byte[] bArr) throws C0537 {
        return C0308.m4214(str).m4300(bArr);
    }

    public final short m4111(short s) throws Exception {
        if (s >= 768) {
            if (s > 771) {
                s = 771;
            }
            if (s > 770 && !m4120() && !m4123()) {
                s = 770;
            }
            if (s > 769 && !m4102() && !m4120() && !m4123()) {
                s = 769;
            }
            if (s > 768 && !m4101() && !m4102() && !m4120() && !m4123()) {
                s = 768;
            }
            if (s == 768 && !m4098()) {
                m4134(2, 40);
                throw new C0414(276, C0128.m3232(8101, 80, 113));
            }
            if (s >= m4089()) {
                return s;
            }
            m4134(2, 40);
            throw new C0414(276, C0128.m3232(8181, 13, 35) + m4127(s) + C0128.m3232(8194, 46, 32) + m4127(m4089()));
        }
        throw new C0414(278, C0128.m3232(8080, 21, 0));
    }

    public void m4114(String str) {
        if (this.f1600) {
            m4093("==" + str);
        }
    }

    public final void m4141(C0382 c0382, int i, byte[] bArr, int i2) {
        c0382.m4513(i, 2);
        c0382.m4489(bArr.length + i2);
        if (i2 == 1) {
            c0382.m4487(bArr.length);
        } else {
            c0382.m4489(bArr.length);
        }
        c0382.m4500(bArr);
    }

    public void m4147(byte[] bArr, int i, int i2) throws C0414 {
        C0382 c0382;
        InterfaceC0121 interfaceC0121;
        if (i2 == 0) {
            return;
        }
        synchronized (this.f1566) {
            byte[] bArr2 = this.f1587;
            int length = bArr2 != null ? bArr2.length : 0;
            c0382 = new C0382(length + i2);
            if (length > 0) {
                c0382.m4500(this.f1587);
            }
            c0382.m4501(bArr, i, i2);
        }
        try {
            m4107(c0382);
            e = null;
        } catch (Exception e) {
            e = e;
        }
        if (e != null) {
            m4136(e);
            if (e instanceof C0414) {
                throw ((C0414) e);
            }
            throw new C0414(e);
        }
        if (this.f1572 != 20 || (interfaceC0121 = this.f1576) == null) {
            return;
        }
        ((C0521) interfaceC0121).m5298(true);
    }

    public void m4148(byte[] bArr, int i, int i2, int i3) throws C0414 {
        InterfaceC0121 interfaceC0121;
        synchronized (this.f1593) {
            if (this.f1572 == 20 && (interfaceC0121 = this.f1576) != null) {
                ((C0521) interfaceC0121).m5315(bArr, i, i2, i3, i2);
                return;
            }
            while (true) {
                int i4 = this.f1572;
                if (i4 == 10 || i4 == 20) {
                    break;
                } else if (this.f1552 != null) {
                    ((C0521) this.f1576).f3017.mo5626();
                }
            }
            try {
                m4119(bArr, i, i2, i3);
            } catch (Exception e) {
                m4136(e);
                if (e instanceof C0414) {
                    throw ((C0414) e);
                }
                throw new C0414(e);
            }
        }
    }

    public final AbstractC0317 m4128(String str) throws C0537 {
        C0325 c0325 = this.f1553;
        boolean z = true;
        boolean z2 = (c0325 == null || !c0325.m4324() || this.f1553.m4321() || this.f1553.m4317()) ? false : true;
        if (z2) {
            z = z2;
        } else {
            C0325 c0326 = this.f1560;
            if (c0326 == null || !c0326.m4324() || this.f1560.m4321() || this.f1560.m4317()) {
                z = false;
            }
        }
        if (z) {
            return C0308.m4214(str);
        }
        return C0308.m4217(str);
    }

    public final void m4135(int i, String str) {
        InterfaceC0121 interfaceC0121 = this.f1576;
        if (interfaceC0121 != null) {
            new C0414(null, i, str);
        }
    }

    public final void m4136(Exception exc) {
        C0414 c0414;
        if (exc instanceof C0414) {
            c0414 = (C0414) exc;
        } else {
            c0414 = new C0414(exc);
        }
        InterfaceC0121 interfaceC0121 = this.f1576;
        if (interfaceC0121 != null) {
        }
        if (this.f1572 != 10) {
            m4143(c0414);
        }
    }

    public final void m4143(C0414 c0414) {
        C0521.C0523 c0523;
        InterfaceC0125 interfaceC0125 = this.f1552;
        if (interfaceC0125 != null && (interfaceC0125 instanceof C0147)) {
            this.f1571 = c0414;
            ((C0147) interfaceC0125).m3291(c0414);
        }
        InterfaceC0121 interfaceC0121 = this.f1576;
        if (interfaceC0121 == null || (c0523 = ((C0521) interfaceC0121).f3012) == null) {
            return;
        }
        c0523.f3051 = true;
    }

    public final void m4130() {
        this.f1574 = new C0382(16384);
    }

    public final void m4132(byte b, short s, C0382 c0382) throws Exception {
        if (this.f1568) {
            m4090(c0382);
            if (this.f1573) {
                m4142(c0382, (C0382) null, true);
                return;
            }
            return;
        }
        m4133(b, s, c0382.f1972, 0, c0382.f1971);
    }

    public final void m4133(byte b, short s, byte[] bArr, int i, int i2) throws Exception {
        boolean z;
        short s2 = this.f1581 ? (short) 771 : s;
        C0382 c0382 = new C0382();
        c0382.m4509(b);
        c0382.m4513(s2, 2);
        c0382.m4513(i2, 2);
        c0382.m4501(bArr, i, i2);
        C0325 c0325 = this.f1553;
        if (c0325 != null && c0325.f1764.f3180) {
            c0382.m4493();
            byte bM4496 = c0382.m4496();
            short sM4483 = c0382.m4483();
            byte b2 = this.f1581 ? (byte) 23 : bM4496;
            short sM4484 = c0382.m4483();
            C0382 c0383 = new C0382();
            int iM5220 = this.f1553.f1764.f3183.m5220();
            byte[] bArrM4484 = c0382.m4484(sM4484);
            if (this.f1581) {
                z = true;
                m4137(C0128.m3232(SyslogConstants.LOG_LOCAL5, 14, 50), bArrM4484);
                byte[] bArr2 = new byte[bArrM4484.length + 1];
                System.arraycopy(bArrM4484, 0, bArr2, 0, bArrM4484.length);
                bArr2[bArrM4484.length] = bM4496;
                m4137(C0128.m3232(182, 25, 55), bArr2);
                bArrM4484 = bArr2;
            } else {
                z = true;
            }
            C0382 c0384 = new C0382();
            c0384.m4509(b2);
            c0384.m4513(sM4483, 2);
            if (this.f1553.f1764.f3183.m5228()) {
                C0382 c0385 = new C0382();
                C0382 c0386 = new C0382();
                long jM5514 = this.f1553.f1764.m5514();
                if (this.f1581) {
                    c0385.m4500(m4155(this.f1553.f1764.m5515(), jM5514));
                    c0386.m4509(b2);
                    c0386.m4515(sM4483);
                    c0386.m4489(this.f1553.f1764.f3183.m5216() + bArrM4484.length);
                } else {
                    c0385.m4500(this.f1553.f1764.m5515());
                    c0385.m4512(jM5514);
                    c0386.m4512(jM5514);
                    c0386.m4509(b2);
                    c0386.m4515(sM4483);
                    c0386.m4489(sM4484);
                }
                this.f1553.f1764.f3183.m5235(c0385.m4502(), c0386.m4502(), (byte[]) null);
                if (this.f1600) {
                    m4137(C0128.m3232(207, 18, 17), c0385.m4502());
                    m4137(C0128.m3232(JfifUtil.MARKER_APP1, 28, 122), c0386.m4502());
                    m4137(C0128.m3232(253, 16, 75), C0308.m4230(this.f1553.f1764.f3183.f2953));
                }
                byte[] bArrM5217 = this.f1553.f1764.f3183.m5217(bArrM4484);
                m4137(C0128.m3232(269, 23, 65), bArrM5217);
                if (this.f1581) {
                    c0384.m4489(bArrM5217.length);
                    c0384.m4500(bArrM5217);
                } else {
                    c0384.m4489(bArrM5217.length + 8);
                    c0384.m4512(jM5514);
                    c0384.m4500(bArrM5217);
                }
                m4090(c0384);
            } else {
                if (!this.f1553.f1764.f3183.m5236() && this.f1553.f1746 >= 770) {
                    c0383.m4500(C0308.m4227(iM5220));
                }
                c0383.m4500(bArrM4484);
                c0383.m4500(m4154(this.f1553.f1764, bArrM4484, 0, bArrM4484.length, this.f1553.f1764.m5514(), b2));
                if (!this.f1553.f1764.f3183.m5236()) {
                    int i3 = iM5220 - ((c0383.f1971 + 1) % iM5220);
                    if (i3 == iM5220) {
                        i3 = 0;
                    }
                    for (int i4 = 0; i4 < i3; i4++) {
                        c0383.m4487(i3);
                    }
                    c0383.m4487(i3);
                }
                byte[] bArrM4502 = c0383.m4502();
                m4137(C0128.m3232(292, 5, 33), bArrM4502);
                byte[] bArrM5218 = this.f1553.f1764.f3183.m5217(bArrM4502);
                m4137(C0128.m3232(297, 9, 17), bArrM5218);
                c0384.m4489(bArrM5218.length);
                c0384.m4500(bArrM5218);
                m4090(c0384);
            }
            if (this.f1573) {
                m4142(c0382, c0384, z);
                return;
            }
            return;
        }
        m4090(c0382);
        if (this.f1573) {
            m4142(c0382, (C0382) null, true);
        }
    }

    public final C0382 m4129(byte b) {
        C0382 c0382 = new C0382();
        c0382.m4509(b);
        c0382.m4495(0);
        return c0382;
    }

    public static int m4082(C0382 c0382, int i, int i2, Vector vector) {
        int iM4496;
        int i3 = 0;
        if (i == 1) {
            iM4496 = c0382.m4496();
        } else if (i == 2) {
            iM4496 = c0382.m4483();
        } else if (i == 3) {
            iM4496 = c0382.m4491();
        } else {
            if (i != 4) {
                throw new C0414(C0128.m3232(306, 18, 121) + i);
            }
            iM4496 = c0382.m4506();
        }
        while (i3 < iM4496) {
            if (i2 == 1) {
                vector.add(Integer.valueOf(c0382.m4496()));
            } else if (i2 == 2) {
                vector.add(Integer.valueOf(c0382.m4483()));
            } else if (i2 == 3) {
                vector.add(Integer.valueOf(c0382.m4491()));
            } else {
                if (i2 != 4) {
                    throw new C0414(C0128.m3232(324, 16, 88) + i2);
                }
                vector.add(Integer.valueOf(c0382.m4506()));
            }
            i3 += i2;
        }
        return i3 + i;
    }

    public static int m4081(C0382 c0382, int i, int i2, int i3, Vector vector, Vector vector2) {
        int iM4496;
        int iM4497;
        if (i == 1) {
            iM4496 = c0382.m4496();
        } else if (i == 2) {
            iM4496 = c0382.m4483();
        } else if (i == 3) {
            iM4496 = c0382.m4491();
        } else {
            if (i != 4) {
                throw new C0414(C0128.m3232(340, 18, 52) + i);
            }
            iM4496 = c0382.m4506();
        }
        int i4 = i;
        while (i4 < iM4496 + i) {
            if (i2 != 0) {
                if (i2 == 1) {
                    vector.add(Integer.valueOf(c0382.m4496()));
                } else if (i2 == 2) {
                    vector.add(Integer.valueOf(c0382.m4483()));
                } else if (i2 == 3) {
                    vector.add(Integer.valueOf(c0382.m4491()));
                } else {
                    if (i2 != 4) {
                        throw new C0414(C0128.m3232(358, 17, 62) + i2);
                    }
                    vector.add(Integer.valueOf(c0382.m4506()));
                }
            }
            int i5 = i4 + i2;
            if (i3 == 1) {
                iM4497 = c0382.m4496();
            } else if (i3 == 2) {
                iM4497 = c0382.m4483();
            } else if (i3 == 3) {
                iM4497 = c0382.m4491();
            } else {
                if (i3 != 4) {
                    throw new C0414(C0128.m3232(375, 20, 35) + i3);
                }
                iM4497 = c0382.m4506();
            }
            i4 = i5 + i3 + iM4497;
            vector2.add(c0382.m4484(iM4497));
        }
        return i4;
    }

    public final void m4131(byte b, C0382 c0382, int i, int i2) {
        if (b == 0) {
            return;
        }
        this.f1602.m4501(c0382.f1972, i, i2);
    }

    public byte[] m4155(byte[] bArr, long j) {
        byte[] bArrM3845 = C0259.m3845(bArr);
        for (int i = 0; i < 8; i++) {
            int length = (bArrM3845.length - i) - 1;
            bArrM3845[length] = (byte) (bArrM3845[length] ^ ((byte) ((j >> (i * 8)) & 255)));
        }
        return bArrM3845;
    }

    public final void m4145(boolean z) throws Exception {
        byte[] bArrM4126 = m4126();
        m4137(C0128.m3232(1565, 23, 82), bArrM4126);
        byte[] bArrM4339 = this.f1553.m4339(bArrM4126);
        m4137("h4", bArrM4339);
        C0325 c0325 = this.f1553;
        C0510 c0510 = (z ? c0325.f1764 : c0325.f1757).f3183;
        this.f1556 = C0510.m5212(c0510.f2954, this.f1553.f1743, C0208.f736, bArrM4339, C0208.f743);
        m4137(C0128.m3232(1588, 33, 95), this.f1556);
        this.f1570 = C0510.m5212(c0510.f2954, this.f1553.f1743, C0208.f758, bArrM4339, C0208.f743);
        m4137(C0128.m3232(1621, 33, WebSocketProtocol.PAYLOAD_SHORT), this.f1570);
        C0325 c0326 = this.f1553;
        c0326.f1765 = C0510.m5212(c0510.f2954, c0326.f1743, C0208.f770, bArrM4339, C0208.f743);
        m4137(C0128.m3232(1654, 26, 36), this.f1553.f1765);
        this.f1553.f1762 = C0510.m5211(c0510.f2954, this.f1556, C0259.m3902(C0128.m3232(1680, 3, 80)), C0320.f1706, c0510.f2959, C0208.f743);
        m4137(C0128.m3232(1683, 30, 37), this.f1553.f1762);
        this.f1553.f1755 = C0510.m5211(c0510.f2954, this.f1556, C0259.m3902(HeaderParameterNames.INITIALIZATION_VECTOR), C0320.f1706, c0510.m5220(), C0208.f743);
        m4137(C0128.m3232(1713, 29, 74), this.f1553.f1755);
        this.f1553.f1758 = C0510.m5211(c0510.f2954, this.f1570, C0259.m3902(C0128.m3232(1742, 3, 97)), C0320.f1706, c0510.f2959, C0208.f743);
        m4137(C0128.m3232(1745, 30, 64), this.f1553.f1758);
        this.f1553.f1745 = C0510.m5211(c0510.f2954, this.f1570, C0259.m3902(HeaderParameterNames.INITIALIZATION_VECTOR), C0320.f1706, c0510.m5220(), C0208.f743);
        m4137(C0128.m3232(1775, 29, WebSocketProtocol.PAYLOAD_SHORT), this.f1553.f1745);
    }

    public static Vector m4086(C0335 c0335, String str) {
        int i = 0;
        String[] strArrM3908 = C0259.m3908(str, ",", true, false);
        int length = strArrM3908.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < strArrM3908.length; i2++) {
            iArr[i2] = C0208.m3683(strArrM3908[i2]);
        }
        Vector vector = new Vector();
        int iM4371 = c0335 != null ? c0335.m4371() : 0;
        if (iM4371 == 1) {
            while (i < length) {
                int i3 = iArr[i];
                if (i3 == 1025 || i3 == 1281 || i3 == 1537 || i3 == 2052 || i3 == 2053 || i3 == 2054) {
                    vector.add(Integer.valueOf(i3));
                }
                i++;
            }
        } else if (iM4371 == 3) {
            int i4 = ((C0158) C0671.m5927(c0335)).f488;
            while (i < length) {
                int i5 = iArr[i];
                if (i4 == 0 && i5 == 1027) {
                    vector.add(Integer.valueOf(i5));
                } else if (i4 == 1 && i5 == 1283) {
                    vector.add(Integer.valueOf(i5));
                } else if (i4 == 2 && i5 == 1539) {
                    vector.add(Integer.valueOf(i5));
                }
                i++;
            }
        } else if (iM4371 == 4) {
            int i6 = ((C0158) C0671.m5908(c0335)).f488;
            while (i < length) {
                int i7 = iArr[i];
                if (i6 == 3 && i7 == 2055) {
                    vector.add(Integer.valueOf(i7));
                } else if (i6 == 4 && i7 == 2056) {
                    vector.add(Integer.valueOf(i7));
                }
                i++;
            }
        }
        return vector;
    }

    public final void m4144(C0670 c0670) throws Exception {
        C0325 c0325 = this.f1560;
        boolean zM4316 = C0325.m4316(c0325.f1746);
        C0382 c0382M4129 = m4129((byte) 2);
        if (zM4316) {
            c0382M4129.m4489(771);
        } else {
            c0382M4129.m4515(c0325.f1746);
        }
        c0382M4129.m4500(c0325.f1766);
        c0382M4129.m4487(c0325.f1741.length);
        c0382M4129.m4500(c0325.f1741);
        int i = c0325.f1757.f3183.f2956;
        c0382M4129.m4489(i);
        C0382 c0382 = new C0382();
        if (this.f1581) {
            c0382M4129.m4487(c0325.f1757.f3182);
            c0382.m4489(51);
            C0382 c0383 = new C0382();
            c0383.m4489(c0325.f1751.f2591);
            byte[] bArrMo3451 = c0325.f1751.mo3451();
            c0383.m4489(bArrMo3451.length);
            c0383.m4500(bArrMo3451);
            c0382.m4489(c0383.f1971);
            c0382.m4500(c0383.m4502());
            c0383.m4505();
            c0383.m4515(c0325.f1746);
            c0382.m4489(43);
            c0382.m4489(c0383.f1971);
            c0382.m4500(c0383.m4502());
        } else {
            c0382M4129.m4487(c0325.f1757.f3182);
            if (C0510.m5202(i)) {
                C0382 c0384 = new C0382();
                int i2 = 0;
                while (true) {
                    int[] iArr = f1545;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    c0384.m4487(iArr[i2]);
                    i2++;
                }
                m4141(c0382, 11, c0384.m4502(), 1);
            }
        }
        int i3 = c0382.f1971;
        if (i3 > 0) {
            c0382M4129.m4489(i3);
            c0382M4129.m4500(c0382.m4502());
        }
        m4088(c0382M4129);
        if (this.f1600) {
            m4137(C0128.m3232(6414, 11, 115), c0382M4129.m4502());
        }
        m4093(C0128.m3232(6425, 24, 113));
        int i4 = 8;
        if (this.f1581) {
            m4091();
            C0382 c0382M41210 = m4129((byte) 8);
            C0382 c0385 = new C0382();
            c0382M41210.m4489(c0385.f1971);
            c0382M41210.m4500(c0385.m4502());
            m4088(c0382M41210);
            m4093(C0128.m3232(3024, 33, 46));
            if (this.f1567 && !this.f1560.f1757.f3183.m5229()) {
                C0382 c0382M41211 = m4129(Ascii.CR);
                byte[] bArr = this.f1560.f1761;
                int length = bArr != null ? bArr.length : 0;
                c0382M41211.m4487(length);
                if (length > 0) {
                    c0382M41211.m4500(this.f1560.f1761);
                }
                C0382 c0386 = new C0382();
                c0386.m4489(13);
                String[] strArrM3908 = C0259.m3908(this.f1577, ",", true, false);
                c0386.m4489((strArrM3908.length * 2) + 2);
                c0386.m4489(strArrM3908.length * 2);
                for (String str : strArrM3908) {
                    c0386.m4489(C0208.m3683(str));
                }
                c0382M41211.m4489(c0386.f1971);
                c0382M41211.m4500(c0386.m4502());
                m4088(c0382M41211);
                m4093(C0128.m3232(6588, 31, 11));
            }
            m4100();
            m4122();
            m4115(this.f1560);
            m4145(true);
            if (this.f1567 && !this.f1560.f1757.f3183.m5229()) {
                i4 = 3;
            }
            this.f1572 = i4;
            return;
        }
        this.f1572 = 8;
        if (this.f1553 == null) {
            this.f1553 = m4097();
        }
        if (c0670 != null) {
            C0325 c0326 = this.f1560;
            c0326.f1743 = c0670.f3687;
            this.f1575 = true;
            m4138(c0326);
            m4104();
            m4115(this.f1560);
            return;
        }
        this.f1574 = new C0382(16384);
        try {
            if (this.f1569 != null && !this.f1560.f1757.f3183.m5229()) {
                m4100();
            }
            m4121();
            if (this.f1567 && !this.f1560.f1757.f3183.m5229()) {
                m4125();
            }
            m4088(m4129(Ascii.SO));
            m4093(C0128.m3232(6449, 28, 104));
        } finally {
            m4112();
        }
    }

    public final void m4140(C0382 c0382, int i) throws Exception {
        m4093(C0128.m3232(4409, 35, 72));
        if (this.f1572 == 31) {
            byte bM4496 = c0382.m4496();
            this.f1560.f1761 = c0382.m4484(bM4496);
            int i2 = (i - 1) - bM4496;
            C0382 c0383 = new C0382();
            while (i2 > 0) {
                short sM4483 = c0382.m4483();
                byte[] bArrM4484 = c0382.m4484(sM4483);
                c0383.f1972 = bArrM4484;
                c0383.f1971 = bArrM4484.length;
                i2 = (i2 - 2) - sM4483;
                if (i2 >= 0) {
                    short sM4484 = c0383.m4483();
                    if (sM4484 != 13) {
                        m4093(C0128.m3232(4643, 19, 4) + ((int) sM4484) + C0128.m3232(4662, 39, 106));
                    } else if (c0383.m4483() == c0383.m4486()) {
                        Vector vector = new Vector();
                        m4082(c0383, 2, 2, vector);
                        Vector vectorM4086 = m4086(this.f1569, this.f1577);
                        if (vectorM4086.size() != 0) {
                            int i3 = 0;
                            for (int i4 = 0; i4 < vector.size(); i4++) {
                                int iIntValue = ((Integer) vector.get(i4)).intValue();
                                for (int i5 = 0; i5 < vectorM4086.size(); i5++) {
                                    if (iIntValue == ((Integer) vectorM4086.get(i5)).intValue()) {
                                        i3 = iIntValue;
                                        break;
                                    }
                                }
                                if (i3 > 0) {
                                    break;
                                }
                            }
                            if (i3 != 0) {
                                if (this.f1600) {
                                    m4114(C0128.m3232(4609, 34, 101) + C0208.m3681(i3));
                                }
                                this.f1560.f1744 = i3;
                            } else {
                                m4113(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, C0128.m3232(4580, 29, 75));
                                throw null;
                            }
                        } else {
                            m4113(40, C0128.m3232(4553, 27, 51) + this.f1577);
                            throw null;
                        }
                    } else {
                        m4113(40, C0128.m3232(4515, 38, 99));
                        throw null;
                    }
                } else {
                    m4113(40, C0128.m3232(4462, 53, 102));
                    throw null;
                }
            }
            this.f1572 = 3;
            this.f1560.f1759 = true;
            return;
        }
        m4106(C0128.m3232(4444, 18, 72));
        throw null;
    }

    public final void m4134(int i, int i2) throws Exception {
        C0382 c0382 = new C0382(2);
        c0382.m4509((byte) i);
        c0382.m4509((byte) i2);
        C0325 c0325 = this.f1560;
        if (c0325 == null) {
            c0325 = this.f1553;
        }
        m4132(Ascii.NAK, c0325.f1746, c0382);
    }

    public final byte[] m4153(C0325 c0325, byte[] bArr, boolean z) throws Exception {
        byte[] bArr2 = c0325.f1743;
        byte[] bArrM4126 = m4126();
        m4137(C0128.m3232(7434, 12, 8), bArr2);
        m4137(C0128.m3232(7446, 19, 64), bArrM4126);
        if (c0325.m4321()) {
            return m4157(bArr, bArr2, bArrM4126);
        }
        if (c0325.m4318()) {
            byte[] bArrM4339 = c0325.m4339(bArrM4126);
            m4137(C0128.m3232(7465, 4, 37), bArrM4339);
            C0510 c0510 = (z ? c0325.f1764 : c0325.f1757).f3183;
            m4137(C0128.m3232(7469, 20, 85), c0510.f2950);
            return c0510.f2949.m4300(bArrM4339);
        }
        byte[] bArrM43310 = c0325.m4339(bArrM4126);
        C0510 c0511 = c0325.f1764.f3183;
        if (c0511 == null) {
            c0511 = c0325.f1757.f3183;
        }
        return this.f1553.m4342(bArr2, bArr, bArrM43310, c0511.f2947);
    }

    public final byte[] m4157(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Exception {
        AbstractC0317 abstractC0317M4214 = C0308.m4214(C0128.m3232(7489, 3, 91));
        AbstractC0317 abstractC0317M4215 = C0308.m4214(C0128.m3232(7492, 4, 52));
        C0382 c0382 = new C0382();
        c0382.m4500(bArr3);
        if (bArr != null) {
            c0382.m4500(bArr);
        }
        c0382.m4500(bArr2);
        return C0208.m3687(m4152(abstractC0317M4214, bArr2, C0510.f2881, m4151(abstractC0317M4214, c0382.m4502(), C0510.f2918)), m4152(abstractC0317M4215, bArr2, C0510.f2915, m4151(abstractC0317M4215, c0382.m4502(), C0510.f2923)));
    }

    public final byte[] m4151(AbstractC0317 abstractC0317, byte[] bArr, byte[] bArr2) throws C0537 {
        abstractC0317.mo3250();
        int length = bArr.length;
        abstractC0317.mo3412(bArr, 0, length);
        System.arraycopy(bArr, 0, bArr, 0, length);
        abstractC0317.mo3122(bArr2, 0, bArr2.length);
        return C0308.m4264(abstractC0317);
    }

    public final byte[] m4152(AbstractC0317 abstractC0317, byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537 {
        abstractC0317.mo3250();
        int length = bArr.length;
        abstractC0317.mo3412(bArr, 0, length);
        System.arraycopy(bArr, 0, bArr, 0, length);
        int length2 = bArr2.length;
        abstractC0317.mo3412(bArr2, 0, length2);
        System.arraycopy(bArr2, 0, bArr2, 0, length2);
        abstractC0317.mo3122(bArr3, 0, bArr3.length);
        return C0308.m4264(abstractC0317);
    }

    public final void m4138(C0325 c0325) throws Exception {
        byte[] bArr = c0325.f1743;
        C0510 c0510 = c0325.f1757.f3183;
        byte[] bArr2 = c0325.m4321() ? C0320.f1706 : C0208.f752;
        byte[] bArrM3687 = C0208.m3687(c0325.f1766, c0325.f1749);
        if (c0510.m5228()) {
            byte[] bArrM4342 = c0325.m4342(bArr, bArr2, bArrM3687, (c0510.f2959 + 4) * 2);
            m4137(C0128.m3232(7635, 9, 5), bArrM4342);
            C0382 c0382 = new C0382(bArrM4342);
            byte[] bArrM4484 = c0382.m4484(c0510.f2959);
            byte[] bArrM4485 = c0382.m4484(c0510.f2959);
            byte[] bArrM4486 = c0382.m4484(4);
            byte[] bArrM4487 = c0382.m4484(4);
            c0325.m4326(bArrM4484, C0320.f1706);
            c0325.m4323(bArrM4485, C0320.f1706);
            c0325.m4334(bArrM4486, bArrM4487);
            return;
        }
        byte[] bArrM4343 = c0325.m4342(bArr, bArr2, bArrM3687, 256);
        m4137(C0128.m3232(7644, 9, 76), bArrM4343);
        C0382 c0383 = new C0382(bArrM4343);
        byte[] bArrM4488 = c0383.m4484(c0510.m5215());
        m4137(C0128.m3232(7653, 14, 89), bArrM4488);
        byte[] bArrM4489 = c0383.m4484(c0510.m5215());
        m4137(C0128.m3232(7667, 14, 17), bArrM4489);
        byte[] bArrM44810 = c0383.m4484(c0510.f2959);
        byte[] bArrM44811 = c0383.m4484(c0510.f2959);
        if (c0510.m5230()) {
            byte[] bArrM3688 = C0208.m3687(c0325.f1749, c0325.f1766);
            bArrM44810 = c0325.m4342(bArrM44810, C0208.f779, bArrM3688, c0510.m5214());
            bArrM44811 = c0325.m4342(bArrM44811, C0208.f750, bArrM3688, c0510.m5214());
            c0383 = new C0382(c0325.m4342(C0320.f1706, C0208.f751, bArrM3688, c0510.m5220() * 2));
        }
        byte[] bArrM44812 = c0383.m4484(c0510.m5220());
        byte[] bArrM44813 = c0383.m4484(c0510.m5220());
        m4137(C0128.m3232(7681, 21, 43), bArrM44810);
        m4137(C0128.m3232(7702, 21, 112), bArrM44811);
        m4137(C0128.m3232(7723, 9, 97), bArrM44812);
        m4137(C0128.m3232(7732, 9, 2), bArrM44813);
        c0325.m4320(bArrM4488, bArrM4489);
        c0325.m4326(bArrM44810, bArrM44812);
        c0325.m4323(bArrM44811, bArrM44813);
    }

    public final boolean m4150(C0335 c0335, Vector vector) throws Exception {
        int i;
        int i2;
        boolean z = true;
        String[] strArr = new String[1];
        String[] strArr2 = new String[1];
        Vector vector2 = new Vector();
        String str = "";
        String strM5880 = "";
        for (int i3 = 0; i3 < vector.size(); i3++) {
            if (strM5880.length() > 0) {
                strM5880 = C0663.m5880(strM5880, "\r\n");
            }
            vector2.add(C0259.m3892(C0259.m3878((byte[]) vector.get(i3), C0128.m3232(7741, 11, 14))));
            strM5880 = strM5880 + ((String) vector2.get(i3));
        }
        String str2 = this.f1592;
        String str3 = this.f1557;
        int i4 = this.f1590;
        boolean z2 = this.f1604;
        String str4 = (z2 && (Integer.MIN_VALUE & i4) == 0) ? this.f1599 : "";
        if (z2 && this.f1560.m4317()) {
            str = this.f1585;
        }
        int iM5946 = C0671.m5946(c0335, vector2, str2, str3, i4, str4, str, strArr, strArr2, this.f1563);
        if (this.f1563 && iM5946 == 0) {
            m4093(C0128.m3232(7752, 13, 4));
        }
        if (!C0259.m3856(strArr[0])) {
            m4135(280, strArr[0]);
        }
        if (iM5946 != 280) {
            if (this.f1604) {
                i = 7765;
                i2 = 26;
            } else {
                i = 7771;
                i2 = 118;
            }
            String strM3232 = C0128.m3232(i, 6, i2);
            if (iM5946 != 0) {
                String str5 = C0128.m3232(7777, 16, 56) + strM3232 + C0128.m3232(7793, 14, 70) + C0259.m3887(iM5946, 4, true) + " " + strArr2[0];
                m4093(str5);
                m4135(280, str5);
            }
            if (this.f1604) {
                byte[] bArrM3902 = C0259.m3902(strM5880);
                String string = strArr2[0];
                if (this.f1552 != null) {
                    boolean[] zArr = {iM5946 == 0};
                    if (iM5946 != 0) {
                        string = C0663.m5891("[").append(Integer.toHexString(iM5946)).append("] ").append(string).toString();
                    }
                    this.f1552.fireSSLServerAuthentication(bArrM3902, c0335.m4368(), c0335.m4363(), string, zArr);
                    z = zArr[0];
                }
            } else {
                byte[] bArrM3903 = C0259.m3902(strM5880);
                String string2 = strArr2[0];
                if (this.f1595 != null) {
                    boolean[] zArr2 = {iM5946 == 0};
                    if (iM5946 != 0) {
                        string2 = C0663.m5891("[").append(C0259.m3862(iM5946)).append("] ").append(string2).toString();
                    }
                    this.f1595.m5520("", bArrM3903, c0335.m4368(), c0335.m4363(), string2, zArr2);
                    z = zArr2[0];
                }
            }
            if (z) {
                return z;
            }
            m4134(2, 46);
            m4093(strM3232 + C0128.m3232(7807, 54, 43));
            throw new C0414(280, C0663.m5891(strM3232).append(C0128.m3232(7861, 51, 88)).toString());
        }
        m4093(strArr2[0]);
        throw new C0414(280, strArr2[0]);
    }

    public final byte[] m4154(C0567 c0567, byte[] bArr, int i, int i2, long j, byte b) throws C0537 {
        byte[] bArr2;
        byte[] bArr3;
        if (this.f1553.m4324()) {
            C0382 c0382 = new C0382(i2 + 13);
            c0382.m4513(j, 8);
            c0382.m4509(b);
            c0382.m4515(this.f1553.f1746);
            c0382.m4513(i2, 2);
            c0382.m4501(bArr, i, i2);
            return c0567.f3183.m5237(c0382.m4502());
        }
        C0510 c0510 = c0567.f3183;
        byte[] bArrM5218 = c0510.m5218();
        if (c0510.f2954 == 1) {
            bArr2 = C0510.f2918;
        } else {
            bArr2 = C0510.f2923;
        }
        C0382 c0383 = new C0382(bArrM5218.length + 11 + i2 + bArr2.length);
        c0383.m4500(bArrM5218);
        c0383.m4500(bArr2);
        c0383.m4513(j, 8);
        c0383.m4509(b);
        c0383.m4513(i2, 2);
        c0383.m4501(bArr, i, i2);
        String strM5219 = c0510.m5219();
        byte[] bArrM4080 = m4080(strM5219, c0383.m4502());
        if (c0510.f2954 == 1) {
            bArr3 = C0510.f2881;
        } else {
            bArr3 = C0510.f2915;
        }
        return m4080(strM5219, C0208.m3688(bArrM5218, bArr3, bArrM4080));
    }

    public final void m4149(byte[] bArr, C0382 c0382, String str, boolean z) throws Exception {
        C0325 c0325 = this.f1560;
        byte[] bArrM4300 = m4128(str).m4300(C0208.m3688(c0325.f1749, c0325.f1766, bArr));
        byte[] bArrM4484 = c0382.m4484(c0382.m4483());
        C0325 c0326 = this.f1560;
        if (c0326.m4336(c0326.f1747, bArrM4300, bArrM4484, str, z)) {
            return;
        }
        m4134(1, 40);
        throw new C0414(276, C0128.m3232(7912, 39, 125));
    }

    public final byte[] m4156(byte[] bArr, String str) throws Exception {
        C0325 c0325 = this.f1560;
        return this.f1560.m4328(m4128(str).m4300(C0208.m3688(c0325.f1749, c0325.f1766, bArr)));
    }

    public final void m4146(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    public final String m4127(short s) {
        switch (s) {
            case ViewUtils.EDGE_TO_EDGE_FLAGS:
                return C0128.m3232(8027, 6, 79);
            case 769:
                return C0128.m3232(8033, 6, 36);
            case 770:
                return C0128.m3232(8039, 6, 91);
            case 771:
                return C0128.m3232(8045, 6, 70);
            case 772:
                return C0128.m3232(8051, 6, 27);
            default:
                return C0128.m3232(8057, 23, 124);
        }
    }

    public static String m4085(int[] iArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C0128.m3232(8431, 20, 92));
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(C0128.m3232(8451, 7, 86));
            }
            stringBuffer.append(C0510.m5201(iArr[i]));
        }
        return stringBuffer.toString();
    }

    public static String m4083(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C0128.m3232(8458, 22, 79));
        switch (i) {
            case ViewUtils.EDGE_TO_EDGE_FLAGS:
                stringBuffer.append(C0128.m3232(8498, 6, 81));
                break;
            case 769:
                stringBuffer.append(C0128.m3232(8492, 6, 5));
                break;
            case 770:
                stringBuffer.append(C0128.m3232(8486, 6, 56));
                break;
            case 771:
                stringBuffer.append(C0128.m3232(8480, 6, 102));
                break;
            default:
                if (C0325.m4316((short) (65535 & i))) {
                    stringBuffer.append(C0128.m3232(8504, 6, 118));
                } else {
                    stringBuffer.append(C0128.m3232(8510, 9, 34) + i + ")");
                }
                break;
        }
        return stringBuffer.toString();
    }

    public void m4137(String str, byte[] bArr) {
        String string;
        if (this.f1600) {
            String string2 = C0663.m5892("==", str).append(C0128.m3232(8576, 3, 68)).append(bArr.length).append(C0128.m3232(8579, 9, 93)).toString();
            String strM3232 = C0128.m3232(8588, 16, 58);
            int i = 0;
            loop0: while (true) {
                string = "";
                do {
                    if (i >= bArr.length) {
                        break loop0;
                    }
                    string2 = C0663.m5891(string2).append(strM3232.charAt((bArr[i] & 255) >> 4)).append(strM3232.charAt(bArr[i] & Ascii.SI)).append(" ").toString();
                    byte b = bArr[i];
                    if (b >= 32 && b <= 126) {
                        string = C0663.m5891(string).append((char) bArr[i]).toString();
                    } else {
                        string = string + CoreConstants.DOT;
                    }
                    i++;
                } while (i % 16 != 0);
                string2 = C0663.m5891(string2).append(C0128.m3232(8604, 4, 50)).append(string).append("\r\n").toString();
            }
            if (string.length() > 0) {
                for (int i2 = 0; i2 < 16 - string.length(); i2++) {
                    string2 = C0663.m5891(string2).append(C0128.m3232(8608, 3, 73)).toString();
                }
                string2 = C0663.m5891(string2).append(C0128.m3232(8611, 4, 53)).append(string).toString();
            }
            m4093(string2);
        }
    }

    public void m4142(C0382 c0382, C0382 c0383, boolean z) {
        if (this.f1573) {
            byte[] bArrM4502 = c0382.m4502();
            byte[] bArrM4503 = c0383 != null ? c0383.m4502() : C0320.f1706;
            C0387 c0387 = new C0387();
            C0387 c0388 = new C0387();
            byte b = bArrM4502[0];
            if (b == 22) {
                byte b2 = bArrM4502[5];
                if (b2 == 0) {
                    c0388.m4531(C0128.m3232(8930, 33, 114));
                } else if (b2 == 1) {
                    c0388.m4531(C0128.m3232(8615, 32, 117));
                } else if (b2 == 2) {
                    c0388.m4531(C0128.m3232(8647, 32, 19));
                } else if (b2 == 4) {
                    c0388.m4531(C0128.m3232(9002, 38, 110));
                } else if (b2 == 6) {
                    c0388.m4531(C0128.m3232(8963, 39, 25));
                } else if (b2 == 8) {
                    c0388.m4531(C0128.m3232(9040, 40, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                } else if (b2 == 20) {
                    c0388.m4531(C0128.m3232(8902, 28, 100));
                } else {
                    switch (b2) {
                        case 11:
                            c0388.m4531(C0128.m3232(8679, 31, 89));
                            break;
                        case 12:
                            c0388.m4531(C0128.m3232(8710, 39, 123));
                            break;
                        case 13:
                            c0388.m4531(C0128.m3232(8749, 39, 105));
                            break;
                        case 14:
                            c0388.m4531(C0128.m3232(8826, 37, 33));
                            break;
                        case 15:
                            c0388.m4531(C0128.m3232(8788, 38, 122));
                            break;
                        case 16:
                            c0388.m4531(C0128.m3232(8863, 39, 43));
                            break;
                        default:
                            c0388.m4550(C0128.m3232(9080, 32, 62), Integer.valueOf(b2));
                            break;
                    }
                }
            } else if (b == 20) {
                c0388.m4531(C0128.m3232(9112, 42, 60));
            } else if (b == 21) {
                c0388.m4531(C0128.m3232(9154, 5, 13));
            } else if (b == 23) {
                c0388.m4531(C0128.m3232(9159, 43, 66));
            } else {
                c0388.m4550(C0128.m3232(9202, 29, 27), Integer.valueOf(b));
            }
            c0387.m4550(C0128.m3232(9231, 24, 30), z ? C0128.m3232(9255, 8, 100) : C0128.m3232(9263, 8, 37), c0388.m4571(), Integer.valueOf(bArrM4503.length > 0 ? bArrM4503.length : bArrM4502.length));
            if (c0383 != null) {
                c0387.m4551(bArrM4503);
                c0387.m4566(C0128.m3232(9271, 34, 99), Integer.valueOf(bArrM4502.length));
            }
            c0387.m4551(bArrM4502);
            m4093(c0387.m4571());
        }
    }

    public static String m4084(String str, boolean z) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return "";
        }
        String[] strArrM3908 = C0259.m3908(strTrim, ",", true, false);
        String str2 = z ? f1544 : f1547;
        for (int i = 0; i < strArrM3908.length; i++) {
            if (!str2.contains(strArrM3908[i])) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0128.m3232(9486, 34, 39)), strArrM3908[i], "'."));
            }
        }
        return strTrim;
    }
}
