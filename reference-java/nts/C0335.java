package nts;

import androidx.appcompat.app.AppCompatDelegate;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import com.facebook.imageutils.TiffUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Hashtable;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0335 extends AbstractC0095 {

    public static final String f1793;

    public static final String f1794;

    public static final String f1795;

    public static final String f1796;

    public byte[] f1797;

    public String f1798;

    public int f1799;

    public int f1800;

    public String f1801;

    public boolean f1802;

    public C0579 f1803;

    public C0590 f1804;

    public boolean f1805;

    public byte[] f1806;

    public boolean f1807;

    public Vector f1808;

    public String f1809;

    public InterfaceC0224 f1810;

    public int f1811;

    public boolean f1812;

    public String f1813;

    public C0335() {
        this.f1806 = C0212.f791;
        this.f1797 = "MY".getBytes();
        this.f1798 = "";
        this.f1801 = "";
        this.f1813 = "";
        this.f1799 = -1;
        this.f1800 = 0;
        this.f1804 = null;
        this.f1808 = null;
        this.f1810 = null;
        this.f1803 = null;
        this.f1807 = false;
        this.f1811 = 0;
        this.f1802 = !C0320.f1708;
        this.f1812 = false;
        this.f1809 = "";
        this.f1805 = true;
        this.f1807 = true;
        this.f1804 = new C0590();
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public Certificate[] m4353() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        if (interfaceC0224 == null) {
            return null;
        }
        return interfaceC0224.getCertificateChain(this.f1804.f3264);
    }

    public C0335[] m4354() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        if (interfaceC0224 == null) {
            return null;
        }
        try {
            return interfaceC0224.mo3703(this.f1804.f3264);
        } catch (Exception e) {
            throw new C0414(TiffUtil.TIFF_TAG_ORIENTATION, C0164.m3511(779, 38, 60) + C0414.m4672(e));
        }
    }

    public String m4355() {
        byte[] bArrM4370 = m4370(C0458.f2662);
        return (bArrM4370 == null || bArrM4370.length <= 0) ? "" : C0671.m5962(bArrM4370);
    }

    public void m4357(String str) {
        m4380(C0458.f2662, C0671.m5938(str).mo3690());
    }

    public Vector m4358() {
        Vector vector = new Vector();
        byte[] bArrM4370 = m4370(C0458.f2615);
        if (bArrM4370.length != 0) {
            C0530 c0530 = new C0530(bArrM4370);
            c0530.m5378();
            for (int i = 0; i < c0530.m5382(); i++) {
                C0530 c0530M5365 = c0530.m5365(i);
                for (int i2 = 0; i2 < c0530M5365.m5382(); i2++) {
                    C0530 c0530M5366 = c0530M5365.m5365(i2);
                    if (c0530M5366.f3084 == 160) {
                        C0530 c0530M5367 = c0530M5366.m5365(0);
                        if (c0530M5367.f3084 == 160) {
                            for (int i3 = 0; i3 < c0530M5367.m5382(); i3++) {
                                vector.add(C0259.m3882(c0530M5367.m5365(i3).m5364(0)));
                            }
                        }
                    }
                }
            }
        }
        return vector;
    }

    public Vector m4359() {
        C0590 c0590;
        if (this.f1808 == null && (c0590 = this.f1804) != null) {
            this.f1808 = c0590.f3277;
        }
        return this.f1808;
    }

    public byte[] m4360() {
        C0590 c0590 = this.f1804;
        return c0590 == null ? C0212.f791 : c0590.f3279;
    }

    public PublicKey m4361() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        if (interfaceC0224 == null) {
            return null;
        }
        return interfaceC0224.mo3699(this.f1813, this.f1806);
    }

    public String m4362() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        return interfaceC0224 == null ? "" : interfaceC0224.mo3695(this.f1804.f3264);
    }

    public String m4363() {
        C0590 c0590 = this.f1804;
        if (c0590 == null) {
            return "";
        }
        return this.f1811 == 1 ? c0590.f3273 : c0590.f3272;
    }

    public byte[] m4364() {
        byte[] bArrM4370 = m4370(C0458.f2631);
        if (bArrM4370 == null || bArrM4370.length <= 0) {
            return bArrM4370;
        }
        if (bArrM4370.length <= 1) {
            throw new C0414(C0164.m3511(884, 35, 74));
        }
        C0591 c0591 = new C0591();
        c0591.m4680(bArrM4370);
        return c0591.f2148;
    }

    public String m4365() {
        C0579 c0579 = new C0579();
        c0579.m5564(this.f1797, this.f1801);
        c0579.m5562(this.f1813);
        return c0579.m5561() != null ? c0579.m5561().f2241.f793.f1731.f584.f811.f2701 : "";
    }

    public Hashtable m4366() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        return interfaceC0224 == null ? new Hashtable() : ((C0283) interfaceC0224).f1481;
    }

    public PrivateKey m4367() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        if (interfaceC0224 == null) {
            return null;
        }
        if (interfaceC0224 instanceof C0265) {
            ((C0265) interfaceC0224).f1273 = this.f1798;
        }
        return this.f1810.mo3694(this.f1804.f3264);
    }

    public String m4368() {
        C0590 c0590 = this.f1804;
        if (c0590 == null) {
            return this.f1813;
        }
        return this.f1811 == 1 ? c0590.f3270 : c0590.f3267;
    }

    public byte[] m4370(String str) {
        byte[] bArr = C0212.f791;
        if (this.f1808 == null) {
            m4359();
        }
        if (this.f1808 != null) {
            for (int i = 0; i < this.f1808.size(); i++) {
                C0236 c0236 = (C0236) this.f1808.elementAt(i);
                if (str.equals(c0236.f846)) {
                    return c0236.f844;
                }
            }
        }
        return bArr;
    }

    public int m4371() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        if (interfaceC0224 == null) {
            return 0;
        }
        if (this.f1799 == -1) {
            int iMo3698 = interfaceC0224.mo3698();
            this.f1799 = iMo3698;
            if (iMo3698 == -1) {
                String strM4375 = m4375();
                if (strM4375 == null || strM4375.length() == 0) {
                    this.f1799 = 0;
                } else if (strM4375.equals(f1795)) {
                    this.f1799 = 1;
                } else if (strM4375.equals(f1793)) {
                    this.f1799 = 2;
                } else if (strM4375.equals(f1794)) {
                    this.f1799 = 3;
                } else if (strM4375.equals(f1796)) {
                    this.f1799 = 4;
                } else {
                    this.f1799 = 255;
                }
            }
        }
        return this.f1799;
    }

    public int m4372() {
        byte[] bArrM4370 = m4370(C0458.f2666);
        if (bArrM4370 == null || bArrM4370.length == 0) {
            return 0;
        }
        C0446 c0446 = new C0446();
        c0446.m4680(bArrM4370);
        byte[] bArr = c0446.f2148;
        return C0259.m3846(bArr, 0, bArr.length) & 255;
    }

    public String m4373() {
        C0590 c0590 = this.f1804;
        return c0590 == null ? "" : c0590.f3278;
    }

    public boolean m4374() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        if (interfaceC0224 == null) {
            return false;
        }
        return interfaceC0224.mo3693(this.f1804.f3264);
    }

    public String m4375() {
        C0590 c0590 = this.f1804;
        return c0590 == null ? "" : c0590.f3265;
    }

    public String m4376() {
        InterfaceC0224 interfaceC0224 = this.f1810;
        return interfaceC0224 == null ? "" : interfaceC0224.mo3692(this.f1813, this.f1806);
    }

    public byte[] m4377() {
        byte[] bArr = this.f1806;
        if (bArr == null || bArr.length == 0) {
            byte[] bArrM4360 = m4360();
            int i = this.f1800;
            if (i == 13 || i == 10) {
                this.f1806 = bArrM4360;
            } else if (bArrM4360.length > 0) {
                this.f1806 = C0259.m3878(bArrM4360, C0164.m3511(817, 11, 106));
            }
        }
        return this.f1806;
    }

    public final void m4379(int i, byte[] bArr, String str, String str2, byte[] bArr2) {
        int i2;
        this.f1800 = i;
        this.f1797 = C0259.m3845(bArr);
        this.f1801 = str;
        this.f1813 = str2;
        this.f1806 = C0259.m3845(bArr2);
        this.f1798 = str;
        int i3 = this.f1800;
        if (i3 == 11 || i3 == 12) {
            this.f1810 = new C0589();
        } else if ((!this.f1802 && C0320.f1708) || (i2 = this.f1800) == 5 || i2 == 4) {
            this.f1810 = new C0265();
        } else if (i2 >= 6) {
            this.f1810 = new C0283();
        } else {
            if (i2 != 3 && i2 != 2) {
                throw new C0414(271, C0164.m3511(248, 25, 123));
            }
            this.f1810 = new C0469(this.f1812);
        }
        this.f1810.mo3700(this.f1800, this.f1797, this.f1801);
        String str3 = this.f1809;
        if (str3 == null || str3.length() <= 0) {
            this.f1804 = this.f1810.mo3697(str2, bArr2);
        } else {
            this.f1804 = ((C0283) this.f1810).m4061("", "", "", null, this.f1809);
        }
        if (!this.f1805 || i == 0 || i == 1 || i == 4 || i == 5) {
            return;
        }
        C0579 c0579 = new C0579();
        this.f1803 = c0579;
        c0579.m5564(bArr, str);
        this.f1803.m5562(str2);
        if (this.f1812) {
            C0579 c05710 = this.f1803;
            if (c05710.m5558()) {
                C0574 c0574 = c05710.m5559().f239;
                if (c0574.f3200 != null || c0574.f3198.size() <= 0) {
                    return;
                }
                c0574.f3200 = new C0538();
                C0671.m5907(c0574.f3200, (String) c0574.f3198.get(0));
            }
        }
    }

    public String m4356() {
        C0579 c0579 = new C0579();
        c0579.m5564(this.f1797, this.f1801);
        c0579.m5562(this.f1813);
        return c0579.m5561() != null ? c0579.m5561().f2241.f793.f1731.f575.f2961.f811.f2701 : "";
    }

    static {
        String[] strArr = new String[8];
        C0164.m3511(0, 18, 11);
        C0164.m3511(18, 18, 77);
        C0164.m3511(36, 14, 10);
        C0164.m3511(50, 15, 78);
        C0164.m3511(65, 13, 50);
        C0164.m3511(78, 19, 72);
        C0164.m3511(97, 11, 85);
        C0164.m3511(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 15, 34);
        f1795 = C0164.m3511(123, 3, 100);
        f1793 = C0164.m3511(WebSocketProtocol.PAYLOAD_SHORT, 3, 36);
        f1794 = C0164.m3511(129, 3, 110);
        f1796 = C0164.m3511(132, 5, 26);
    }

    public int m4369() {
        Date dateM4629 = C0394.m4629(new C0394().m4633(C0394.f2058));
        C0590 c0590 = this.f1804;
        Date dateM46210 = C0394.m4629(c0590 == null ? "" : c0590.f3274);
        C0590 c0591 = this.f1804;
        Date dateM46211 = C0394.m4629(c0591 != null ? c0591.f3266 : "");
        if (dateM4629.compareTo(dateM46210) < 0) {
            return -1;
        }
        return dateM4629.compareTo(dateM46211) > 0 ? 1 : 0;
    }

    public C0335(int i, byte[] bArr, String str, String str2, byte[] bArr2) {
        this();
        this.f1807 = false;
        if (i == 99) {
            try {
                C0579 c0579 = new C0579();
                c0579.m5564(bArr, str);
                i = c0579.f3242;
                if (c0579.m5558() && (c0579.m5557().m5412() || c0579.m5557().m5418())) {
                    this.f1802 = true;
                }
            } catch (Exception unused) {
            }
        }
        int i2 = i;
        if (!C0259.m3856("")) {
            for (String str3 : C0259.m3908("", "\n", true, false)) {
                C0440 c0440 = new C0440(str3.endsWith("\r") ? str3.substring(0, str3.length() - 1) : str3);
                if (c0440.m4813(C0164.m3511(137, 13, 30))) {
                    c0440.m4809();
                } else if (c0440.m4813(C0164.m3511(150, 22, 44))) {
                    this.f1802 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3511(172, 8, 45))) {
                    this.f1811 = c0440.m4805();
                } else if (c0440.m4813(C0164.m3511(RotationOptions.ROTATE_180, 15, 107))) {
                    this.f1805 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3511(195, 10, 61))) {
                    this.f1809 = c0440.f2271;
                } else if (c0440.m4813(C0164.m3511(205, 13, 102))) {
                    this.f1812 = c0440.m4809();
                } else {
                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0164.m3511(JfifUtil.MARKER_SOS, 30, SyslogConstants.LOG_CLOCK)), c0440.f2272, "\"."));
                }
            }
        }
        m4379(i2, bArr, str, str2, bArr2);
    }

    public C0335[] m4382(String str) {
        if (this.f1803 == null) {
            return m4354();
        }
        try {
            Vector vector = new Vector();
            Vector vectorM5560 = this.f1803.m5560();
            String str2 = "";
            for (int i = 0; i < vectorM5560.size(); i++) {
                str2 = str2 + C0259.m3892(C0259.m3878(((C0433) vectorM5560.get(i)).f2241.f793.mo3690(), C0164.m3511(719, 11, 93)));
            }
            if (!C0259.m3856(str)) {
                C0579 c0579 = new C0579();
                c0579.m5564(C0259.m3883(str), "");
                Vector vectorM5561 = c0579.m5560();
                for (int i2 = 0; i2 < vectorM5561.size(); i2++) {
                    str2 = str2 + C0259.m3892(C0259.m3878(((C0433) vectorM5561.get(i2)).f2241.f793.mo3690(), C0164.m3511(730, 11, 13)));
                }
            }
            C0671.m5971(this, str2, vector);
            return (C0335[]) vector.toArray(new C0335[0]);
        } catch (Exception e) {
            throw new C0414(TiffUtil.TIFF_TAG_ORIENTATION, C0164.m3511(741, 38, 127) + C0414.m4672(e));
        }
    }

    public C0335(int i, String str, String str2, String str3) {
        this(i, C0259.m3883(str), str2, str3, C0212.f791);
    }

    public C0335(byte[] bArr) {
        this(9, bArr, "", "*", C0212.f791);
    }

    public void m4380(String str, byte[] bArr) {
        if (this.f1807) {
            if (this.f1808 == null) {
                m4359();
            }
            if (this.f1808 != null) {
                for (int i = 0; i < this.f1808.size(); i++) {
                    C0236 c0236 = (C0236) this.f1808.elementAt(i);
                    if (str.equals(c0236.f846)) {
                        c0236.f844 = C0259.m3845(bArr);
                        return;
                    }
                }
                this.f1808.add(new C0236(str, C0259.m3845(bArr), false));
                return;
            }
            return;
        }
        throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3511(919, 58, 96));
    }

    public void m4378(int i) {
        if (!this.f1807) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3511(1167, 58, 61));
        }
        if (i > 0) {
            C0446 c0446 = new C0446();
            c0446.f2148 = C0259.m3898(i, 2);
            m4380(C0458.f2666, c0446.mo3690());
            return;
        }
        if (this.f1808 == null) {
            m4359();
        }
        if (this.f1808 != null) {
            for (int i2 = 0; i2 < this.f1808.size(); i2++) {
                if (C0458.f2666.equals(((C0236) this.f1808.elementAt(i2)).f846)) {
                    this.f1808.removeElementAt(i2);
                    return;
                }
            }
        }
    }

    public void m4381(X509Certificate x509Certificate) {
        if (this.f1810 == null) {
            this.f1810 = new C0265();
        }
        this.f1810.mo3701(x509Certificate);
        this.f1804 = this.f1810.mo3697(x509Certificate.getSubjectDN().getName(), C0212.f791);
    }
}
