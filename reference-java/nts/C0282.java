package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.google.android.material.internal.ViewUtils;
import com.google.api.FieldBehaviorProto;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.util.List;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.Vector;
import kotlin.text.Typography;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0282 extends C0320 {

    public static final byte[] f1418;

    public boolean f1422;

    public C0187 f1423;

    public boolean f1424;

    public int f1425;

    public Vector f1426;

    public String f1427;

    public int f1428;

    public int f1429;

    public boolean f1430;

    public String f1431;

    public boolean f1432;

    public String f1433;

    public byte[] f1434;

    public Stack<C0474> f1435;

    public boolean f1436;

    public boolean f1437;

    public int f1438;

    public boolean f1439;

    public boolean f1440;

    public InterfaceC0172 f1441;

    public int f1442;

    public int f1443;

    public int f1444;

    public boolean f1445;

    public StringBuffer f1446;

    public int f1447;

    public boolean f1448;

    public boolean f1449;

    public boolean f1450;

    public boolean f1451;

    public boolean f1452;

    public StringBuilder f1453;

    public C0187 f1454;

    public C0586 f1455;

    public boolean f1456;

    public int f1457;

    public Vector f1458;

    public int f1459;

    public boolean f1460;

    public boolean f1461;

    public Vector f1462;

    public int f1463;

    public int f1464;

    public C0492 f1465;

    public int f1466;

    public boolean f1467;

    public boolean f1468;

    public int f1469;

    public C0187 f1470;

    public static C0571 f1421 = new C0571(C0128.m3233(0, 54, RNMBXStyleValue.InterpolationModeIdentity), 0);

    public static final String f1419 = C0128.m3233(54, 6, 65);

    public static final String f1417 = C0128.m3233(60, 5, 28);

    public static final String f1420 = C0128.m3233(65, 24, 85);

    static {
        byte[] bArr = new byte[65536];
        f1418 = bArr;
        bArr[32] = (byte) (bArr[32] | 1);
        bArr[9] = (byte) (bArr[9] | 1);
        bArr[10] = (byte) (bArr[10] | 1);
        bArr[13] = (byte) (bArr[13] | 1);
        bArr[12] = (byte) (bArr[12] | 1);
        bArr[58] = (byte) (bArr[58] | 6);
        bArr[95] = (byte) (bArr[95] | 6);
        for (int i = 65; i <= 90; i++) {
            byte[] bArr2 = f1418;
            bArr2[i] = (byte) (bArr2[i] | 6);
        }
        for (int i2 = 97; i2 <= 122; i2++) {
            byte[] bArr3 = f1418;
            bArr3[i2] = (byte) (bArr3[i2] | 6);
        }
        for (int i3 = 192; i3 <= 214; i3++) {
            byte[] bArr4 = f1418;
            bArr4[i3] = (byte) (bArr4[i3] | 6);
        }
        for (int i4 = JfifUtil.MARKER_SOI; i4 <= 246; i4++) {
            byte[] bArr5 = f1418;
            bArr5[i4] = (byte) (bArr5[i4] | 6);
        }
        for (int i5 = 248; i5 <= 767; i5++) {
            byte[] bArr6 = f1418;
            bArr6[i5] = (byte) (bArr6[i5] | 6);
        }
        for (int i6 = 880; i6 <= 893; i6++) {
            byte[] bArr7 = f1418;
            bArr7[i6] = (byte) (bArr7[i6] | 6);
        }
        for (int i7 = 895; i7 <= 8191; i7++) {
            byte[] bArr8 = f1418;
            bArr8[i7] = (byte) (bArr8[i7] | 6);
        }
        for (int i8 = 8204; i8 <= 8205; i8++) {
            byte[] bArr9 = f1418;
            bArr9[i8] = (byte) (bArr9[i8] | 6);
        }
        for (int i9 = 8304; i9 <= 8591; i9++) {
            byte[] bArr10 = f1418;
            bArr10[i9] = (byte) (bArr10[i9] | 6);
        }
        for (int i10 = 11264; i10 <= 12271; i10++) {
            byte[] bArr11 = f1418;
            bArr11[i10] = (byte) (bArr11[i10] | 6);
        }
        for (int i11 = 12289; i11 <= 55295; i11++) {
            byte[] bArr12 = f1418;
            bArr12[i11] = (byte) (bArr12[i11] | 6);
        }
        for (int i12 = 63744; i12 <= 64975; i12++) {
            byte[] bArr13 = f1418;
            bArr13[i12] = (byte) (bArr13[i12] | 6);
        }
        for (int i13 = 65008; i13 <= 65533; i13++) {
            byte[] bArr14 = f1418;
            bArr14[i13] = (byte) (bArr14[i13] | 6);
        }
        byte[] bArr15 = f1418;
        bArr15[45] = (byte) (bArr15[45] | 4);
        bArr15[46] = (byte) (bArr15[46] | 4);
        bArr15[183] = (byte) (bArr15[183] | 4);
        for (int i14 = 48; i14 <= 57; i14++) {
            byte[] bArr16 = f1418;
            bArr16[i14] = (byte) (bArr16[i14] | 4);
        }
        for (int i15 = ViewUtils.EDGE_TO_EDGE_FLAGS; i15 <= 879; i15++) {
            byte[] bArr17 = f1418;
            bArr17[i15] = (byte) (bArr17[i15] | 4);
        }
        for (int i16 = 8255; i16 <= 8256; i16++) {
            byte[] bArr18 = f1418;
            bArr18[i16] = (byte) (bArr18[i16] | 4);
        }
    }

    public C0282(Object obj, Object obj2) {
        super(obj2);
        this.f1434 = f1418;
        this.f1459 = 0;
        this.f1465 = null;
        this.f1433 = null;
        this.f1427 = null;
        this.f1453 = null;
        this.f1424 = false;
        this.f1461 = false;
        this.f1467 = true;
        this.f1449 = true;
        this.f1436 = false;
        this.f1460 = false;
        this.f1462 = null;
        this.f1426 = null;
        this.f1456 = true;
        this.f1452 = true;
        this.f1458 = null;
        this.f1423 = null;
        this.f1454 = null;
        this.f1429 = 3;
        this.f1439 = true;
        this.f1430 = false;
        this.f1445 = false;
        this.f1450 = false;
        this.f1425 = 0;
        this.f1446 = new StringBuffer();
        this.f1437 = false;
        this.f1441 = null;
        this.f1422 = true;
        this.f1451 = false;
        this.f1432 = false;
        this.f1440 = true;
        this.f1448 = false;
        this.f1468 = false;
        this.f1466 = 0;
        this.f1435 = new Stack<>();
        if (obj instanceof InterfaceC0172) {
            this.f1441 = (InterfaceC0172) obj;
        }
        this.f1462 = new Vector();
        this.f1455 = new C0586();
        this.f1458 = new Vector();
        this.f1426 = new Vector();
        m4042();
    }

    public final void m4021(boolean z) throws C0414 {
        C0474 c0474;
        String str;
        if (this.f1433.length() == 6 && C0259.m3872(f1419, this.f1433)) {
            this.f1430 = true;
        }
        if (this.f1461 || this.f1424) {
            if (this.f1424) {
                c0474 = m4047(this.f1433, true);
            } else {
                c0474 = new C0474(this.f1440 ? this.f1433 : m4040(this.f1433));
            }
            C0474 c0475 = c0474;
            String str2 = c0475.f2713;
            String str3 = c0475.f2716;
            String str4 = this.f1433;
            InterfaceC0172 interfaceC0172 = this.f1441;
            if (interfaceC0172 != null) {
                interfaceC0172.m3527(str2, str3, str4, z);
            }
            if (this.f1461) {
                C0187 c0187 = new C0187(this.f1454, c0475, this.f1458, this.f1426, this.f1444, this.f1425);
                this.f1454 = c0187;
                C0187 c0188 = c0187.f648;
                if (c0188 == null) {
                    this.f1423 = c0187;
                } else {
                    c0188.m3619(c0187);
                }
                if (this.f1470 == null && (str = this.f1431) != null && str.length() > 0) {
                    this.f1431 = "";
                }
            }
        } else {
            String strM4040 = this.f1440 ? this.f1433 : m4040(this.f1433);
            String str5 = this.f1433;
            InterfaceC0172 interfaceC0173 = this.f1441;
            if (interfaceC0173 != null) {
                interfaceC0173.m3527("", strM4040, str5, z);
            }
        }
        this.f1463 = this.f1442;
    }

    public void m4022(boolean z) {
        this.f1461 = z;
        if (!z) {
            this.f1467 = false;
        } else {
            this.f1424 = true;
            this.f1467 = true;
        }
    }

    public final void m4023(int i) {
        int i2 = this.f1469;
        int i3 = this.f1428;
        if (i2 >= i3) {
            if (this.f1445 || this.f1459 != 8) {
                this.f1469 = this.f1425;
                return;
            }
            return;
        }
        if (i == 0) {
            String strM4037 = m4037();
            m4043(strM4037);
            if (this.f1461 && this.f1454 != null) {
                StringBuilder sb = new StringBuilder();
                C0187 c0187 = this.f1454;
                c0187.f650 = C0663.m5888(sb, c0187.f650, strM4037);
            }
        } else if (i == 1) {
            String strM4038 = m4037();
            InterfaceC0172 interfaceC0172 = this.f1441;
            if (interfaceC0172 != null) {
                interfaceC0172.m3521(strM4038);
            }
        } else if (i == 2) {
            if (!this.f1445) {
                while (i3 > this.f1469 && (this.f1434[this.f1453.charAt(i3 - 1)] & 1) != 0) {
                    i3--;
                }
            }
            int i4 = this.f1469;
            if (i3 > i4) {
                String strM3890 = C0259.m3890(this.f1453, i4, i3);
                m4043(strM3890);
                if (this.f1461 && this.f1454 != null) {
                    StringBuilder sb2 = new StringBuilder();
                    C0187 c0188 = this.f1454;
                    c0188.f650 = C0663.m5888(sb2, c0188.f650, strM3890);
                }
            }
            int i5 = this.f1428;
            if (i3 < i5) {
                String strM3891 = C0259.m3890(this.f1453, i3, i5);
                InterfaceC0172 interfaceC0173 = this.f1441;
                if (interfaceC0173 != null) {
                    interfaceC0173.m3521(strM3891);
                }
            }
        } else if (i == 3) {
            while (i3 > this.f1469 && (this.f1434[this.f1453.charAt(i3 - 1)] & 1) != 0) {
                i3--;
            }
            int i6 = this.f1469;
            if (i3 > i6) {
                String strM3892 = C0259.m3890(this.f1453, i6, i3);
                m4043(strM3892);
                this.f1463 = this.f1442;
                if (this.f1461 && this.f1454 != null) {
                    StringBuilder sb3 = new StringBuilder();
                    C0187 c0189 = this.f1454;
                    c0189.f650 = C0663.m5888(sb3, c0189.f650, strM3892);
                }
            }
            this.f1469 = i3;
            return;
        }
        this.f1463 = this.f1442;
        this.f1469 = this.f1428;
    }

    public boolean m4025() {
        return (this.f1429 & 2) != 0;
    }

    public String m4026() {
        return C0259.m3890(this.f1453, this.f1443, this.f1438);
    }

    public final boolean m4029() {
        return !this.f1424 || this.f1436;
    }

    public final void m4030() {
        String strM4026 = m4026();
        String strM4037 = this.f1428 > this.f1469 ? m4037() : "";
        String strTrim = strM4026.trim();
        InterfaceC0172 interfaceC0172 = this.f1441;
        if (interfaceC0172 != null) {
            interfaceC0172.m3530(strTrim, strM4037);
        }
        if (this.f1461 && strM4026.equals(C0128.m3233(950, 5, 17)) && this.f1454 != null) {
            StringBuilder sb = new StringBuilder();
            C0187 c0187 = this.f1454;
            c0187.f650 = C0663.m5888(sb, c0187.f650, strM4037);
        }
        this.f1463 = this.f1442;
        int i = this.f1425;
        this.f1469 = i;
        this.f1443 = i;
    }

    public final void m4031() {
        C0474 c0474;
        if (this.f1424 && this.f1427.startsWith(f1417)) {
            int iIndexOf = this.f1427.indexOf(":");
            String strM3888 = iIndexOf > 0 ? C0259.m3888(this.f1427, iIndexOf + 1) : "";
            String strM4026 = m4026();
            C0563 c0563 = new C0563(strM4026, strM3888);
            if (this.f1456) {
                this.f1426.add(c0563);
            }
            this.f1455.m5569(c0563);
            for (int i = 0; i < this.f1458.size(); i++) {
                C0124 c0124 = (C0124) this.f1458.get(i);
                if (c0124 != null && strM3888.equals(c0124.f246)) {
                    c0124.f245 = strM4026;
                }
            }
            InterfaceC0172 interfaceC0172 = this.f1441;
            if (interfaceC0172 != null) {
                interfaceC0172.m3526(strM3888, strM4026);
            }
        } else if (this.f1468) {
            m4032();
        } else {
            try {
                c0474 = m4038(this.f1427);
            } catch (C0414 unused) {
                c0474 = new C0474(this.f1427);
            }
            this.f1458.add(new C0124(c0474.f2716, c0474.f2713, c0474.f2715, m4032()));
        }
        this.f1427 = "";
        this.f1443 = this.f1425;
        this.f1437 = false;
    }

    public String m4032() {
        if (!this.f1437) {
            int i = this.f1438;
            int i2 = this.f1443;
            return i <= i2 ? "" : C0259.m3890(this.f1453, i2, i);
        }
        int i3 = this.f1443;
        int i4 = this.f1438;
        if (i3 < i4) {
            this.f1446.append(C0259.m3890(this.f1453, i3, i4));
        }
        return this.f1446.toString();
    }

    public final void m4035(boolean z) throws C0414 {
        int size;
        C0187 c0187;
        boolean z2 = false;
        m4023(0);
        String strM5181 = z ? this.f1433 : this.f1465.m5181(this.f1453, this.f1443, this.f1438);
        if (this.f1430 && strM5181.equalsIgnoreCase(f1419)) {
            this.f1430 = false;
        }
        if (this.f1461 || this.f1424) {
            C0474 c0474M4047 = this.f1424 ? m4047(strM5181, false) : new C0474(this.f1440 ? strM5181 : m4040(strM5181));
            if (this.f1461 && (c0187 = this.f1454) != null) {
                c0187.f651 = this.f1425;
                if (z) {
                    c0187.f649 = c0187.f646;
                } else {
                    c0187.f649 = this.f1444;
                }
                if (this.f1445 && this.f1454.m3612().length() == 0) {
                    C0187 c0188 = this.f1454;
                    int i = c0188.f649;
                    int i2 = c0188.f646;
                    if (i > i2) {
                        boolean z3 = true;
                        while (z3 && i2 < this.f1454.f649) {
                            if ((this.f1434[this.f1453.charAt(i2)] & 1) == 0) {
                                z3 = false;
                            }
                            i2++;
                        }
                        C0187 c0189 = this.f1454;
                        String strM3890 = C0259.m3890(this.f1453, c0189.f646, c0189.f649);
                        if (z3) {
                            this.f1454.f650 = strM3890;
                        }
                    }
                }
            }
            C0187 c01810 = this.f1454;
            C0187 c01811 = c01810 == null ? null : c01810.f648;
            String str = c0474M4047.f2713;
            String str2 = c0474M4047.f2716;
            InterfaceC0172 interfaceC0172 = this.f1441;
            if (interfaceC0172 != null) {
                interfaceC0172.m3531(str, str2, strM5181, z);
            }
            if (this.f1461 && c01811 != null) {
                this.f1454 = c01811;
            }
            if (this.f1424) {
                if (this.f1462.isEmpty() || !strM5181.equals(this.f1462.lastElement())) {
                    throw new C0414(201, C0663.m5888(new StringBuilder(), f1420, strM5181));
                }
                Vector vector = this.f1462;
                vector.removeElementAt(vector.size() - 1);
                List<C0563> list = this.f1455.f3256;
                if (list != null) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        String str3 = list.get(i3).f3174;
                        InterfaceC0172 interfaceC0173 = this.f1441;
                        if (interfaceC0173 != null) {
                            interfaceC0173.m3522(str3);
                        }
                    }
                }
                C0586 c0586 = this.f1455;
                int i4 = c0586.f3255;
                if (i4 > 0) {
                    c0586.f3255 = i4 - 1;
                    if (c0586.f3255 == 0) {
                        z2 = true;
                        size = c0586.f3257.size();
                        if (!z2 && size > 0) {
                            size--;
                            c0586.f3257.remove(size);
                        }
                        c0586.f3256 = size > 0 ? c0586.f3257.get(size - 1) : null;
                    }
                } else {
                    size = c0586.f3257.size();
                    if (!z2) {
                        size--;
                        c0586.f3257.remove(size);
                    }
                    c0586.f3256 = size > 0 ? c0586.f3257.get(size - 1) : null;
                }
            }
        } else {
            String strM4040 = this.f1440 ? strM5181 : m4040(strM5181);
            InterfaceC0172 interfaceC0174 = this.f1441;
            if (interfaceC0174 != null) {
                interfaceC0174.m3531("", strM4040, strM5181, z);
            }
        }
        this.f1443 = this.f1425;
        this.f1463 = this.f1442;
    }

    public final void m4036() {
        m4023(0);
        String strM4026 = m4026();
        InterfaceC0172 interfaceC0172 = this.f1441;
        if (interfaceC0172 != null) {
            interfaceC0172.m3523(strM4026);
        }
        this.f1463 = this.f1442;
    }

    public String m4037() {
        int i = this.f1428;
        int i2 = this.f1469;
        return i <= i2 ? "" : C0259.m3890(this.f1453, i2, i);
    }

    public String m4039() {
        C0187 c0187 = this.f1454;
        return c0187 == null ? "" : c0187.f650.toString();
    }

    public final void m4041() throws C0414 {
        m4021(true);
        m4035(true);
    }

    public final void m4042() {
        this.f1459 = 0;
        this.f1430 = false;
        this.f1433 = "";
        this.f1427 = "";
        this.f1425 = 0;
        this.f1444 = 0;
        this.f1463 = 0;
        this.f1442 = 0;
        this.f1457 = 0;
        this.f1469 = 0;
        this.f1428 = 0;
        this.f1443 = 0;
        this.f1438 = 0;
        this.f1447 = 0;
        this.f1464 = 0;
        this.f1462.clear();
        C0586 c0586 = this.f1455;
        c0586.f3257.clear();
        c0586.f3256 = null;
        c0586.f3255 = 0;
        this.f1423 = null;
        this.f1454 = null;
        this.f1458.clear();
        this.f1426.clear();
        this.f1465 = new C0492();
        this.f1453 = new StringBuilder();
        m4307(C0128.m3233(TypedValues.CycleType.TYPE_WAVE_PHASE, 5, 113));
    }

    public boolean m4044() {
        return (this.f1429 & 1) != 0;
    }

    @Override
    public void mo3392(boolean z) {
        this.f1462 = null;
        this.f1455 = null;
        this.f1458 = null;
        this.f1426 = null;
        this.f1465 = null;
        this.f1423 = null;
        this.f1454 = null;
        this.f1453 = null;
    }

    public C0187 m4024(String str) {
        boolean z;
        C0187 c0187M3618;
        if (str.equals(this.f1431) && this.f1431.startsWith("/")) {
            return this.f1470;
        }
        this.f1431 = str;
        if (str.startsWith("/")) {
            z = true;
            str = str.substring(1);
        } else {
            z = false;
        }
        if (z || (c0187M3618 = this.f1454) == null) {
            c0187M3618 = this.f1423;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/");
        if (stringTokenizer.hasMoreTokens() && c0187M3618 != null) {
            c0187M3618 = c0187M3618.m3618(stringTokenizer, z);
        }
        this.f1470 = c0187M3618;
        return c0187M3618;
    }

    public void m4027(String str) throws C0414 {
        C0187 c0187;
        int i;
        int i2;
        int i3;
        this.f1431 = "";
        if (this.f1467) {
            this.f1453.append(str);
        } else {
            if (this.f1459 != 0 || (i3 = this.f1469) >= this.f1463) {
                int i4 = this.f1463;
                if (i4 > 0) {
                    int length = i4 < this.f1453.length() ? this.f1463 : this.f1453.length();
                    this.f1453.delete(0, length);
                    this.f1457 += length;
                }
            } else {
                this.f1453.delete(0, i3);
                int i5 = this.f1469;
                this.f1463 = i5;
                this.f1457 += i5;
            }
            int i6 = this.f1463;
            if (i6 > 0) {
                int i7 = this.f1443;
                this.f1443 = i7 < i6 ? 0 : i7 - i6;
                int i8 = this.f1438;
                this.f1438 = i8 < i6 ? 0 : i8 - i6;
                int i9 = this.f1469;
                this.f1469 = i9 < i6 ? 0 : i9 - i6;
                int i10 = this.f1428;
                this.f1428 = i10 < i6 ? 0 : i10 - i6;
                int i11 = this.f1442;
                this.f1442 = i11 < i6 ? 0 : i11 - i6;
                int i12 = this.f1425;
                this.f1425 = i12 < i6 ? 0 : i12 - i6;
                int i13 = this.f1444;
                this.f1444 = i13 < i6 ? 0 : i13 - i6;
                int i14 = this.f1447;
                this.f1447 = i14 < i6 ? 0 : i14 - i6;
                int i15 = this.f1464;
                this.f1464 = i15 < i6 ? 0 : i15 - i6;
                if (this.f1445 && this.f1461 && (c0187 = this.f1454) != null && c0187.f649 == 0 && (i = c0187.f646) >= (i2 = this.f1463)) {
                    c0187.f646 = i - i2;
                }
                this.f1463 = 0;
            }
            this.f1453.append(str);
        }
        m4034(this.f1425 + str.length());
    }

    public final C0474 m4028(String str) throws C0414 {
        String strSubstring;
        String strSubstring2;
        int iIndexOf = str.indexOf(58);
        String str2 = "";
        if (iIndexOf > 0) {
            strSubstring = str.substring(iIndexOf + 1);
            strSubstring2 = str.substring(0, iIndexOf);
        } else {
            strSubstring = str;
            strSubstring2 = "";
        }
        C0563 c0563M5568 = this.f1455.m5568(strSubstring2);
        if (c0563M5568 == null) {
            String strM3233 = C0128.m3233(955, 46, 11);
            if (!m4025()) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, strM3233);
            }
            mo3152(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, strM3233);
        } else {
            str2 = c0563M5568.f3174;
        }
        return new C0474(strSubstring2, strSubstring, str2, str);
    }

    public final C0474 m4038(String str) throws C0414 {
        String strSubstring;
        String strSubstring2;
        int iIndexOf = str.indexOf(58);
        String str2 = "";
        if (iIndexOf > 0) {
            strSubstring2 = str.substring(0, iIndexOf);
            if (strSubstring2.equals(C0128.m3233(1049, 3, 83))) {
                C0128.m3233(FieldBehaviorProto.FIELD_BEHAVIOR_FIELD_NUMBER, 36, 26);
            }
            strSubstring = str.substring(iIndexOf + 1);
        } else {
            strSubstring = str;
            strSubstring2 = "";
        }
        if (strSubstring2.length() != 0) {
            C0563 c0563M5568 = this.f1455.m5568(strSubstring2);
            if (c0563M5568 == null) {
                String strM3233 = C0128.m3233(1001, 48, 14);
                if (!m4044()) {
                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, strM3233);
                }
                mo3152(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, strM3233);
            } else {
                str2 = c0563M5568.f3174;
            }
        }
        return new C0474(strSubstring2, strSubstring, str2, str);
    }

    public void m4043(String str) {
        InterfaceC0172 interfaceC0172 = this.f1441;
        if (interfaceC0172 != null) {
            interfaceC0172.m3525(str);
        }
    }

    public final String m4040(String str) {
        int iIndexOf = str.indexOf(58);
        return iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        String str;
        int iIndexOf;
        boolean z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (c0440.m4813(C0128.m3233(89, 26, 68))) {
            if (c0440.f2269) {
                return C0663.m5891("").append((this.f1429 & 1) != 0).toString();
            }
            this.f1429 = c0440.m4809() ? this.f1429 | 1 : this.f1429 & (-2);
        } else if (c0440.m4813(C0128.m3233(115, 24, 4))) {
            if (c0440.f2269) {
                return C0663.m5891("").append((this.f1429 & 2) != 0).toString();
            }
            this.f1429 = c0440.m4809() ? this.f1429 | 2 : this.f1429 & (-3);
        } else if (c0440.m4813(C0128.m3233(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 12, 77))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1467).toString();
            }
            this.f1467 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3233(151, 22, 106))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1448).toString();
            }
            this.f1448 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3233(173, 12, 82))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1460).toString();
            }
            this.f1460 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3233(185, 17, 40))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1452).toString();
            }
            this.f1452 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3233(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, 15, 12))) {
            if (!c0440.f2269 && (iIndexOf = (str = c0440.f2271).indexOf(":")) > -1) {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                C0563 c0563 = new C0563(strSubstring2, strSubstring);
                if (this.f1456) {
                    this.f1426.add(c0563);
                }
                int size = this.f1435.size();
                if (size > 0) {
                    for (int i = 0; i < size; i++) {
                        C0474 c0474 = this.f1435.get(i);
                        if (c0474.f2715.equals(strSubstring) && c0474.f2713.equals("")) {
                            c0474.f2713 = strSubstring2;
                        }
                    }
                } else {
                    this.f1455.m5569(c0563);
                }
            }
        } else if (c0440.m4813(C0128.m3233(JfifUtil.MARKER_EOI, 18, 79))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1445).toString();
            }
            this.f1445 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3233(235, 16, 9))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1450).toString();
            }
            this.f1450 = c0440.m4809();
        } else {
            if (c0440.m4813(C0128.m3233(251, 8, 92)) && !c0440.f2269) {
                StringBuilder sbM5891 = C0663.m5891("");
                String str2 = c0440.f2271;
                if (str2 != null && !str2.equals("") && !str2.equals(".") && this.f1423 != null && m4024(str2) != null) {
                    z = true;
                }
                return sbM5891.append(z).toString();
            }
            if (c0440.m4813(C0128.m3233(259, 21, 59))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1422).toString();
                }
                this.f1422 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3233(280, 17, 3))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1451).toString();
                }
                boolean zM4809 = c0440.m4809();
                if (zM4809) {
                    byte[] bArr = this.f1434;
                    byte[] bArr2 = f1418;
                    if (bArr == bArr2) {
                        byte[] bArr3 = new byte[bArr2.length];
                        this.f1434 = bArr3;
                        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                    }
                }
                for (int i2 = 48; i2 < 58; i2++) {
                    byte[] bArr4 = this.f1434;
                    bArr4[i2] = (byte) (bArr4[i2] | 2);
                }
                this.f1451 = zM4809;
            } else {
                if (c0440.m4813(C0128.m3233(297, 9, 115)) && c0440.f2269) {
                    C0187 c0187 = this.f1454;
                    return (c0187 == null || !this.f1467) ? "" : C0259.m3890(this.f1453, c0187.f646, c0187.f649);
                }
                if (c0440.m4813(C0128.m3233(306, 7, 62)) && c0440.f2269) {
                    return this.f1453.substring(this.f1463, this.f1442);
                }
                if (c0440.m4813(C0128.m3233(313, 23, 0))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f1466).toString();
                    }
                    this.f1466 = c0440.m4805();
                } else {
                    if (c0440.m4813(C0128.m3233(336, 20, 80)) && c0440.f2269) {
                        return !this.f1467 ? C0663.m5891("").append(this.f1457 + this.f1444).toString() : C0663.m5891("").append(this.f1444).toString();
                    }
                    if (c0440.m4813(C0128.m3233(356, 20, 127))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(this.f1449).toString();
                        }
                        this.f1449 = c0440.m4809();
                    } else if (c0440.m4813(C0128.m3233(376, 23, 9))) {
                        if (c0440.f2269) {
                            return this.f1436 ? C0128.m3233(399, 4, SyslogConstants.LOG_CLOCK) : C0128.m3233(TypedValues.CycleType.TYPE_ALPHA, 5, 3);
                        }
                        this.f1436 = c0440.m4809();
                    } else if (c0440.m4813(C0128.m3233(TSLocationManager.LOCATION_ERROR_TIMEOUT, 17, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(this.f1432).toString();
                        }
                        this.f1432 = c0440.m4809();
                    } else {
                        return super.mo3151(c0440);
                    }
                }
            }
        }
        return "";
    }

    public void m4033(String str) throws C0414 {
        if (str == null || str.equals("") || str.equals(".")) {
            return;
        }
        if (!str.equals("") && !str.equals(".")) {
            if (this.f1423 != null) {
                C0187 c0187M4024 = m4024(str);
                if (c0187M4024 != null) {
                    this.f1454 = c0187M4024;
                    this.f1458 = c0187M4024.f643;
                    this.f1426 = c0187M4024.f642;
                    if (this.f1452) {
                        c0187M4024.m3614();
                    }
                }
                if (c0187M4024 != null) {
                    return;
                }
            } else {
                throw new C0414(210, C0128.m3233(855, 56, 49));
            }
        }
        throw new C0414(207, C0128.m3233(841, 14, 119));
    }

    public final void m4034(int i) throws C0414 {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        while (true) {
            int i8 = this.f1425;
            if (i8 != i) {
                char cCharAt = this.f1453.charAt(i8);
                int i9 = this.f1425;
                int i10 = i9 + 1;
                this.f1425 = i10;
                int i11 = 3;
                int i12 = 2;
                switch (this.f1459) {
                    case 0:
                        while (true) {
                            if (this.f1459 == 0) {
                                continue;
                            } else {
                                if (cCharAt != '\n') {
                                    i5 = i12;
                                    if (this.f1439) {
                                        int i13 = this.f1425;
                                        this.f1442 = i13;
                                        this.f1428 = i13;
                                        m4023(3);
                                    }
                                    i6 = this.f1425;
                                    if (i6 == i) {
                                        StringBuilder sb = this.f1453;
                                        this.f1425 = i6 + 1;
                                        i12 = i5;
                                        cCharAt = sb.charAt(i6);
                                    }
                                    break;
                                } else if (cCharAt != '&') {
                                    i5 = i12;
                                    if (!this.f1432) {
                                        int i14 = this.f1425;
                                        this.f1428 = i14 - 1;
                                        this.f1447 = i14;
                                        this.f1459 = 14;
                                        i12 = i5;
                                    }
                                } else if (cCharAt != '<') {
                                    i5 = i12;
                                } else {
                                    int i15 = this.f1425;
                                    int i16 = i15 - 1;
                                    this.f1442 = i16;
                                    this.f1428 = i16;
                                    this.f1443 = i15;
                                    i5 = i12;
                                    m4023(i5);
                                    this.f1459 = i5;
                                    if (!this.f1468) {
                                        this.f1458 = new Vector();
                                    }
                                    i12 = i5;
                                }
                                i6 = this.f1425;
                                if (i6 == i) {
                                    StringBuilder sb2 = this.f1453;
                                    this.f1425 = i6 + 1;
                                    i12 = i5;
                                    cCharAt = sb2.charAt(i6);
                                }
                            }
                            break;
                        }
                        break;
                    case 1:
                        while (true) {
                            if (this.f1459 == 1) {
                                continue;
                            } else if ((this.f1434[cCharAt] & 4) != 0) {
                                i2 = this.f1425;
                                if (i2 == i) {
                                    StringBuilder sb3 = this.f1453;
                                    this.f1425 = i2 + 1;
                                    cCharAt = sb3.charAt(i2);
                                }
                                break;
                            } else {
                                i3 = this.f1425;
                                this.f1442 = i3;
                                if (cCharAt != '!') {
                                    this.f1443 = i3;
                                    m4023(0);
                                    this.f1459 = 22;
                                } else if (cCharAt != '/') {
                                    if (cCharAt != '?') {
                                        this.f1443 = i3;
                                        m4023(0);
                                        this.f1459 = 21;
                                    } else if (this.f1430) {
                                        this.f1469--;
                                        this.f1459 = 0;
                                        this.f1425--;
                                    } else {
                                        int i17 = this.f1425 - 1;
                                        this.f1438 = i17;
                                        this.f1433 = this.f1465.m5181(this.f1453, this.f1443, i17);
                                        this.f1443 = this.f1425;
                                        this.f1427 = "";
                                        if (this.f1424) {
                                            C0586 c0586 = this.f1455;
                                            c0586.f3256 = null;
                                            c0586.f3255++;
                                            this.f1462.addElement(this.f1433);
                                        }
                                        if (cCharAt == '>') {
                                            i4 = this.f1425;
                                            this.f1469 = i4;
                                            if (this.f1453.charAt(i4 - 2) == '/') {
                                                m4041();
                                            } else {
                                                m4021(false);
                                            }
                                            this.f1459 = 8;
                                        } else {
                                            this.f1459 = 3;
                                        }
                                    }
                                } else if (this.f1453.charAt(i3 - 2) == '<') {
                                    this.f1459 = 13;
                                    this.f1443 = this.f1425;
                                } else if (this.f1430) {
                                    this.f1469--;
                                    this.f1459 = 0;
                                    this.f1425--;
                                } else {
                                    int i18 = this.f1425 - 1;
                                    this.f1438 = i18;
                                    this.f1433 = this.f1465.m5181(this.f1453, this.f1443, i18);
                                    this.f1443 = this.f1425;
                                    this.f1427 = "";
                                    if (this.f1424) {
                                        C0586 c0587 = this.f1455;
                                        c0587.f3256 = null;
                                        c0587.f3255++;
                                        this.f1462.addElement(this.f1433);
                                    }
                                    if (cCharAt == '>') {
                                        i4 = this.f1425;
                                        this.f1469 = i4;
                                        if (this.f1453.charAt(i4 - 2) == '/') {
                                            m4041();
                                        } else {
                                            m4021(false);
                                        }
                                        this.f1459 = 8;
                                    } else {
                                        this.f1459 = 3;
                                    }
                                }
                            }
                        }
                        break;
                    case 2:
                        int i19 = i9 - 1;
                        this.f1444 = i19;
                        if ((this.f1434[cCharAt] & 2) == 0 && cCharAt != '/' && cCharAt != '?' && cCharAt != '!') {
                            this.f1469 = i19;
                            this.f1459 = 0;
                            this.f1425 = i9;
                            if (!m4029() && this.f1449 && this.f1453.charAt(this.f1425 - 1) == '<') {
                                throw new C0414(204, C0128.m3233(1141, 32, 35));
                            }
                        } else {
                            this.f1459 = 1;
                            while (true) {
                                if (this.f1459 == 1) {
                                    continue;
                                } else if ((this.f1434[cCharAt] & 4) != 0) {
                                    i2 = this.f1425;
                                    if (i2 == i) {
                                        StringBuilder sb4 = this.f1453;
                                        this.f1425 = i2 + 1;
                                        cCharAt = sb4.charAt(i2);
                                    }
                                    break;
                                } else {
                                    i3 = this.f1425;
                                    this.f1442 = i3;
                                    if (cCharAt != '!') {
                                        this.f1443 = i3;
                                        m4023(0);
                                        this.f1459 = 22;
                                    } else if (cCharAt != '/') {
                                        if (cCharAt != '?') {
                                            this.f1443 = i3;
                                            m4023(0);
                                            this.f1459 = 21;
                                        } else if (this.f1430) {
                                            this.f1469--;
                                            this.f1459 = 0;
                                            this.f1425--;
                                        } else {
                                            int i110 = this.f1425 - 1;
                                            this.f1438 = i110;
                                            this.f1433 = this.f1465.m5181(this.f1453, this.f1443, i110);
                                            this.f1443 = this.f1425;
                                            this.f1427 = "";
                                            if (this.f1424) {
                                                C0586 c0588 = this.f1455;
                                                c0588.f3256 = null;
                                                c0588.f3255++;
                                                this.f1462.addElement(this.f1433);
                                            }
                                            if (cCharAt == '>') {
                                                i4 = this.f1425;
                                                this.f1469 = i4;
                                                if (this.f1453.charAt(i4 - 2) == '/') {
                                                    m4041();
                                                } else {
                                                    m4021(false);
                                                }
                                                this.f1459 = 8;
                                            } else {
                                                this.f1459 = 3;
                                            }
                                        }
                                    } else if (this.f1453.charAt(i3 - 2) == '<') {
                                        this.f1459 = 13;
                                        this.f1443 = this.f1425;
                                    } else if (this.f1430) {
                                        this.f1469--;
                                        this.f1459 = 0;
                                        this.f1425--;
                                    } else {
                                        int i111 = this.f1425 - 1;
                                        this.f1438 = i111;
                                        this.f1433 = this.f1465.m5181(this.f1453, this.f1443, i111);
                                        this.f1443 = this.f1425;
                                        this.f1427 = "";
                                        if (this.f1424) {
                                            C0586 c0589 = this.f1455;
                                            c0589.f3256 = null;
                                            c0589.f3255++;
                                            this.f1462.addElement(this.f1433);
                                        }
                                        if (cCharAt == '>') {
                                            i4 = this.f1425;
                                            this.f1469 = i4;
                                            if (this.f1453.charAt(i4 - 2) == '/') {
                                                m4041();
                                            } else {
                                                m4021(false);
                                            }
                                            this.f1459 = 8;
                                        } else {
                                            this.f1459 = 3;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 3:
                        while (true) {
                            if ((this.f1434[cCharAt] & 1) != 0 || cCharAt == '/') {
                                int i20 = this.f1425;
                                this.f1469 = i20;
                                if (i20 != i) {
                                    StringBuilder sb5 = this.f1453;
                                    this.f1425 = i20 + 1;
                                    cCharAt = sb5.charAt(i20);
                                }
                            } else if (cCharAt == '>') {
                                int i21 = this.f1425;
                                this.f1442 = i21;
                                this.f1469 = i21;
                                if (this.f1453.charAt(i21 - 2) == '/') {
                                    m4041();
                                } else {
                                    m4021(false);
                                }
                                this.f1459 = 8;
                            } else {
                                if (!m4029() && (this.f1434[cCharAt] & 2) == 0) {
                                    throw new C0414(204, C0128.m3233(1173, 18, 43) + cCharAt + C0128.m3233(1191, 27, 49));
                                }
                                this.f1443 = this.f1425 - 1;
                                this.f1459 = 4;
                            }
                            break;
                        }
                        break;
                    case 4:
                        while (true) {
                            if (this.f1459 != 4) {
                                continue;
                            } else {
                                boolean z = (this.f1434[cCharAt] & 1) != 0;
                                boolean z2 = cCharAt == '>';
                                boolean z3 = cCharAt == '=';
                                boolean z4 = cCharAt == '/';
                                if (!z && !z2 && !z3 && !z4) {
                                    if (!m4029() && (this.f1434[cCharAt] & 4) == 0) {
                                        throw new C0414(204, C0128.m3233(1218, 18, 30) + cCharAt + C0128.m3233(1236, 27, 62));
                                    }
                                    int i22 = this.f1425;
                                    if (i22 != i) {
                                        StringBuilder sb6 = this.f1453;
                                        this.f1425 = i22 + 1;
                                        cCharAt = sb6.charAt(i22);
                                    }
                                    break;
                                } else {
                                    int i23 = this.f1425 - 1;
                                    this.f1438 = i23;
                                    this.f1427 = this.f1465.m5181(this.f1453, this.f1443, i23);
                                    int i24 = this.f1425;
                                    this.f1443 = i24;
                                    if (z) {
                                        this.f1459 = 5;
                                        this.f1443 = i24;
                                    } else if (z3) {
                                        this.f1459 = 6;
                                    } else {
                                        this.f1438 = i24 - 1;
                                        m4031();
                                        if (z2) {
                                            int i25 = this.f1425;
                                            this.f1469 = i25;
                                            if (this.f1453.charAt(i25 - 2) == '/') {
                                                m4041();
                                            } else {
                                                m4021(false);
                                            }
                                            this.f1459 = 8;
                                        } else {
                                            this.f1459 = 5;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 5:
                        while (true) {
                            if ((this.f1434[cCharAt] & 1) != 0) {
                                int i26 = this.f1425;
                                if (i26 != i) {
                                    StringBuilder sb7 = this.f1453;
                                    this.f1425 = i26 + 1;
                                    cCharAt = sb7.charAt(i26);
                                }
                            } else {
                                int i27 = this.f1425;
                                int i28 = i27 - 1;
                                this.f1443 = i28;
                                if (cCharAt == '=') {
                                    this.f1459 = 6;
                                } else if (cCharAt != '>') {
                                    this.f1438 = i28;
                                    m4031();
                                    this.f1443 = this.f1425 - 1;
                                    this.f1459 = 4;
                                } else {
                                    this.f1442 = i27;
                                    this.f1438 = i28;
                                    m4031();
                                    if (this.f1453.charAt(this.f1425 - 2) == '/') {
                                        m4041();
                                    } else {
                                        m4021(false);
                                    }
                                    this.f1459 = 8;
                                }
                            }
                            break;
                        }
                        break;
                    case 6:
                        while (true) {
                            if ((this.f1434[cCharAt] & 1) != 0) {
                                int i29 = this.f1425;
                                if (i29 != i) {
                                    StringBuilder sb8 = this.f1453;
                                    this.f1425 = i29 + 1;
                                    cCharAt = sb8.charAt(i29);
                                }
                            } else if (cCharAt == '\"') {
                                this.f1459 = 12;
                                this.f1443 = this.f1425;
                            } else if (cCharAt != '>') {
                                if (cCharAt == '&') {
                                    this.f1459 = 15;
                                    this.f1447 = this.f1425;
                                    this.f1437 = true;
                                    this.f1446.setLength(0);
                                } else if (cCharAt != '\'') {
                                    this.f1443 = this.f1425 - 1;
                                    this.f1459 = 7;
                                } else {
                                    this.f1459 = 11;
                                    this.f1443 = this.f1425;
                                }
                            } else if (!this.f1424) {
                                int i30 = this.f1425;
                                this.f1442 = i30;
                                this.f1438 = i30 - 1;
                                m4031();
                                if (this.f1453.charAt(this.f1425 - 2) == '/') {
                                    m4041();
                                } else {
                                    m4021(false);
                                }
                                this.f1459 = 8;
                            } else {
                                throw new C0414(204, C0128.m3233(1263, 19, 50));
                            }
                            break;
                        }
                        break;
                    case 7:
                        while (true) {
                            if (this.f1459 != 7) {
                                continue;
                            } else {
                                boolean z5 = cCharAt == '>';
                                if (cCharAt == '&') {
                                    this.f1459 = 15;
                                    this.f1447 = this.f1425;
                                } else if ((this.f1434[cCharAt] & 1) == 0 && !z5) {
                                    int i31 = this.f1425;
                                    if (i31 != i) {
                                        StringBuilder sb9 = this.f1453;
                                        this.f1425 = i31 + 1;
                                        cCharAt = sb9.charAt(i31);
                                    }
                                    break;
                                } else {
                                    int i32 = this.f1425;
                                    this.f1438 = i32 - 1;
                                    boolean z6 = this.f1453.charAt(i32 + (-2)) == '/';
                                    if (z5 && z6) {
                                        this.f1438 = this.f1425 - 2;
                                    }
                                    this.f1442 = this.f1425;
                                    m4031();
                                    if (z5) {
                                        this.f1469 = this.f1425;
                                        if (z6) {
                                            m4041();
                                        } else {
                                            m4021(false);
                                        }
                                        this.f1459 = 8;
                                    } else {
                                        this.f1459 = 3;
                                    }
                                }
                            }
                        }
                        break;
                    case 8:
                        while (true) {
                            if ((this.f1434[cCharAt] & 1) != 0) {
                                int i33 = this.f1425;
                                if (i33 != i) {
                                    StringBuilder sb10 = this.f1453;
                                    this.f1425 = i33 + 1;
                                    cCharAt = sb10.charAt(i33);
                                }
                            } else {
                                if (cCharAt == '<' || !this.f1445) {
                                    int i34 = this.f1425 - 1;
                                    this.f1442 = i34;
                                    this.f1428 = i34;
                                    this.f1443 = i34;
                                    m4023(1);
                                }
                                this.f1459 = 0;
                                while (true) {
                                    if (this.f1459 == 0) {
                                        continue;
                                    } else {
                                        if (cCharAt != '\n') {
                                            i5 = i12;
                                            if (this.f1439) {
                                                int i112 = this.f1425;
                                                this.f1442 = i112;
                                                this.f1428 = i112;
                                                m4023(3);
                                            }
                                            i6 = this.f1425;
                                            if (i6 == i) {
                                                StringBuilder sb11 = this.f1453;
                                                this.f1425 = i6 + 1;
                                                i12 = i5;
                                                cCharAt = sb11.charAt(i6);
                                            }
                                            break;
                                        } else if (cCharAt != '&') {
                                            i5 = i12;
                                            if (!this.f1432) {
                                                int i113 = this.f1425;
                                                this.f1428 = i113 - 1;
                                                this.f1447 = i113;
                                                this.f1459 = 14;
                                                i12 = i5;
                                            }
                                        } else if (cCharAt != '<') {
                                            i5 = i12;
                                        } else {
                                            int i114 = this.f1425;
                                            int i115 = i114 - 1;
                                            this.f1442 = i115;
                                            this.f1428 = i115;
                                            this.f1443 = i114;
                                            i5 = i12;
                                            m4023(i5);
                                            this.f1459 = i5;
                                            if (!this.f1468) {
                                                this.f1458 = new Vector();
                                            }
                                            i12 = i5;
                                        }
                                        i6 = this.f1425;
                                        if (i6 == i) {
                                            StringBuilder sb12 = this.f1453;
                                            this.f1425 = i6 + 1;
                                            i12 = i5;
                                            cCharAt = sb12.charAt(i6);
                                        }
                                    }
                                }
                            }
                            break;
                        }
                        break;
                    case 9:
                    case 10:
                    default:
                        break;
                    case 11:
                        while (true) {
                            if (this.f1459 != 11) {
                                continue;
                            } else if (cCharAt != '&') {
                                if (cCharAt == '\'') {
                                    this.f1438 = this.f1425 - 1;
                                    m4031();
                                    this.f1459 = 3;
                                } else {
                                    i7 = this.f1425;
                                    if (i7 == i) {
                                        StringBuilder sb13 = this.f1453;
                                        this.f1425 = i7 + 1;
                                        cCharAt = sb13.charAt(i7);
                                    }
                                }
                            } else if (!this.f1432) {
                                if (!this.f1437) {
                                    this.f1437 = true;
                                    this.f1446.setLength(0);
                                }
                                int i35 = this.f1425;
                                this.f1438 = i35 - 1;
                                this.f1447 = i35;
                                this.f1459 = 16;
                            } else {
                                i7 = this.f1425;
                                if (i7 == i) {
                                    StringBuilder sb14 = this.f1453;
                                    this.f1425 = i7 + 1;
                                    cCharAt = sb14.charAt(i7);
                                }
                            }
                            break;
                        }
                        break;
                    case 12:
                        while (true) {
                            if (this.f1459 != 12) {
                                continue;
                            } else if (cCharAt != '\"') {
                                if (cCharAt == '&' && !this.f1432) {
                                    if (!this.f1437) {
                                        this.f1437 = true;
                                        this.f1446.setLength(0);
                                    }
                                    int i36 = this.f1425;
                                    this.f1438 = i36 - 1;
                                    this.f1447 = i36;
                                    this.f1459 = 17;
                                } else {
                                    int i37 = this.f1425;
                                    if (i37 != i) {
                                        StringBuilder sb15 = this.f1453;
                                        this.f1425 = i37 + 1;
                                        cCharAt = sb15.charAt(i37);
                                    }
                                }
                            } else {
                                this.f1438 = this.f1425 - 1;
                                m4031();
                                this.f1459 = 3;
                            }
                            break;
                        }
                        break;
                    case 13:
                        if (this.f1453.charAt(i9 - 1) == '/' && (this.f1434[cCharAt] & 2) == 0) {
                            this.f1469--;
                            this.f1459 = 0;
                            this.f1425--;
                        } else {
                            while (true) {
                                if ((this.f1434[cCharAt] & 4) != 0) {
                                    int i38 = this.f1425;
                                    if (i38 != i) {
                                        StringBuilder sb16 = this.f1453;
                                        this.f1425 = i38 + 1;
                                        cCharAt = sb16.charAt(i38);
                                    }
                                    break;
                                } else {
                                    this.f1459 = 29;
                                    this.f1438 = this.f1425 - 1;
                                    if ((this.f1434[cCharAt] & 1) == 0) {
                                        this.f1442 = this.f1425;
                                        m4035(false);
                                        this.f1459 = cCharAt != '>' ? 18 : 8;
                                    }
                                }
                            }
                        }
                        break;
                    case 14:
                        while (true) {
                            if (this.f1459 == 14) {
                                if ((this.f1434[cCharAt] & 4) == 0 && cCharAt != '#') {
                                    int i39 = this.f1425;
                                    this.f1442 = i39;
                                    this.f1464 = i39 - 1;
                                    m4023(0);
                                    String strM4045 = m4045(cCharAt);
                                    this.f1428 = this.f1425;
                                    if (strM4045.length() > 0) {
                                        InterfaceC0172 interfaceC0172 = this.f1441;
                                        if (interfaceC0172 != null) {
                                            interfaceC0172.m3525(strM4045);
                                        }
                                        if (this.f1461 && this.f1454 != null) {
                                            StringBuilder sb17 = new StringBuilder();
                                            C0187 c0187 = this.f1454;
                                            c0187.f650 = C0663.m5888(sb17, c0187.f650, strM4045);
                                        }
                                        this.f1463 = this.f1442;
                                        this.f1469 = this.f1428;
                                    }
                                    this.f1459 = 0;
                                    if (cCharAt != ';') {
                                        this.f1469--;
                                        this.f1425--;
                                    }
                                } else {
                                    int i40 = this.f1425;
                                    if (i40 != i) {
                                        StringBuilder sb18 = this.f1453;
                                        this.f1425 = i40 + 1;
                                        cCharAt = sb18.charAt(i40);
                                    }
                                    break;
                                }
                            } else {
                                continue;
                            }
                            break;
                        }
                        break;
                    case 15:
                        while (true) {
                            if (this.f1459 == 15) {
                                if ((this.f1434[cCharAt] & 4) == 0 && cCharAt != '#') {
                                    int i41 = this.f1425;
                                    this.f1442 = i41;
                                    this.f1464 = i41 - 1;
                                    String strM4046 = m4045(cCharAt);
                                    int i42 = this.f1438;
                                    int i43 = this.f1443;
                                    if (i42 > i43) {
                                        this.f1446.append(m4046(i43, i42));
                                    }
                                    this.f1446.append(strM4046);
                                    this.f1459 = 7;
                                    if (cCharAt != ';') {
                                        this.f1425--;
                                    } else {
                                        this.f1443 = this.f1425;
                                    }
                                } else {
                                    int i44 = this.f1425;
                                    if (i44 != i) {
                                        StringBuilder sb19 = this.f1453;
                                        this.f1425 = i44 + 1;
                                        cCharAt = sb19.charAt(i44);
                                    }
                                    break;
                                }
                            } else {
                                continue;
                            }
                            break;
                        }
                        break;
                    case 16:
                        while (true) {
                            if (this.f1459 == 16) {
                                if ((this.f1434[cCharAt] & 4) == 0 && cCharAt != '#') {
                                    int i45 = this.f1425;
                                    this.f1442 = i45;
                                    this.f1464 = i45 - 1;
                                    String strM4047 = m4045(cCharAt);
                                    this.f1446.append(m4046(this.f1443, this.f1438));
                                    this.f1446.append(strM4047);
                                    int i46 = this.f1464;
                                    this.f1438 = i46;
                                    this.f1443 = i46;
                                    this.f1459 = 11;
                                    if (cCharAt != ';') {
                                        this.f1425--;
                                    } else {
                                        this.f1443 = this.f1425;
                                    }
                                } else {
                                    int i47 = this.f1425;
                                    if (i47 != i) {
                                        StringBuilder sb20 = this.f1453;
                                        this.f1425 = i47 + 1;
                                        cCharAt = sb20.charAt(i47);
                                    }
                                    break;
                                }
                            } else {
                                continue;
                            }
                            break;
                        }
                        break;
                    case 17:
                        while (true) {
                            if (this.f1459 == 17) {
                                if ((this.f1434[cCharAt] & 4) == 0 && cCharAt != '#') {
                                    int i48 = this.f1425;
                                    this.f1442 = i48;
                                    this.f1464 = i48 - 1;
                                    String strM4048 = m4045(cCharAt);
                                    this.f1446.append(m4046(this.f1443, this.f1438));
                                    this.f1446.append(strM4048);
                                    int i49 = this.f1464;
                                    this.f1438 = i49;
                                    this.f1443 = i49;
                                    this.f1459 = 12;
                                    if (cCharAt != ';') {
                                        this.f1425--;
                                    } else {
                                        this.f1443 = this.f1425;
                                    }
                                } else {
                                    int i50 = this.f1425;
                                    if (i50 != i) {
                                        StringBuilder sb21 = this.f1453;
                                        this.f1425 = i50 + 1;
                                        cCharAt = sb21.charAt(i50);
                                    }
                                    break;
                                }
                            } else {
                                continue;
                            }
                            break;
                        }
                        break;
                    case 18:
                        if (this.f1424) {
                            throw new C0414(204, C0128.m3233(1282, 19, 77));
                        }
                        if (cCharAt == '>') {
                            this.f1459 = 0;
                        }
                        break;
                    case 19:
                        if (cCharAt == '-') {
                            this.f1443 = i10;
                            this.f1459 = 20;
                        } else {
                            this.f1459 = 23;
                        }
                        break;
                    case 20:
                        while (true) {
                            if (this.f1459 != 20) {
                                continue;
                            } else if (cCharAt == '-') {
                                this.f1459 = 30;
                            } else {
                                int i51 = this.f1425;
                                if (i51 != i) {
                                    StringBuilder sb22 = this.f1453;
                                    this.f1425 = i51 + 1;
                                    cCharAt = sb22.charAt(i51);
                                }
                            }
                            break;
                        }
                        break;
                    case 21:
                        while (true) {
                            if (this.f1459 != 21) {
                                continue;
                            } else if (cCharAt == '>' && this.f1453.charAt(this.f1425 - 2) == '?') {
                                int i52 = this.f1425;
                                this.f1442 = i52;
                                this.f1438 = i52 - 2;
                                m4023(0);
                                int i53 = this.f1443;
                                int i54 = this.f1438;
                                String strM4049 = i53 < i54 ? m4046(i53, i54) : "";
                                int iIndexOf = strM4049.indexOf(" ");
                                if (iIndexOf > -1) {
                                    C0548 c0548M5521 = f1421.m5521(strM4049.substring(iIndexOf + 1));
                                    if (c0548M5521.f3143) {
                                        while (true) {
                                            String strM5432 = c0548M5521.m5432(1);
                                            String strM5433 = c0548M5521.m5432(i11);
                                            strM5432.equalsIgnoreCase(C0128.m3233(942, 8, 4));
                                            if (!this.f1468) {
                                                this.f1458.add(new C0124(strM5432, "", "", strM5433));
                                            }
                                            if (c0548M5521.m5433()) {
                                                i11 = 3;
                                            }
                                        }
                                    }
                                }
                                InterfaceC0172 interfaceC0173 = this.f1441;
                                if (interfaceC0173 != null) {
                                    interfaceC0173.m3524(strM4049);
                                }
                                if (!this.f1468) {
                                    this.f1458.clear();
                                }
                                this.f1463 = this.f1442;
                                this.f1443 = this.f1425;
                                this.f1459 = 8;
                            } else {
                                int i55 = this.f1425;
                                if (i55 != i) {
                                    StringBuilder sb23 = this.f1453;
                                    this.f1425 = i55 + 1;
                                    cCharAt = sb23.charAt(i55);
                                    i11 = 3;
                                }
                            }
                            break;
                        }
                        break;
                    case 22:
                        if (cCharAt == '-') {
                            this.f1459 = 19;
                        } else if (cCharAt == '>') {
                            this.f1469 = i10;
                            this.f1459 = 8;
                        } else if (cCharAt != '[') {
                            this.f1459 = 23;
                        } else {
                            this.f1443 = i10;
                            this.f1459 = 25;
                        }
                        break;
                    case 23:
                        while (true) {
                            if (this.f1459 != 23) {
                                continue;
                            } else if (cCharAt == '\"') {
                                this.f1459 = 27;
                            } else if (cCharAt == '\'') {
                                this.f1459 = 26;
                            } else if (cCharAt == '>') {
                                int i56 = this.f1425;
                                this.f1442 = i56;
                                this.f1438 = i56 - 1;
                                m4023(0);
                                String strM4026 = m4026();
                                InterfaceC0172 interfaceC0174 = this.f1441;
                                if (interfaceC0174 != null) {
                                    interfaceC0174.m3529(strM4026);
                                }
                                this.f1463 = this.f1442;
                                this.f1459 = 8;
                            } else if (cCharAt != '[') {
                                int i57 = this.f1425;
                                if (i57 != i) {
                                    StringBuilder sb24 = this.f1453;
                                    this.f1425 = i57 + 1;
                                    cCharAt = sb24.charAt(i57);
                                }
                            } else {
                                this.f1459 = 28;
                            }
                            break;
                        }
                        break;
                    case 24:
                        while (true) {
                            if (this.f1459 != 24) {
                                continue;
                            } else if (cCharAt == '>' && this.f1453.charAt(this.f1425 - 2) == ']' && this.f1453.charAt(this.f1425 - 3) == ']') {
                                int i58 = this.f1425;
                                this.f1442 = i58;
                                this.f1428 = i58 - 3;
                                m4030();
                                this.f1459 = 0;
                            } else {
                                int i59 = this.f1425;
                                if (i59 != i) {
                                    StringBuilder sb25 = this.f1453;
                                    this.f1425 = i59 + 1;
                                    cCharAt = sb25.charAt(i59);
                                }
                            }
                            break;
                        }
                        break;
                    case 25:
                        while (true) {
                            if (this.f1459 != 25) {
                                continue;
                            } else if (cCharAt == '[') {
                                this.f1459 = 24;
                                int i60 = this.f1425;
                                this.f1469 = i60;
                                this.f1438 = i60 - 1;
                            } else if (cCharAt == '>' && this.f1453.charAt(this.f1425 - 2) == ']') {
                                int i61 = this.f1425;
                                this.f1442 = i61;
                                this.f1438 = i61 - 2;
                                m4030();
                                this.f1459 = 0;
                            } else {
                                int i62 = this.f1425;
                                if (i62 != i) {
                                    StringBuilder sb26 = this.f1453;
                                    this.f1425 = i62 + 1;
                                    cCharAt = sb26.charAt(i62);
                                }
                            }
                            break;
                        }
                        break;
                    case 26:
                        while (true) {
                            if (this.f1459 != 26) {
                                continue;
                            } else if (cCharAt == '\'') {
                                this.f1459 = 23;
                            } else {
                                int i63 = this.f1425;
                                if (i63 != i) {
                                    StringBuilder sb27 = this.f1453;
                                    this.f1425 = i63 + 1;
                                    cCharAt = sb27.charAt(i63);
                                }
                            }
                            break;
                        }
                        break;
                    case 27:
                        while (true) {
                            if (this.f1459 != 27) {
                                continue;
                            } else if (cCharAt == '\"') {
                                this.f1459 = 23;
                            } else {
                                int i64 = this.f1425;
                                if (i64 != i) {
                                    StringBuilder sb28 = this.f1453;
                                    this.f1425 = i64 + 1;
                                    cCharAt = sb28.charAt(i64);
                                }
                            }
                            break;
                        }
                        break;
                    case 28:
                        while (true) {
                            if (this.f1459 != 28) {
                                continue;
                            } else if (cCharAt == ']') {
                                this.f1459 = 23;
                            } else {
                                int i65 = this.f1425;
                                if (i65 != i) {
                                    StringBuilder sb29 = this.f1453;
                                    this.f1425 = i65 + 1;
                                    cCharAt = sb29.charAt(i65);
                                }
                            }
                            break;
                        }
                        break;
                    case 29:
                        if ((this.f1434[cCharAt] & 1) == 0) {
                            this.f1442 = this.f1425;
                            m4035(false);
                            this.f1459 = cCharAt != '>' ? 18 : 8;
                        }
                        break;
                    case 30:
                        if (cCharAt == '-') {
                            this.f1459 = 31;
                        } else {
                            this.f1459 = 20;
                        }
                        break;
                    case 31:
                        if (this.f1460) {
                            if (cCharAt == '-') {
                                this.f1459 = 19;
                            } else if (Character.isWhitespace(cCharAt)) {
                                if (this.f1453.charAt(this.f1425 - 3) == '-' && this.f1453.charAt(this.f1425 - 2) == '-') {
                                    int i66 = this.f1425;
                                    this.f1442 = i66;
                                    this.f1438 = i66 - 3;
                                    m4036();
                                }
                            }
                            break;
                        }
                        if (cCharAt == '>') {
                            int i67 = this.f1425;
                            this.f1442 = i67;
                            this.f1438 = i67 - 3;
                            m4036();
                            this.f1469 = this.f1425;
                            this.f1459 = 8;
                        } else {
                            throw new C0414(204, C0128.m3233(1088, 53, 88));
                        }
                        break;
                }
            }
        }
        if (this.f1422) {
            m4306();
        }
    }

    public String m4046(int i, int i2) {
        return C0259.m3890(this.f1453, i, i2);
    }

    public final String m4045(char c) {
        StringBuffer stringBuffer = new StringBuffer(16);
        if (this.f1461 || this.f1466 == 1) {
            StringBuilder sb = this.f1453;
            int i = this.f1447;
            int i2 = this.f1464;
            int i3 = i2 - i;
            if (i3 == 2 && sb.charAt(i) == 'l' && sb.charAt(i + 1) == 't') {
                stringBuffer.append(Typography.less);
            } else if (i3 == 2 && sb.charAt(i) == 'g' && sb.charAt(i + 1) == 't') {
                stringBuffer.append(Typography.greater);
            } else if (i3 == 3 && sb.charAt(i) == 'a' && sb.charAt(i + 1) == 'm' && sb.charAt(i + 2) == 'p') {
                stringBuffer.append(Typography.amp);
            } else if (i3 == 4 && sb.charAt(i) == 'a' && sb.charAt(i + 1) == 'p' && sb.charAt(i + 2) == 'o' && sb.charAt(i + 3) == 's') {
                stringBuffer.append(CoreConstants.SINGLE_QUOTE_CHAR);
            } else if (i3 == 4 && sb.charAt(i) == 'q' && sb.charAt(i + 1) == 'u' && sb.charAt(i + 2) == 'o' && sb.charAt(i + 3) == 't') {
                stringBuffer.append('\"');
            } else if (i3 > 0 && sb.charAt(i) == '#') {
                int i4 = i + 1;
                try {
                    if (sb.charAt(i4) == 'x') {
                        stringBuffer.append((char) C0259.m3860(C0259.m3890(sb, i + 2, i2)));
                    } else {
                        stringBuffer.append((char) Integer.parseInt(C0259.m3890(sb, i4, i2)));
                    }
                } catch (Exception unused) {
                }
            }
        }
        if (stringBuffer.length() == 0) {
            String strM4046 = m4046(this.f1447, this.f1464);
            if (!m4029() && C0259.m3856(strM4046)) {
                throw new C0414(204, C0128.m3233(911, 20, 71) + this.f1453.charAt(this.f1447 - 1) + C0128.m3233(931, 11, 38));
            }
            stringBuffer.append(Typography.amp);
            stringBuffer.append(strM4046);
            if (c == ';') {
                stringBuffer.append(c);
            }
        }
        if (!this.f1448) {
            String strM4047 = m4046(this.f1447, this.f1464);
            if (this.f1441 != null) {
                String[] strArr = {stringBuffer.toString()};
                this.f1441.m3532(strM4047, strArr);
                stringBuffer.setLength(0);
                stringBuffer.append(strArr[0]);
            }
        }
        return stringBuffer.toString();
    }

    public final C0474 m4047(String str, boolean z) throws C0414 {
        if (z) {
            C0474 c0474M4028 = m4028(str);
            this.f1435.push(c0474M4028);
            return c0474M4028;
        }
        try {
            C0474 c0474Peek = this.f1435.peek();
            if (c0474Peek.f2714.equals(str)) {
                this.f1435.pop();
                return c0474Peek;
            }
            return m4028(str);
        } catch (Exception unused) {
            throw new C0414(201, C0663.m5888(new StringBuilder(), f1420, str));
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0172 interfaceC0172 = this.f1441;
        if (interfaceC0172 != null) {
            interfaceC0172.m3528(i, str);
        }
    }
}
