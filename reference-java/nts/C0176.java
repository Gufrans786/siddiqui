package nts;

import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.net.SyslogConstants;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.Hashtable;
import java.util.Vector;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class C0176 implements InterfaceC0550 {

    public static Vector f587;

    public static Object f588;

    public static final String f589;

    public static final String f594;

    public static final String f595;

    public static final String f597;

    public static final String f599;

    public Hashtable f606;

    public static final String f590 = C0128.m3247(0, 7, 71);

    public static final String f593 = C0128.m3247(7, 7, 95);

    public static final String f598 = C0128.m3247(14, 7, 82);

    public static final String f601 = C0128.m3247(21, 7, 40);

    public static final String f592 = C0128.m3247(28, 7, 31);

    public static final String f596 = C0128.m3247(35, 7, 16);

    public static final String f602 = C0128.m3247(42, 8, 28);

    public static final String f591 = C0128.m3247(50, 8, 35);

    public static final String f603 = C0128.m3247(58, 8, 59);

    public static final String f600 = C0128.m3247(66, 8, 52);

    public int f612 = 0;

    public Hashtable f610 = null;

    public int f609 = 0;

    public Vector f604 = null;

    public boolean f605 = false;

    public boolean f608 = false;

    public String f611 = "";

    public String f607 = "";

    static {
        C0128.m3247(74, 25, 19);
        f595 = C0128.m3247(99, 25, 100);
        f597 = C0128.m3247(124, 20, 26);
        f589 = C0128.m3247(144, 28, 20);
        f594 = C0128.m3247(172, 20, 36);
        f599 = C0128.m3247(192, 20, SyslogConstants.LOG_CLOCK);
        f588 = new Object();
        f587 = null;
    }

    public int m3543(C0335 c0335, String str, int i) {
        this.f609 = i;
        C0489 c0489 = new C0489(this, this);
        this.f611 = "";
        this.f607 = "";
        c0489.f2779 = c0335;
        c0489.f2774 = new StringBuffer();
        c0489.m5164(3);
        c0489.f2774.toString();
        if (this.f612 == 0 && !this.f605) {
            m3546(this.f607, this.f604);
        }
        return this.f612;
    }

    public void m3545(int i, String str, String str2) {
    }

    public Vector m3544() {
        if (this.f610 == null) {
            Hashtable hashtable = new Hashtable();
            this.f606 = hashtable;
            hashtable.put(ExifInterface.LONGITUDE_EAST, f597);
            this.f606.put("DC", f589);
            this.f606.put("CN", f590);
            this.f606.put("C", f598);
            this.f606.put("L", f601);
            this.f606.put(ExifInterface.LATITUDE_SOUTH, f592);
            this.f606.put(C0128.m3247(265, 6, 123), f596);
            this.f606.put("O", f602);
            this.f606.put("OU", f591);
            this.f606.put(ExifInterface.GPS_DIRECTION_TRUE, f603);
            this.f606.put(C0128.m3247(271, 10, 77), f600);
            this.f606.put(C0128.m3247(281, 12, 73), f593);
            Hashtable hashtable2 = this.f606;
            String strM3247 = C0128.m3247(293, 16, 118);
            String str = f594;
            hashtable2.put(strM3247, str);
            this.f606.put(C0128.m3247(309, 19, 53), str);
            C0489 c0489 = new C0489(this, this);
            this.f610 = new Hashtable();
            if (C0320.f1719) {
                if (f587 == null) {
                    f587 = new Vector();
                }
                try {
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init((KeyStore) null);
                    TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                    if (trustManagers.length > 0) {
                        for (X509Certificate x509Certificate : ((X509TrustManager) trustManagers[0]).getAcceptedIssuers()) {
                            f587.add(x509Certificate);
                        }
                    }
                } catch (Exception unused) {
                    return new Vector();
                }
            } else {
                if (f587 == null) {
                    this.f608 = true;
                    f587 = new Vector();
                }
                try {
                    try {
                        String property = System.getProperty(C0128.m3247(212, 24, 46));
                        if (C0259.m3856(property)) {
                            property = C0558.m5463(System.getProperty(C0128.m3247(236, 9, 24)), C0128.m3247(245, 20, 111));
                        }
                        byte[] bArrM3902 = C0259.m3902(property);
                        c0489.f2769 = C0259.m3865(bArrM3902, 0, bArrM3902.length);
                        c0489.f2783 = 4;
                        c0489.f2774 = new StringBuffer();
                        c0489.m5164(2);
                        c0489.f2774.toString();
                        this.f608 = false;
                    } catch (Exception unused2) {
                        Vector vector = new Vector();
                        this.f608 = false;
                        return vector;
                    }
                } catch (Throwable th) {
                    this.f608 = false;
                    throw th;
                }
            }
        }
        Vector vector2 = new Vector();
        C0324 c0324M5484 = C0558.m5484(this.f610);
        while (c0324M5484.m4313()) {
            vector2.add(this.f610.get(c0324M5484.f1735));
        }
        return vector2;
    }

    public void m3547(byte[] bArr, String str, String str2, String str3, int i, int i2) {
        if (this.f605) {
            return;
        }
        this.f612 = i;
        this.f607 = str2;
        this.f611 = str;
        if ((this.f609 & 16) == 16 && str.equals(str2)) {
            this.f612 &= -33;
        }
        if ((this.f609 & 1) == 1) {
            this.f612 &= -2;
        }
        if (this.f604 == null || this.f605) {
            return;
        }
        for (int i3 = 0; i3 < this.f604.size(); i3++) {
            X509Certificate x509Certificate = (X509Certificate) this.f604.get(i3);
            try {
                String name = x509Certificate.getSubjectDN().getName();
                String name2 = x509Certificate.getIssuerDN().getName();
                String string = x509Certificate.getSerialNumber().toString();
                if (str.equals(name) && str2.equals(name2) && str3.equals(string) && C0259.m3896(bArr, x509Certificate.getEncoded())) {
                    this.f605 = true;
                    this.f612 &= -33;
                    return;
                } else {
                    if (x509Certificate.getSubjectDN().getName().equals(str2) && C0671.m5985(bArr, x509Certificate.getEncoded())) {
                        if (x509Certificate.getSubjectDN().getName().equals(x509Certificate.getIssuerDN().getName()) ? C0671.m5985(x509Certificate.getEncoded(), x509Certificate.getEncoded()) : true) {
                            this.f605 = true;
                            this.f612 &= -33;
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void m3546(String str, Vector vector) {
        if (str.length() != 0) {
            if (vector == null) {
                synchronized (f588) {
                    if (f587 == null) {
                        try {
                            m3544();
                        } catch (Exception unused) {
                        }
                    }
                    vector = new Vector();
                    vector.addAll(f587);
                }
            }
            for (int i = 0; i < vector.size(); i++) {
                X509Certificate x509Certificate = (X509Certificate) vector.get(i);
                String name = x509Certificate.getSubjectDN().getName();
                if (name.equalsIgnoreCase(str)) {
                    String name2 = x509Certificate.getIssuerDN().getName();
                    if (name2.equalsIgnoreCase(name)) {
                        return;
                    }
                    vector.remove(i);
                    m3546(name2, vector);
                    return;
                }
            }
            if ((this.f609 & 16) == 16 && this.f611.equals(this.f607)) {
                this.f612 = 0;
                return;
            } else {
                this.f612 = 32;
                return;
            }
        }
        throw new C0414(32, C0128.m3247(328, 30, 10));
    }
}
