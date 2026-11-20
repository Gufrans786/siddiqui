package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.security.KeyStore;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Vector;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;

public class C0406 extends C0311 {

    public SSLContext f2106;

    public X509TrustManager[] f2107;

    public KeyManager[] f2108;

    public class C0407 implements X509TrustManager {

        public X509TrustManager f2110;

        public C0407(X509TrustManager x509TrustManager) {
            this.f2110 = x509TrustManager;
        }

        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            m4645(x509CertificateArr, str, false);
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            m4645(x509CertificateArr, str, true);
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return this.f2110.getAcceptedIssuers();
        }

        public final void m4645(X509Certificate[] x509CertificateArr, String str, boolean z) throws CertificateException {
            String strM3503;
            String str2;
            String string;
            String string2;
            CertificateException certificateException = null;
            try {
                if (z) {
                    this.f2110.checkServerTrusted(x509CertificateArr, str);
                } else {
                    this.f2110.checkClientTrusted(x509CertificateArr, str);
                }
                strM3503 = C0164.m3503(TypedValues.PositionType.TYPE_CURVE_FIT, 36, 85);
                e = null;
            } catch (CertificateException e) {
                e = e;
                strM3503 = C0164.m3503(544, 50, 66) + e.getMessage() + "\"";
            }
            String string3 = "";
            if (x509CertificateArr == null || x509CertificateArr.length <= 0) {
                str2 = strM3503;
                string = "";
                string2 = string;
            } else {
                X509Certificate x509Certificate = x509CertificateArr[0];
                String strM4273 = C0406.this.m4273(x509Certificate);
                string = x509Certificate.getSubjectDN().toString();
                string2 = x509Certificate.getIssuerDN().toString();
                if (z && e != null && x509Certificate.equals(C0406.this.f1679)) {
                    strM3503 = C0164.m3503(594, 34, 50);
                    e = null;
                }
                if (C0406.this.f1666) {
                    Vector vector = new Vector();
                    for (X509Certificate x509Certificate2 : x509CertificateArr) {
                        vector.add(C0406.this.m4273(x509Certificate2));
                    }
                    if (C0671.m5946(new C0335(7, strM4273, "", "*"), vector, "", "", 0, "", "", new String[1], new String[1], true) == 0) {
                        strM3503 = C0164.m3503(628, 13, 56);
                        e = null;
                    } else {
                        strM3503 = C0164.m3503(641, 17, 72);
                        e = new CertificateException(strM3503);
                    }
                }
                if (!z || e == null || C0259.m3856(C0406.this.f1671)) {
                    certificateException = e;
                } else {
                    Vector vector2 = new Vector();
                    for (int i = 1; i < x509CertificateArr.length; i++) {
                        vector2.add(C0406.this.m4273(x509Certificate));
                    }
                    if (C0671.m5946(new C0335(7, strM4273, "", "*"), vector2, C0406.this.f1671, "", 0, "", "", new String[1], new String[1], false) == 0) {
                        strM3503 = C0164.m3503(658, 62, 10);
                    } else {
                        certificateException = e;
                        strM3503 = C0164.m3503(720, 75, 27);
                    }
                }
                C0610 c0610 = C0406.this.f1668;
                if (c0610 instanceof C0147) {
                    C0147 c0147 = (C0147) c0610;
                    if (c0147.m4305() ? c0147.f393 : c0147.f350) {
                        string3 = strM4273;
                        for (int i2 = 1; i2 < x509CertificateArr.length; i2++) {
                            string3 = C0663.m5892(string3, "\r\n").append(C0406.this.m4273(x509CertificateArr[i2])).toString();
                        }
                        e = certificateException;
                        str2 = strM3503;
                    } else {
                        e = certificateException;
                        str2 = strM3503;
                        string3 = strM4273;
                    }
                } else {
                    e = certificateException;
                    str2 = strM3503;
                    string3 = strM4273;
                }
            }
            boolean[] zArr = {e == null};
            if (z) {
                byte[] bArrM3902 = C0259.m3902(string3);
                C0406.this.f1673 = new C0335(bArrM3902);
                C0406.this.fireSSLServerAuthentication(bArrM3902, string, string2, str2, zArr);
            } else {
                C0406.this.mo4282(C0259.m3902(string3), string, string2, str2, zArr);
            }
            if (zArr[0]) {
                return;
            }
            if (e == null) {
                throw new CertificateException(C0164.m3503(795, 30, 23));
            }
        }
    }

    public class C0408 implements X509KeyManager {
        public C0408() {
        }

        @Override
        public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
            synchronized (C0406.this.f1721) {
                if (C0406.this.f1665 != null) {
                    String strM4375 = C0406.this.f1665.m4375();
                    for (String str : strArr) {
                        if (strM4375.endsWith(str)) {
                            return C0406.this.f1665.m4362();
                        }
                    }
                }
                return null;
            }
        }

        @Override
        public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
            String strM4362;
            synchronized (C0406.this.f1721) {
                strM4362 = (C0406.this.f1665 == null || !C0406.this.f1665.m4373().endsWith(str)) ? null : C0406.this.f1665.m4362();
            }
            return strM4362;
        }

        @Override
        public X509Certificate[] getCertificateChain(String str) {
            try {
                Certificate[] certificateArrM4353 = C0406.this.f1665 != null ? C0406.this.f1665.m4353() : null;
                int length = certificateArrM4353 != null ? certificateArrM4353.length : 0;
                X509Certificate[] x509CertificateArr = new X509Certificate[length];
                for (int i = 0; i < length; i++) {
                    x509CertificateArr[i] = (X509Certificate) certificateArrM4353[i];
                }
                return x509CertificateArr;
            } catch (Exception e) {
                C0406.this.m4312((Exception) new C0414(e));
                return null;
            }
        }

        @Override
        public String[] getClientAliases(String str, Principal[] principalArr) {
            return null;
        }

        @Override
        public PrivateKey getPrivateKey(String str) {
            try {
                if (C0406.this.f1665 != null) {
                    return C0406.this.f1665.m4367();
                }
                return null;
            } catch (Exception e) {
                C0406.this.m4312((Exception) new C0414(e));
                return null;
            }
        }

        @Override
        public String[] getServerAliases(String str, Principal[] principalArr) {
            return null;
        }
    }

    public C0406(C0610 c0610, Object obj) throws Exception {
        super(c0610, obj);
        try {
            this.f1669 = TrustManagerFactory.getDefaultAlgorithm();
            this.f1677 = this.f1669;
        } catch (Exception unused) {
        }
        try {
            SSLContext.getInstance(this.f1672).init(null, null, null);
        } catch (Exception unused2) {
        }
    }

    @Override
    public void mo4268(boolean z) {
        super.mo4268(z);
        String[] supportedProtocols = this.f1676.getSupportedProtocols();
        Vector vector = new Vector();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int[] iArr = C0311.f1660;
            if (i >= iArr.length) {
                break;
            }
            if ((iArr[i] & this.f1667) != 0) {
                int length = sb.length();
                for (String str : supportedProtocols) {
                    if (C0311.f1661[i].equals(str)) {
                        vector.addElement(C0311.f1661[i]);
                        sb.append(sb.length() > 0 ? C0663.m5891("; ").append(C0311.f1661[i]).toString() : C0311.f1661[i]);
                        break;
                    }
                }
                if (length == sb.length()) {
                    fireSSLStatus(C0311.f1661[i] + C0164.m3503(328, 37, 24));
                }
            }
            i++;
        }
        if (sb.length() != 0) {
            fireSSLStatus(C0164.m3503(438, 30, 7) + sb.toString() + "]");
            this.f1676.setEnabledProtocols((String[]) vector.toArray(new String[vector.size()]));
        } else {
            Exception exc = new Exception(C0164.m3503(365, 73, 86));
            m4312(exc);
            fireSSLStatus(exc.getMessage());
        }
    }

    @Override
    public void mo4271() throws C0414 {
        try {
            this.f2107 = null;
            TrustManagerFactory trustManagerFactory = this.f1680.length() == 0 ? TrustManagerFactory.getInstance(this.f1677) : TrustManagerFactory.getInstance(this.f1677, this.f1680);
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            this.f2107 = new X509TrustManager[trustManagers.length];
            for (int i = 0; i < trustManagers.length; i++) {
                this.f2107[i] = new C0407((X509TrustManager) trustManagers[i]);
            }
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    @Override
    public void mo4274(Object obj) {
        this.f2106 = (SSLContext) obj;
    }

    @Override
    public void mo4275() {
        if (this.f1665 != null) {
            this.f2108 = new X509KeyManager[]{new C0408()};
        } else {
            this.f2108 = null;
        }
    }

    @Override
    public Object mo4276() {
        return this.f2106;
    }

    @Override
    public void mo4277() {
        this.f2106 = null;
    }

    @Override
    public void mo4279(Socket socket, String str, boolean z, Object obj, boolean z2) throws C0414 {
        SSLContext sSLContext;
        if (obj != null) {
            try {
                if (obj instanceof SSLSession) {
                    SSLSession sSLSession = (SSLSession) obj;
                    if (!sSLSession.isValid()) {
                        fireSSLStatus(C0164.m3503(0, 69, 106));
                    } else if (!z) {
                        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
                        if (remoteSocketAddress instanceof InetSocketAddress) {
                            InetSocketAddress inetSocketAddress = (InetSocketAddress) remoteSocketAddress;
                            String hostName = inetSocketAddress.getHostName();
                            if (hostName == null || hostName.length() == 0) {
                                hostName = inetSocketAddress.getAddress().getHostAddress();
                            }
                            if (hostName == null) {
                                hostName = "";
                            }
                            if (!hostName.equals(sSLSession.getPeerHost())) {
                                fireSSLStatus(C0164.m3503(69, 67, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR) + sSLSession.getPeerHost() + C0164.m3503(SyslogConstants.LOG_LOCAL1, 31, 124) + hostName + "\"");
                            }
                        }
                    }
                    obj = null;
                }
                if (obj != null || this.f2106 == null) {
                    if (this.f1675.length() != 0 || this.f1675.equals("*")) {
                        sSLContext = SSLContext.getInstance(this.f1672);
                    } else {
                        sSLContext = SSLContext.getInstance(this.f1672, this.f1675);
                    }
                    this.f2106 = sSLContext;
                    if (this.f2108 == null) {
                        mo4275();
                    }
                    if (this.f2107 == null) {
                        mo4271();
                    }
                    this.f2106.init(this.f2108, this.f2107, null);
                }
                if (str != null || str.trim().length() == 0) {
                    str = socket.getInetAddress().getHostAddress();
                }
                int port = socket.getPort();
                fireSSLStatus(C0164.m3503(167, 20, 67));
                this.f1676 = (SSLSocket) this.f2106.getSocketFactory().createSocket(socket, str, port, z2);
                if (obj != null && (obj instanceof SSLSession)) {
                    try {
                        SSLSession sSLSession2 = (SSLSession) obj;
                        SSLSessionContext sessionContext = sSLSession2.getSessionContext();
                        sessionContext.setSessionCacheSize(100);
                        Field declaredField = sessionContext.getClass().getDeclaredField(C0164.m3503(187, 20, 22));
                        declaredField.setAccessible(true);
                        Object obj2 = declaredField.get(sessionContext);
                        Method declaredMethod = obj2.getClass().getDeclaredMethod(C0164.m3503(207, 3, 117), Object.class, Object.class);
                        declaredMethod.setAccessible(true);
                        String str2 = String.format(C0164.m3503(210, 5, 39), socket.getInetAddress().getHostAddress(), String.valueOf(socket.getPort()));
                        String lowerCase = String.format(C0164.m3503(JfifUtil.MARKER_RST7, 5, 93), socket.getInetAddress().getHostName(), String.valueOf(socket.getPort())).toLowerCase();
                        declaredMethod.invoke(obj2, str2, sSLSession2);
                        declaredMethod.invoke(obj2, lowerCase, sSLSession2);
                    } catch (NoSuchFieldException unused) {
                        fireSSLStatus(C0164.m3503(220, 79, 83));
                    } catch (Exception e) {
                        fireSSLStatus(C0164.m3503(299, 29, 127) + e.getMessage());
                    }
                }
            } catch (Exception e2) {
                m4312((Exception) new C0414(e2));
            }
        } else {
            if (obj != null) {
                if (this.f1675.length() != 0) {
                    sSLContext = SSLContext.getInstance(this.f1672);
                } else {
                    sSLContext = SSLContext.getInstance(this.f1672);
                }
                this.f2106 = sSLContext;
                if (this.f2108 == null) {
                    mo4275();
                }
                if (this.f2107 == null) {
                    mo4271();
                }
                this.f2106.init(this.f2108, this.f2107, null);
            } else {
                if (this.f1675.length() != 0) {
                    sSLContext = SSLContext.getInstance(this.f1672);
                } else {
                    sSLContext = SSLContext.getInstance(this.f1672);
                }
                this.f2106 = sSLContext;
                if (this.f2108 == null) {
                    mo4275();
                }
                if (this.f2107 == null) {
                    mo4271();
                }
                this.f2106.init(this.f2108, this.f2107, null);
            }
            if (str != null) {
                str = socket.getInetAddress().getHostAddress();
            } else {
                str = socket.getInetAddress().getHostAddress();
            }
            int port2 = socket.getPort();
            fireSSLStatus(C0164.m3503(167, 20, 67));
            this.f1676 = (SSLSocket) this.f2106.getSocketFactory().createSocket(socket, str, port2, z2);
            if (obj != null) {
                SSLSession sSLSession3 = (SSLSession) obj;
                SSLSessionContext sessionContext2 = sSLSession3.getSessionContext();
                sessionContext2.setSessionCacheSize(100);
                Field declaredField2 = sessionContext2.getClass().getDeclaredField(C0164.m3503(187, 20, 22));
                declaredField2.setAccessible(true);
                Object obj3 = declaredField2.get(sessionContext2);
                Method declaredMethod2 = obj3.getClass().getDeclaredMethod(C0164.m3503(207, 3, 117), Object.class, Object.class);
                declaredMethod2.setAccessible(true);
                String str3 = String.format(C0164.m3503(210, 5, 39), socket.getInetAddress().getHostAddress(), String.valueOf(socket.getPort()));
                String lowerCase2 = String.format(C0164.m3503(JfifUtil.MARKER_RST7, 5, 93), socket.getInetAddress().getHostName(), String.valueOf(socket.getPort())).toLowerCase();
                declaredMethod2.invoke(obj3, str3, sSLSession3);
                declaredMethod2.invoke(obj3, lowerCase2, sSLSession3);
            }
        }
        m4272();
    }
}
