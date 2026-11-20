package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.android.material.internal.ViewUtils;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.io.IOException;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public class C0311 extends C0610 {

    public static final String f1658 = C0128.m3248(0, 7, RNMBXStyleValue.InterpolationModeIdentity);

    public static final String f1659;

    public static final int[] f1660;

    public static final String[] f1661;

    public Socket f1662;

    public boolean f1663;

    public Hashtable f1664;

    public C0335 f1665;

    public boolean f1666;

    public int f1667;

    public C0610 f1668;

    public String f1669;

    public int f1670;

    public String f1671;

    public String f1672;

    public C0335 f1673;

    public String[] f1674;

    public String f1675;

    public SSLSocket f1676;

    public String f1677;

    public boolean f1678;

    public C0335 f1679;

    public String f1680;

    public class C0312 extends Thread {

        public final boolean[] f1682;

        public C0312(boolean[] zArr) {
            this.f1682 = zArr;
        }

        @Override
        public void run() {
            try {
                C0311.this.f1676.startHandshake();
                synchronized (C0311.this.f1721) {
                    C0311.this.m4281((C0414) null, this.f1682);
                }
            } catch (IOException e) {
                synchronized (C0311.this.f1721) {
                    C0311.this.m4281(new C0414(13003, C0128.m3248(597, 38, 12) + e.getMessage() + "."), this.f1682);
                }
            }
        }
    }

    static {
        C0128.m3248(7, 3, 37);
        f1659 = C0128.m3248(10, 3, 76);
        f1661 = new String[]{C0128.m3248(13, 5, 17), C0128.m3248(18, 7, 56), C0128.m3248(25, 7, 93), C0128.m3248(32, 5, 12), C0128.m3248(37, 10, 32), ""};
        f1660 = new int[]{192, ViewUtils.EDGE_TO_EDGE_FLAGS, 3072, 48, 12, 3};
    }

    public C0311(C0610 c0610, Object obj) {
        super(obj);
        this.f1672 = f1659;
        this.f1675 = "";
        this.f1663 = false;
        String str = f1658;
        this.f1669 = str;
        this.f1677 = str;
        this.f1680 = "";
        this.f1664 = new Hashtable(6);
        this.f1667 = 4032;
        this.f1674 = new String[]{"*"};
        this.f1679 = null;
        this.f1673 = null;
        this.f1666 = false;
        this.f1671 = "";
        this.f1665 = null;
        this.f1668 = c0610;
        this.f1678 = C0610.f3338 >= 5.0d;
    }

    public void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        throw null;
    }

    public void fireSSLStatus(String str) {
        throw null;
    }

    public void mo4268(boolean z) {
        int i;
        int iM5879;
        String[] enabledCipherSuites = this.f1674;
        if (enabledCipherSuites.length != 0) {
            enabledCipherSuites = enabledCipherSuites[0].equals("*") ? this.f1678 ? this.f1676.getEnabledCipherSuites() : this.f1676.getSupportedCipherSuites() : this.f1674;
            if (this.f1670 != 0) {
                Vector vector = new Vector();
                for (String str : enabledCipherSuites) {
                    String upperCase = str.toUpperCase();
                    int iIndexOf = upperCase.indexOf(C0128.m3248(47, 6, 87));
                    if (iIndexOf != -1) {
                        int iM58710 = C0663.m5879(53, 6, 9, iIndexOf);
                        String strSubstring = upperCase.substring(iM58710);
                        i = 96;
                        if (strSubstring.startsWith(C0128.m3248(59, 12, 28))) {
                            iM5879 = C0663.m5879(71, 12, 32, iM58710);
                        } else if (strSubstring.startsWith(C0128.m3248(83, 8, 25))) {
                            iM5879 = C0663.m5879(91, 8, 123, iM58710);
                            i = 128;
                        } else {
                            if (strSubstring.startsWith(C0128.m3248(99, 7, 106))) {
                                iM5879 = C0663.m5879(106, 7, 100, iM58710);
                            } else if (strSubstring.startsWith(C0128.m3248(113, 3, 54))) {
                                iM5879 = C0663.m5879(116, 3, 7, iM58710);
                            } else if (strSubstring.startsWith(C0128.m3248(119, 9, 96))) {
                                iM5879 = C0663.m5879(128, 9, 110, iM58710);
                                i = 40;
                            } else if (strSubstring.startsWith(C0128.m3248(137, 7, 34))) {
                                iM5879 = C0663.m5879(144, 7, 88, iM58710);
                                i = 56;
                            } else if (strSubstring.startsWith(C0128.m3248(151, 12, 83))) {
                                iM5879 = C0663.m5879(163, 12, 27, iM58710);
                                i = SyslogConstants.LOG_LOCAL5;
                            } else {
                                iM5879 = -1;
                            }
                            i = 0;
                        }
                        StringTokenizer stringTokenizer = new StringTokenizer(upperCase.substring(iM5879 + 1), "_");
                        while (stringTokenizer.hasMoreTokens()) {
                            try {
                                i = Integer.parseInt(stringTokenizer.nextToken());
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        i = 0;
                    }
                    if (i >= this.f1670) {
                        vector.addElement(str);
                    }
                }
                enabledCipherSuites = (String[]) vector.toArray(new String[vector.size()]);
            }
        }
        if (this.f1663) {
            int i2 = 0;
            for (int i3 = 0; i3 < enabledCipherSuites.length; i3++) {
                if (enabledCipherSuites[i3].contains(C0128.m3248(175, 5, 0)) && i2 < i3) {
                    String str2 = enabledCipherSuites[i2];
                    enabledCipherSuites[i2] = enabledCipherSuites[i3];
                    enabledCipherSuites[i3] = str2;
                    i2++;
                }
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < enabledCipherSuites.length; i4++) {
            stringBuffer.append(enabledCipherSuites[i4]);
            if (i4 < enabledCipherSuites.length - 1) {
                stringBuffer.append("; ");
            }
        }
        fireSSLStatus(C0128.m3248(RotationOptions.ROTATE_180, 34, 97) + ((Object) stringBuffer) + "]");
        this.f1676.setEnabledCipherSuites(enabledCipherSuites);
        this.f1676.setUseClientMode(z);
    }

    public void m4269(boolean z) throws C0414 {
        boolean[] zArr = {false};
        fireSSLStatus(C0128.m3248(569, 28, 52));
        if (this.f1668 != null) {
            new C0312(zArr).start();
        } else {
            try {
                this.f1676.startHandshake();
                synchronized (this.f1721) {
                    m4281((C0414) null, zArr);
                }
            } catch (IOException e) {
                synchronized (this.f1721) {
                    m4281(new C0414(13003, C0128.m3248(635, 38, 6) + e.getMessage() + "."), zArr);
                }
            }
        }
        m4272();
        if (z) {
            synchronized (this.f1721) {
                while (true) {
                    m4272();
                    if (!zArr[0]) {
                        C0610 c0610 = this.f1668;
                        if (c0610 != null) {
                            c0610.mo5626();
                        } else {
                            try {
                                this.f1721.wait(100L);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
            fireSSLStatus(C0128.m3248(673, 29, 49));
        }
    }

    public Hashtable m4270() {
        return this.f1664;
    }

    public void mo4271() throws C0414 {
        throw null;
    }

    public void m4272() throws C0414 {
        C0414 c0414 = this.f1722;
        if (c0414 == null) {
            return;
        }
        fireSSLStatus(c0414.getMessage());
        C0414 c0415 = this.f1722;
        this.f1722 = null;
        throw c0415;
    }

    public String m4273(X509Certificate x509Certificate) {
        try {
            return C0259.m3892(C0259.m3864(x509Certificate.getEncoded()));
        } catch (Exception unused) {
            return "";
        }
    }

    public void mo4274(Object obj) {
        throw null;
    }

    public void mo4275() {
        throw null;
    }

    public Object mo4276() {
        throw null;
    }

    public void mo4277() {
        throw null;
    }

    public void m4278(String str) {
        Vector vector = new Vector();
        StringTokenizer stringTokenizer = new StringTokenizer(C0259.m3843(str), ";");
        while (stringTokenizer.hasMoreTokens()) {
            vector.addElement(stringTokenizer.nextToken().trim());
        }
        this.f1674 = (String[]) vector.toArray(new String[vector.size()]);
    }

    public void mo4279(Socket socket, String str, boolean z, Object obj, boolean z2) throws C0414 {
        throw null;
    }

    public void mo4280(C0414 c0414, Object obj, Object obj2) {
        throw null;
    }

    public void mo4282(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        throw null;
    }

    public final void m4281(C0414 c0414, boolean[] zArr) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        if (c0414 == null) {
            SSLSocket sSLSocket = this.f1676;
            SSLSession session = sSLSocket == null ? null : sSLSocket.getSession();
            fireSSLStatus(C0128.m3248(214, 54, 117) + (session == null ? null : session.getCipherSuite()));
            fireSSLStatus(C0128.m3248(268, 22, 118) + (session != null ? session.getProtocol() : null));
            try {
                C0510 c0510M5207 = C0510.m5207(C0510.m5206(session.getCipherSuite(), C0320.f1718), C0320.f1708);
                String str = (C0128.m3248(290, 37, 88) + session.getProtocol()) + C0128.m3248(327, 9, 63) + c0510M5207.f2951 + C0128.m3248(336, 18, 101) + (c0510M5207.f2959 * 8);
                if (!c0510M5207.m5228()) {
                    str = (str + C0128.m3248(354, 7, RNMBXStyleValue.InterpolationModeIdentity) + c0510M5207.m5219()) + C0128.m3248(361, 16, 64) + C0259.m3886(c0510M5207.m5215(), 4);
                }
                String str2 = str + C0128.m3248(377, 15, 88) + c0510M5207.m5231() + C0128.m3248(392, 24, 19) + c0510M5207.f2959;
                this.f1664.put(C0128.m3248(TypedValues.CycleType.TYPE_PATH_ROTATE, 20, 23), session.getProtocol());
                this.f1664.put(C0128.m3248(436, 19, 104), c0510M5207.f2951);
                this.f1664.put(C0128.m3248(455, 24, 43), c0510M5207.f2960);
                this.f1664.put(C0128.m3248(479, 20, 77), "" + (c0510M5207.f2959 * 8));
                this.f1664.put(C0128.m3248(TSLocationManager.LOCATION_ERROR_CANCELLED, 24, 36), c0510M5207.m5231());
                this.f1664.put(C0128.m3248(523, 28, 60), "" + c0510M5207.f2959);
                fireSSLStatus(str2);
            } catch (Exception unused) {
            }
        } else {
            fireSSLStatus(C0128.m3248(551, 18, 125) + c0414.getMessage());
            m4312((Exception) c0414);
            this.f1668.m4312((Exception) c0414);
        }
        mo4280(c0414, this.f1662, this.f1676);
        this.f1721.notifyAll();
    }

    public boolean m4283(Socket socket) {
        return socket instanceof SSLSocket;
    }
}
