package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.api.FieldBehaviorProto;
import geidea.utils.GeideaUtils;
import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0283 extends C0320 implements InterfaceC0224 {

    public static final String f1471 = C0128.m3235(0, 14, 66);

    public byte[] f1472;

    public int f1473;

    public String f1474;

    public AbstractC0410 f1475;

    public C0579 f1476;

    public String f1477;

    public String f1478;

    public byte[] f1479;

    public Vector f1480;

    public Hashtable f1481;

    public C0283() {
        super(new Object());
        this.f1475 = null;
        this.f1478 = "";
        this.f1480 = new Vector();
        this.f1474 = "";
        this.f1473 = 0;
        byte[] bArr = C0320.f1706;
        this.f1477 = "";
        this.f1472 = bArr;
        this.f1479 = bArr;
        this.f1481 = new Hashtable();
        this.f1476 = null;
    }

    public static String m4048(C0213 c0213) {
        return C0671.m5958(c0213.f793.f1731.f585.f714);
    }

    public Certificate[] getCertificateChain(String str) {
        C0335[] c0335ArrMo3703 = mo3703(str);
        Certificate[] certificateArr = new Certificate[c0335ArrMo3703.length];
        for (int i = 0; i < c0335ArrMo3703.length; i++) {
            certificateArr[i] = C0671.m5942(c0335ArrMo3703[i].m4360());
        }
        return certificateArr;
    }

    public String m4053(C0213 c0213) {
        return C0671.m5958(c0213.f793.f1731.f576.f714);
    }

    public String m4054(C0213 c0213) {
        return C0671.m5930(c0213.f793.f1731.f575);
    }

    public String m4055(C0213 c0213) {
        C0247 c0247 = c0213.f793.f1731.f580.f3332;
        return C0394.m4630(C0671.m5933(c0247.f2150, c0247.f902), C0394.f2058);
    }

    public String m4056(C0213 c0213) {
        int i = ((C0230) c0213.f793.f1731.f577.f1271).f1869;
        if (i == 0) {
            return "V1";
        }
        if (i != 1) {
            return i != 2 ? "" : "V3";
        }
        return "V2";
    }

    public PublicKey m4057(C0213 c0213) {
        if (c0213 == null) {
            return null;
        }
        return C0671.m5912(c0213.f793.f1731.f575);
    }

    public Vector m4058(C0213 c0213) {
        if (!c0213.f793.f1731.f579.f2147) {
            return new Vector();
        }
        C0119 c0119 = new C0119();
        c0119.m4680(c0213.f793.f1731.f579.f2148);
        return C0671.m5964(c0119);
    }

    public String mo3695(String str) {
        return "";
    }

    public C0590 mo3697(String str, byte[] bArr) {
        return m4061("", "", str, bArr, null);
    }

    public String m4060(C0213 c0213) {
        byte[] bArr = c0213.f793.f1731.f582.f2148;
        String upperCase = new BigInteger(1, bArr).toString(16).toUpperCase();
        for (int length = upperCase.length(); length < bArr.length * 2; length++) {
            upperCase = C0663.m5880("0", upperCase);
        }
        return upperCase;
    }

    public void mo3700(int i, byte[] bArr, String str) {
        byte[] bArrM5925;
        String strM3882;
        AbstractC0410 abstractC0410;
        String str2;
        this.f1477 = str;
        this.f1473 = i;
        C0259.m3845(bArr);
        String strM3853 = C0259.m3853(bArr);
        if (i == 6 || i == 8 || i == 13 || i == 14 || i == 16 || i == 18 || i == 20) {
            bArrM5925 = C0671.m5925(strM3853);
            strM3882 = C0259.m3882(bArrM5925);
        } else {
            strM3882 = strM3853;
            bArrM5925 = bArr;
        }
        if (C0259.m3856(strM3882)) {
            return;
        }
        int i2 = 0;
        boolean z = i == 18 || i == 19 || i == 16 || i == 17 || i == 14 || i == 15 || i == 20 || i == 21;
        if (!z && !strM3882.contains("\n")) {
            String strM5910 = C0671.m5910(strM3882);
            if (strM5910.length() > 0) {
                strM3882 = strM5910;
            }
        }
        int size = this.f1480.size();
        C0548 c0548 = z ? new C0548("", null) : C0671.f3709.m5521(strM3882);
        int i3 = 9;
        int i4 = 271;
        if (c0548.f3143) {
            while (true) {
                String strM5432 = c0548.m5432(i2);
                String strM5433 = c0548.m5432(3);
                String strM5434 = c0548.m5432(5);
                String strM5435 = c0548.m5432(7);
                String strM5436 = c0548.m5432(8);
                String strM5437 = c0548.m5432(i3);
                if (strM5433 == null || strM5433.length() == 0) {
                    if (i != 13) {
                        switch (i) {
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                                throw new C0414(i4, C0128.m3235(14, 69, 11));
                            case 10:
                                strM5434 = C0128.m3235(83, 5, 55) + strM5435;
                            default:
                                str2 = this.f1477;
                                if (str2 != null || str2.length() <= 0) {
                                    strM5435 = C0128.m3235(95, 6, 14);
                                } else {
                                    strM5435 = C0128.m3235(88, 7, 111);
                                }
                                break;
                        }
                    } else {
                        strM5434 = C0128.m3235(83, 5, 55) + strM5435;
                    }
                    str2 = this.f1477;
                    if (str2 != null) {
                        strM5435 = C0128.m3235(95, 6, 14);
                    } else {
                        strM5435 = C0128.m3235(95, 6, 14);
                    }
                }
                String str3 = strM5434;
                if (strM5433 == null || !strM5433.equalsIgnoreCase(C0128.m3235(101, 11, 83))) {
                    if (strM5435.equalsIgnoreCase(C0128.m3235(112, 6, 98))) {
                        this.f1472 = strM5432.getBytes();
                    }
                    this.f1475 = m4050(C0259.m3858(strM5437), this.f1477, strM5436, strM5435, str3, this.f1478);
                } else {
                    C0136 c0136 = new C0136();
                    c0136.f286 = m4049(C0671.m5917(strM5437.getBytes()));
                    c0136.f291 = m4048(c0136.f286);
                    this.f1480.add(c0136);
                }
                if (c0548.m5433()) {
                    i4 = 271;
                    i3 = 9;
                    i2 = 0;
                }
            }
        } else if (i == 8 || i == 9) {
            try {
                C0136 c0137 = new C0136();
                c0137.f286 = m4049(C0671.m5917(bArrM5925));
                c0137.f291 = m4048(c0137.f286);
                this.f1480.add(c0137);
            } catch (C0414 e) {
                throw new C0414(e, 271, C0128.m3235(118, 20, 32));
            }
        } else if (i == 13 || i == 10) {
            C0548 c0548M5521 = C0671.f3706.m5521(strM3882);
            if (c0548M5521.f3143) {
                bArrM5925 = C0259.m3883(c0548M5521.m5432(6));
            }
            byte[] bArr2 = bArrM5925;
            this.f1472 = bArr2;
            this.f1475 = m4050(bArr2, "", "", C0128.m3235(CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 6, 91), C0128.m3235(144, 11, SyslogConstants.LOG_CLOCK), this.f1478);
        } else if (i == 14 || i == 15) {
            C0538 c0538 = new C0538();
            C0671.m5974(c0538, strM3882, this.f1477);
            this.f1475 = C0671.m5967(c0538, this.f1478);
        } else if (i == 16 || i == 17) {
            if (strM3882.indexOf(C0128.m3235(ModuleDescriptor.MODULE_VERSION, 11, 107)) < 0 && strM3882.indexOf(C0128.m3235(166, 11, 39)) < 0 && strM3882.indexOf(C0128.m3235(177, 8, 122)) < 0) {
                throw new C0414(271, C0128.m3235(247, 62, 24));
            }
            C0282 c0282 = new C0282(null, new Object());
            c0282.m4022(true);
            c0282.m4027(strM3882);
            Vector vector = new Vector();
            m4052(c0282.f1423, this.f1478, this.f1480, vector);
            if (this.f1480.size() <= 0 && vector.size() <= 0) {
                throw new C0414(271, C0128.m3235(185, 62, 24));
            }
            if (vector.size() > 0) {
                this.f1475 = (AbstractC0410) vector.get(0);
            }
        } else if (i == 19 || i == 18) {
            C0538 c0539 = new C0538();
            C0671.m5924(c0539, strM3882);
            this.f1481 = c0539.f3112;
            if (!c0539.m5410()) {
                this.f1472 = C0259.m3905(C0259.m3902(C0671.m5961(c0539)), C0128.m3235(309, 10, 40));
            }
            this.f1475 = C0671.m5967(c0539, this.f1478);
        } else if (i == 7 || i == 6) {
            try {
                C0136 c0138 = new C0136();
                c0138.f286 = m4049(C0671.m5917(bArrM5925));
                c0138.f291 = m4048(c0138.f286);
                this.f1480.add(c0138);
            } catch (C0414 unused) {
                throw new C0414(271, C0128.m3235(319, 57, 65));
            }
        } else {
            if (i == 22) {
                throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3235(376, 43, 127));
            }
            if (i != 21 && i != 20) {
                throw new C0414(271, C0128.m3235(FrameMetricsAggregator.EVERY_DURATION, 57, 96));
            }
            try {
                C0579 c0579 = new C0579();
                this.f1476 = c0579;
                c0579.m5564(bArrM5925, this.f1477);
                if (this.f1476.m5557() == null) {
                    throw new C0414(C0128.m3235(419, 30, 93));
                }
                Vector vectorM5560 = this.f1476.m5560();
                for (int i5 = 0; i5 < vectorM5560.size(); i5++) {
                    C0433 c0433 = (C0433) vectorM5560.get(i5);
                    C0136 c0139 = new C0136();
                    c0139.f286 = c0433.f2241;
                    c0139.f291 = m4048(c0433.f2241);
                    this.f1480.add(c0139);
                }
            } catch (C0414 unused2) {
                throw new C0414(271, C0128.m3235(449, 62, 125));
            }
        }
        if (this.f1480.size() != size || (abstractC0410 = this.f1475) == null || abstractC0410.f2122 == null) {
            return;
        }
        C0136 c01310 = new C0136();
        AbstractC0410 abstractC0411 = this.f1475;
        C0213 c0213 = new C0213();
        C0538 c05310 = new C0538();
        C0671.m5975(c05310, abstractC0411);
        try {
            c0213.f793 = C0671.m5966(c05310, C0128.m3235(568, 11, 65) + C0259.m3867(), 1, 0, 365, (C0335) null, (Vector) null, C0128.m3235(579, 4, 41));
            c01310.f286 = c0213;
            C0259.m3847(m4063(c01310.f286));
            c01310.f291 = m4048(c01310.f286);
            c01310.f288 = true;
            this.f1480.add(c01310);
        } catch (C0537 e2) {
            throw new C0414(e2);
        }
    }

    public String m4059(C0213 c0213) {
        C0247 c0247 = c0213.f793.f1731.f580.f3331;
        return C0394.m4630(C0671.m5933(c0247.f2150, c0247.f902), C0394.f2058);
    }

    public String mo3692(String str, byte[] bArr) {
        C0213 c0213;
        PublicKey publicKeyM4057 = null;
        C0136 c0136 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0137 = (C0136) this.f1480.get(i);
            if (str.equals("*") || m4048(c0137.f286).equals(str) || (c0136 == null && m4048(c0137.f286).indexOf(str) > -1)) {
                c0136 = c0137;
            }
            if (C0259.m3896(bArr, m4063(c0137.f286))) {
                c0136 = c0137;
            }
        }
        byte[] encoded = C0320.f1706;
        if (c0136 != null && (c0213 = c0136.f286) != null) {
            publicKeyM4057 = m4057(c0213);
            m4054(c0136.f286);
        } else {
            AbstractC0410 abstractC0410 = this.f1475;
            if (abstractC0410 != null) {
                publicKeyM4057 = abstractC0410.f2121;
                int i2 = abstractC0410.f2120;
                if (i2 == 1) {
                    String str2 = C0335.f1795;
                } else if (i2 == 2) {
                    String str3 = C0335.f1793;
                } else if (i2 == 3) {
                    String str4 = C0335.f1794;
                } else if (i2 == 4) {
                    String str5 = C0335.f1796;
                }
            }
        }
        if (publicKeyM4057 != null) {
            encoded = publicKeyM4057.getEncoded();
        }
        return C0259.m3882(C0259.m3878(encoded, C0128.m3235(1409, 10, 29)));
    }

    public X509Certificate mo3696() {
        byte[] bArr = this.f1479;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        return C0671.m5942(bArr);
    }

    public PrivateKey mo3694(String str) {
        AbstractC0410 abstractC0410 = this.f1475;
        if (abstractC0410 != null) {
            return abstractC0410.f2122;
        }
        return null;
    }

    public boolean mo3693(String str) {
        try {
            AbstractC0410 abstractC0410 = this.f1475;
            return (abstractC0410 == null || abstractC0410.f2122 == null) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static C0213 m4049(byte[] bArr) {
        C0213 c0213 = new C0213();
        c0213.m4680(bArr);
        return c0213;
    }

    public static void m4052(C0187 c0187, String str, Vector vector, Vector vector2) {
        if (c0187 == null) {
            return;
        }
        if (c0187.m3615(C0128.m3235(583, 8, 51))) {
            C0187 c0187M3617 = c0187.m3617(C0128.m3235(591, 15, 72));
            if (c0187M3617 != null) {
                C0136 c0136 = new C0136();
                c0136.f286 = m4049(C0259.m3876(c0187M3617.m3612()));
                c0136.f291 = m4048(c0136.f286);
                vector.add(c0136);
                return;
            }
            return;
        }
        int i = 0;
        if (c0187.m3615(C0128.m3235(TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 11, 54))) {
            C0538 c0538 = new C0538();
            c0538.f3116 = 1;
            while (i < c0187.f652) {
                C0187 c0187M3616 = c0187.m3616(i);
                if (c0187M3616.m3615(C0128.m3235(617, 7, 125))) {
                    c0538.f3115.f334 = C0259.m3876(c0187M3616.m3612());
                } else if (c0187M3616.m3615(C0128.m3235(624, 8, 13))) {
                    c0538.f3115.f336 = C0259.m3876(c0187M3616.m3612());
                } else if (c0187M3616.m3615("D")) {
                    c0538.f3115.f335 = C0259.m3876(c0187M3616.m3612());
                } else if (c0187M3616.m3615("P")) {
                    c0538.f3115.f331 = C0259.m3876(c0187M3616.m3612());
                } else if (c0187M3616.m3615("Q")) {
                    c0538.f3115.f333 = C0259.m3876(c0187M3616.m3612());
                } else if (c0187M3616.m3615(C0128.m3235(632, 8, 41))) {
                    c0538.f3115.f332 = C0259.m3876(c0187M3616.m3612());
                }
                i++;
            }
            vector2.add(C0671.m5967(c0538, str));
            return;
        }
        if (c0187.m3615(C0128.m3235(640, 11, 26))) {
            C0538 c0539 = new C0538();
            c0539.f3116 = 2;
            while (i < c0187.f652) {
                C0187 c0187M3618 = c0187.m3616(i);
                if (c0187M3618.m3615("P")) {
                    c0539.f3113.f259 = C0259.m3876(c0187M3618.m3612());
                } else if (c0187M3618.m3615("Q")) {
                    c0539.f3113.f258 = C0259.m3876(c0187M3618.m3612());
                } else if (c0187M3618.m3615("G")) {
                    c0539.f3113.f256 = C0259.m3876(c0187M3618.m3612());
                } else if (c0187M3618.m3615("Y")) {
                    c0539.f3113.f257 = C0259.m3876(c0187M3618.m3612());
                } else if (c0187M3618.m3615("X")) {
                    c0539.f3113.f255 = C0259.m3876(c0187M3618.m3612());
                }
                i++;
            }
            vector2.add(C0671.m5967(c0539, str));
            return;
        }
        while (i < c0187.f652) {
            m4052(c0187.m3616(i), str, vector, vector2);
            i++;
        }
    }

    public static AbstractC0410 m4050(byte[] bArr, String str, String str2, String str3, String str4, String str5) {
        boolean z;
        int i;
        byte[] bArrM3899;
        AbstractC0410 abstractC0410M5967;
        int i2;
        int i3;
        char cCharAt;
        boolean z2 = str3 != null && str3.equalsIgnoreCase(C0128.m3235(651, 7, 30));
        C0538 c0538 = new C0538();
        String strM3882 = "";
        char c = '\r';
        String str6 = null;
        if (str2 == null || str2.length() <= 0) {
            z = false;
            i = 1;
            bArrM3899 = null;
        } else {
            bArrM3899 = null;
            int i4 = 0;
            z = false;
            while (str2.indexOf(58, i4) > 0) {
                String str7 = "";
                while (str2.charAt(i4) != ':') {
                    String string = C0663.m5891(str7).append(str2.charAt(i4)).toString();
                    i4++;
                    str7 = string;
                }
                while (true) {
                    if (str2.charAt(i4) != ':' && str2.charAt(i4) != ' ') {
                        break;
                    }
                    i4++;
                    str7 = str7;
                    c = '\r';
                }
                String string2 = "";
                while (str2.charAt(i4) != c && str2.charAt(i4) != '\n') {
                    if (str2.charAt(i4) == '\\' && str2.length() > (i3 = i4 + 1) && (str2.charAt(i3) == '\n' || str2.charAt(i3) == c)) {
                        do {
                            cCharAt = str2.charAt(i4);
                            i4++;
                        } while (cCharAt != '\n');
                    }
                    string2 = C0663.m5891(string2).append(str2.charAt(i4)).toString();
                    i4++;
                }
                while (true) {
                    if (str2.charAt(i4) != ' ' && str2.charAt(i4) != c && str2.charAt(i4) == '\n') {
                        break;
                    }
                    i4++;
                    str7 = str7;
                    c = '\r';
                }
                i4++;
                str7.trim();
                string2.trim();
                if (str7.equalsIgnoreCase(C0128.m3235(658, 8, 85))) {
                    String[] strArrM3907 = C0259.m3907(string2, ",", true);
                    str6 = strArrM3907[0];
                    bArrM3899 = C0259.m3899(8, strArrM3907[1].getBytes());
                }
                c = '\r';
            }
            i = 1;
        }
        if (str4.equalsIgnoreCase(C0128.m3235(666, 22, 98))) {
            C0671.m5978(c0538, bArr, str);
            abstractC0410M5967 = C0671.m5967(c0538, str5);
        } else if (str4.equalsIgnoreCase(C0128.m3235(688, 11, 64))) {
            C0671.m5977(c0538, bArr);
            abstractC0410M5967 = C0671.m5967(c0538, str5);
        } else if (z2) {
            byte[] bArrM5917 = C0671.m5917(bArr);
            if (str6 == null && bArrM3899 == null && (str4.equalsIgnoreCase(C0128.m3235(699, 17, 15)) || str4.equalsIgnoreCase(C0128.m3235(716, 7, 71)))) {
                C0671.m5980(c0538, bArrM5917, z, str4.equalsIgnoreCase(C0128.m3235(723, 17, 80)), str);
                abstractC0410M5967 = C0671.m5967(c0538, str5);
            } else if (str4.equalsIgnoreCase(C0128.m3235(740, 15, 91))) {
                C0538 c0539 = new C0538();
                C0671.m5936(c0539, bArrM5917, str);
                abstractC0410M5967 = C0671.m5967(c0539, str5);
            } else {
                byte[] bArrM5989 = C0671.m5989(bArrM5917, str, str6, bArrM3899, false);
                if (str4.equalsIgnoreCase(C0128.m3235(755, 11, 98))) {
                    i2 = i;
                } else if (str4.equalsIgnoreCase(C0128.m3235(766, 11, 75))) {
                    i2 = 2;
                } else {
                    i2 = str4.equalsIgnoreCase(C0128.m3235(GeideaUtils.REGISTRATION_REQUEST_CODE, 10, 52)) ? 3 : 0;
                }
                try {
                    C0671.m5973(c0538, i2, bArrM5989);
                    abstractC0410M5967 = C0671.m5967(c0538, str5);
                } catch (C0414 unused) {
                    throw new C0414(280, C0128.m3235(787, 43, 19));
                }
            }
        } else {
            if (str4.equalsIgnoreCase(C0128.m3235(830, 10, 112))) {
                strM3882 = C0259.m3882(C0259.m3878(bArr, C0128.m3235(840, 14, 81)));
            } else if (str4.equalsIgnoreCase(C0128.m3235(854, 10, 112))) {
                strM3882 = C0259.m3882(C0259.m3878(bArr, C0128.m3235(864, 14, 55)));
            } else if (str4.equalsIgnoreCase(C0128.m3235(878, 9, 77))) {
                strM3882 = C0259.m3882(C0259.m3878(bArr, C0128.m3235(887, 13, 49)));
            } else if (str4.equalsIgnoreCase(C0128.m3235(900, 6, 122))) {
                strM3882 = C0259.m3882(C0259.m3878(bArr, C0128.m3235(TypedValues.Custom.TYPE_REFERENCE, 10, 22)));
            }
            C0671.m5913(c0538, strM3882);
            abstractC0410M5967 = C0671.m5967(c0538, str5);
        }
        if (abstractC0410M5967 != null) {
            return abstractC0410M5967;
        }
        throw new C0414(271, C0128.m3235(916, 65, 59));
    }

    public static void m4051(String str, String str2, byte[] bArr, int i, byte[] bArr2, byte[] bArr3) throws C0537 {
        int i2;
        char c;
        byte[] bArr4 = bArr;
        if (!C0320.f1718) {
            if (str2.equalsIgnoreCase(C0128.m3235(1046, 6, 6))) {
                byte[] bArr5 = new byte[48];
                byte[] bArr6 = new byte[32];
                byte[] bArr7 = new byte[32];
                AbstractC0317 abstractC0317M4217 = C0308.m4217(C0128.m3235(FieldBehaviorProto.FIELD_BEHAVIOR_FIELD_NUMBER, 6, 5));
                abstractC0317M4217.mo3250();
                byte[] bytes = str.getBytes();
                int i3 = 0;
                abstractC0317M4217.mo3122(bytes, 0, bytes.length);
                byte[] bArr8 = abstractC0317M4217.f1702;
                int length = bArr4.length + 4;
                byte[] bArr9 = new byte[length];
                System.arraycopy(bArr4, 0, bArr9, 0, bArr4.length);
                int i4 = 48;
                int i5 = 1;
                int i6 = 24;
                while (i4 > 0) {
                    bArr9[bArr4.length] = (byte) ((i5 & ViewCompat.MEASURED_STATE_MASK) >> 24);
                    bArr9[bArr4.length + 1] = (byte) ((16711680 & i5) >> 16);
                    bArr9[bArr4.length + 2] = (byte) ((65280 & i5) >> 8);
                    bArr9[bArr4.length + 3] = (byte) (i5 & 255);
                    abstractC0317M4217.mo3250();
                    abstractC0317M4217.mo3122(bArr9, i3, length);
                    C0490.m5175(bArr8, abstractC0317M4217.f1702, bArr6);
                    System.arraycopy(bArr6, i3, bArr7, i3, 32);
                    int i7 = 1;
                    while (i7 < i) {
                        abstractC0317M4217.mo3250();
                        abstractC0317M4217.mo3122(bArr7, i3, 32);
                        C0490.m5175(bArr8, abstractC0317M4217.f1702, bArr7);
                        int i8 = 0;
                        for (int i9 = 32; i8 < i9; i9 = 32) {
                            bArr6[i8] = (byte) (bArr6[i8] ^ bArr7[i8]);
                            i8++;
                        }
                        i7++;
                        i3 = 0;
                    }
                    int i10 = i6 > i4 ? i4 : i6;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= i10) {
                            i2 = i10;
                            c = '0';
                            break;
                        }
                        int i12 = (i5 - 1) + (i11 * 2);
                        i2 = i10;
                        c = '0';
                        if (i12 >= 48) {
                            i6 = i11;
                            break;
                        } else {
                            bArr5[i12] = bArr6[i11];
                            i11++;
                            i10 = i2;
                        }
                    }
                    i4 -= i6;
                    i5++;
                    i6 = i2;
                    i3 = 0;
                    bArr4 = bArr;
                }
                System.arraycopy(bArr5, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr5, 32, bArr3, 0, bArr3.length);
                return;
            }
            return;
        }
        throw new C0537(C0128.m3235(981, 65, 43));
    }

    public C0590 m4061(String str, String str2, String str3, byte[] bArr, String str4) {
        byte[] bArrM5917;
        String str5;
        if (str4 != null) {
            str4 = str4.toLowerCase();
        }
        C0136 c0136 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0137 = (C0136) this.f1480.get(i);
            if (str4 != null && str4.length() > 0) {
                if (str4.length() == 32) {
                    if (c0137.f287.length() == 0 && c0137.f286 != null) {
                        c0137.f287 = C0671.m5951(C0128.m3235(1679, 3, 33), c0137.f286.mo3690());
                    }
                    str5 = c0137.f287;
                } else if (str4.length() == 40) {
                    if (c0137.f289.length() == 0 && c0137.f286 != null) {
                        c0137.f289 = C0671.m5951(C0128.m3235(1682, 4, 110), c0137.f286.mo3690());
                    }
                    str5 = c0137.f289;
                } else if (str4.length() == 64) {
                    if (c0137.f285.length() == 0 && c0137.f286 != null) {
                        c0137.f285 = C0671.m5951(C0128.m3235(1686, 6, 107), c0137.f286.mo3690());
                    }
                    str5 = c0137.f285;
                } else {
                    throw new C0414(272, C0128.m3235(1295, 38, 81));
                }
                if (str5.equals(str4)) {
                    c0136 = c0137;
                    break;
                }
            } else {
                if (str.length() > 0 && str2.length() > 0) {
                    String strM4053 = m4053(c0137.f286);
                    String strM4060 = m4060(c0137.f286);
                    if (strM4053.equals(str) && strM4060.toUpperCase().equals(str2.toUpperCase())) {
                        c0136 = c0137;
                    }
                } else {
                    String strM4048 = m4048(c0137.f286);
                    if (str3.equals("*") || C0259.m3872(strM4048, str3) || C0671.m5950(strM4048).equalsIgnoreCase(C0671.m5950(str3))) {
                        c0136 = c0137;
                        break;
                    }
                    if (c0136 == null && (strM4048.toLowerCase().indexOf(str3.toLowerCase()) > -1 || C0671.m5950(strM4048).toLowerCase().indexOf(C0671.m5950(str3.toLowerCase())) > -1)) {
                        c0136 = c0137;
                    }
                    if (C0259.m3896(bArr, m4063(c0137.f286))) {
                        c0136 = c0137;
                    }
                }
            }
        }
        C0590 c0590 = new C0590();
        byte[] bArr2 = this.f1472;
        if (bArr2 != null && bArr2.length > 0) {
            c0590.m5573(bArr2);
            int i2 = this.f1475.f2120;
            if (i2 == 1) {
                c0590.f3265 = C0335.f1795;
            } else if (i2 == 2) {
                c0590.f3265 = C0335.f1793;
            } else if (i2 == 3) {
                c0590.f3265 = C0335.f1794;
            } else if (i2 == 4) {
                c0590.f3265 = C0335.f1796;
            }
            C0571 c0571 = C0671.f3709;
            String strM3892 = C0259.m3892(this.f1472);
            if (!new C0548(strM3892, c0571.f3187.matcher(strM3892)).f3143) {
                bArrM5917 = C0671.m5917(this.f1472);
            } else {
                bArrM5917 = this.f1472;
                C0571 c0572 = C0671.f3709;
                String strM3893 = C0259.m3892(bArrM5917);
                C0548 c0548 = new C0548(strM3893, c0572.f3187.matcher(strM3893));
                if (c0548.f3143) {
                    bArrM5917 = C0671.m5917(C0259.m3902(c0548.m5432(9)));
                }
            }
            C0671.m5951(C0128.m3235(1333, 3, 17), bArrM5917);
            c0590.f3268 = C0671.m5951(C0128.m3235(1336, 4, 26), bArrM5917);
            c0590.f3271 = C0671.m5951(C0128.m3235(1340, 6, 46), bArrM5917);
            AbstractC0410 abstractC0410 = this.f1475;
            if (abstractC0410 != null) {
                abstractC0410.mo3181();
            }
        } else if (c0136 != null) {
            String strM4049 = m4048(c0136.f286);
            this.f1474 = strM4049;
            C0579 c0579 = this.f1476;
            if (c0579 != null) {
                c0579.m5562(strM4049);
                this.f1475 = C0671.m5967(this.f1476.m5557(), this.f1478);
                this.f1481 = this.f1476.m5557().f3112;
            }
            byte[] bArrM4063 = m4063(c0136.f286);
            c0590.m5573(bArrM4063);
            c0590.f3274 = m4059(c0136.f286);
            c0590.f3266 = m4055(c0136.f286);
            c0590.f3277 = m4058(c0136.f286);
            c0590.f3272 = m4053(c0136.f286);
            c0590.f3273 = C0671.m5959(c0136.f286.f793.f1731.f576.f714, true);
            c0590.f3264 = c0136.f291;
            c0590.f3265 = m4054(c0136.f286);
            C0671.m5921(c0136.f286.f793.f1731.f575);
            c0590.f3269 = m4060(c0136.f286);
            c0590.f3278 = C0671.m5918(c0136.f286.f793.f1732.f811.f2701);
            c0590.f3267 = this.f1474;
            c0590.f3270 = C0671.m5959(c0136.f286.f793.f1731.f585.f714, true);
            C0671.m5951(C0128.m3235(1346, 3, 36), bArrM4063);
            c0590.f3268 = C0671.m5951(C0128.m3235(1349, 4, 12), bArrM4063);
            c0590.f3271 = C0671.m5951(C0128.m3235(1353, 6, 90), bArrM4063);
            m4056(c0136.f286);
            c0590.f3275 = c0136.f290;
            c0590.f3276 = c0136.f288;
        } else if (this.f1475 == null) {
            throw new C0414(272, C0128.m3235(1359, 34, 65));
        }
        this.f1479 = c0590.f3279;
        return c0590;
    }

    public byte[] m4063(C0213 c0213) {
        return C0259.m3845(c0213.mo3690());
    }

    public final void m4062(C0213 c0213, Vector vector) {
        String strM5958 = C0671.m5958(c0213.f793.f1731.f585.f714);
        String strM4053 = m4053(c0213);
        if (strM5958.equals(strM4053)) {
            return;
        }
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0136 = (C0136) this.f1480.get(i);
            if (strM4053.equals(m4048(c0136.f286))) {
                C0335 c0335 = new C0335(C0259.m3878(m4063(c0136.f286), C0128.m3235(1441, 11, 125)));
                try {
                    C0322 c0322 = c0213.f793;
                    if (C0671.m5986(c0322.f1733.f2148, c0322.f1731.mo3690(), c0322.f1732.f811.f2701, c0335)) {
                        vector.add(c0335);
                        m4062(c0136.f286, vector);
                        return;
                    }
                    continue;
                } catch (C0537 unused) {
                    continue;
                }
            }
        }
    }

    public PublicKey mo3699(String str, byte[] bArr) {
        AbstractC0410 abstractC0410 = this.f1475;
        if (abstractC0410 != null) {
            return abstractC0410.f2121;
        }
        C0136 c0136 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0137 = (C0136) this.f1480.get(i);
            if (str.equals("*") || m4048(c0137.f286).equals(str) || (c0136 == null && m4048(c0137.f286).indexOf(str) > -1)) {
                c0136 = c0137;
            }
            if (C0259.m3896(bArr, m4063(c0137.f286))) {
                c0136 = c0137;
            }
        }
        return m4057(c0136.f286);
    }

    public int mo3698() {
        AbstractC0410 abstractC0410 = this.f1475;
        if (abstractC0410 == null) {
            return this.f1480.size() > 0 ? -1 : 0;
        }
        return abstractC0410.f2120;
    }

    public C0335[] mo3703(String str) {
        Vector vector = new Vector();
        C0213 c0213 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0136 = (C0136) this.f1480.get(i);
            if (c0136.f291.equals(str)) {
                c0213 = c0136.f286;
            }
        }
        if (c0213 == null && this.f1480.size() > 0) {
            c0213 = ((C0136) this.f1480.get(0)).f286;
        }
        if (c0213 != null) {
            vector.add(new C0335(C0259.m3878(m4063(c0213), C0128.m3235(1430, 11, 49))));
            m4062(c0213, vector);
        }
        return (C0335[]) vector.toArray(new C0335[0]);
    }

    public void mo3702(C0489 c0489) throws Exception {
        for (int i = 0; i < this.f1480.size(); i++) {
            C0213 c0213 = ((C0136) this.f1480.get(i)).f286;
            c0489.m5170(C0259.m3878(m4063(c0213), C0128.m3235(1452, 11, 105)), C0671.m5958(c0213.f793.f1731.f585.f714), m4053(c0213), m4060(c0213), false);
        }
    }

    public void mo3701(X509Certificate x509Certificate) {
        throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3235(1652, 27, 5));
    }
}
