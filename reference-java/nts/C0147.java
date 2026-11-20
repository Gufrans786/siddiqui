package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.hermes.intl.Constants;
import com.facebook.imageutils.JfifUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0147 extends C0610 implements InterfaceC0564, InterfaceC0125 {

    public boolean f344;

    public boolean f345;

    public C0335 f346;

    public int f347;

    public int f348;

    public String f349;

    public boolean f350;

    public C0311 f351;

    public String f352;

    public boolean f353;

    public int f354;

    public int f355;

    public boolean f356;

    public int f357;

    public boolean f358;

    public String f359;

    public boolean f360;

    public boolean f361;

    public byte[] f362;

    public boolean f363;

    public int f364;

    public boolean f365;

    public Object f366;

    public C0301 f367;

    public Object f368;

    public boolean f369;

    public boolean f370;

    public boolean f371;

    public byte[] f372;

    public String f373;

    public int f374;

    public String f375;

    public C0335 f376;

    public String f377;

    public boolean f378;

    public byte[] f379;

    public InterfaceC0125 f380;

    public String f381;

    public String f382;

    public boolean f383;

    public C0266 f384;

    public int f385;

    public int f386;

    public boolean f387;

    public C0521 f388;

    public C0301 f389;

    public String f390;

    public String f391;

    public int f392;

    public boolean f393;

    public String f394;

    public C0443 f395;

    public int f396;

    public boolean f397;

    public boolean f398;

    public String f399;

    public String f400;

    public int f401;

    public boolean f402;

    public boolean f403;

    public boolean f404;

    public String f405;

    public C0402 f406;

    public int f407;

    public boolean f408;

    public String f409;

    public boolean f410;

    public boolean f411;

    public InterfaceC0352 f412;

    public int f413;

    public String f414;

    public boolean f415;

    public C0301 f416;

    public boolean f417;

    public String f418;

    public String f419;

    public int f420;

    public Object f421;

    public boolean f422;

    public boolean f423;

    public String f424;

    public String f425;

    public String f426;

    public C0335 f427;

    public int f428;

    public String f429;

    public boolean f430;

    public C0335 f431;

    public boolean f432;

    public int f433;

    public String f434;

    public OutputStream f435;

    public byte[] f436;

    public boolean f437;

    public byte[] f438;

    public String f439;

    public int f440;

    public C0138 f441;

    public String f442;

    public static final String f342 = C0164.m3500(0, 8, 35);

    public static final String[] f341 = {"", C0164.m3500(8, 29, 110), C0164.m3500(37, 34, 17), C0164.m3500(71, 20, 47), C0164.m3500(91, 17, 82), C0164.m3500(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 19, 114), C0164.m3500(127, 12, 97), C0164.m3500(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 22, 123), C0164.m3500(161, 27, 104)};

    public static final String[] f343 = {"", C0164.m3500(188, 27, 43), C0164.m3500(JfifUtil.MARKER_RST7, 77, 63), C0164.m3500(292, 81, 4)};

    public class C0148 extends C0521 {
        public C0148(C0147 c0147, Socket socket, Object obj) {
            super(c0147, socket, obj);
        }

        @Override
        public void mo3401(C0414 c0414) {
            C0147 c0147 = C0147.this;
            if (c0414 != null) {
                c0147.m4312((Exception) c0414);
            }
            c0147.m5627();
            c0147.f396 = 0;
            int i = c0147.f385;
            if (i == 1) {
                C0414 c0415 = c0147.f1722;
                if (c0415 == null) {
                    c0415 = new C0414(32000, C0164.m3500(4093, 31, 29));
                }
                c0147.m3359(c0415);
            } else if (i != 0) {
                c0147.m3310(c0147.f1722);
            }
            C0443 c0443 = c0147.f395;
            if (c0443 != null) {
                c0443.f2283 = false;
            }
        }

        @Override
        public void mo3402() {
            C0147.this.m3377();
        }

        @Override
        public void mo3403(C0414 c0414) {
            if (c0414 == null) {
                C0147 c0147 = C0147.this;
                Socket socket = c0147.f388.f3005;
                c0147.m3369();
            }
            C0147.this.m3347(c0414);
        }

        @Override
        public void mo3404() {
            C0147 c0147 = C0147.this;
            boolean z = false;
            boolean z2 = c0147.f385 == 2;
            if (c0147.f433 != 1) {
                z = z2;
            } else if (c0147.f396 == 3) {
                z = true;
            }
            if (z) {
                c0147.m3307();
            }
        }

        @Override
        public void mo3407(byte[] bArr, boolean z) {
            C0147.this.m3362(bArr, z);
        }

        @Override
        public void mo3406(C0414 c0414) {
            C0147 c0147 = C0147.this;
            if (c0147.f385 == 2) {
                c0147.mo3406(c0414);
            }
        }

        @Override
        public void mo3405(int i, byte[] bArr) {
            C0147.this.mo3385(i, bArr);
        }
    }

    public C0147(Object obj, Socket socket, Object obj2) {
        super(obj2);
        this.f385 = 0;
        this.f401 = 0;
        this.f347 = 0;
        this.f422 = true;
        this.f379 = C0320.f1706;
        this.f407 = 2048;
        this.f357 = 0;
        this.f382 = "";
        this.f374 = 0;
        this.f391 = "";
        this.f425 = "";
        this.f388 = null;
        this.f373 = "";
        this.f384 = null;
        this.f378 = true;
        this.f345 = false;
        this.f402 = false;
        this.f364 = 0;
        this.f377 = "";
        this.f395 = new C0443();
        byte[] bArr = C0320.f1706;
        this.f436 = bArr;
        this.f430 = false;
        this.f372 = bArr;
        this.f441 = new C0138();
        this.f399 = "";
        this.f389 = new C0301();
        this.f416 = new C0301();
        this.f392 = 0;
        this.f355 = 0;
        this.f423 = false;
        this.f362 = C0320.f1706;
        this.f370 = false;
        this.f406 = null;
        this.f432 = false;
        this.f435 = null;
        this.f410 = true;
        this.f363 = true;
        this.f404 = false;
        this.f397 = false;
        this.f413 = 0;
        this.f351 = null;
        this.f421 = null;
        this.f368 = null;
        this.f344 = false;
        this.f419 = "*";
        this.f354 = 4032;
        this.f428 = 1024;
        this.f427 = null;
        this.f366 = null;
        this.f409 = C0298.f1548;
        this.f442 = C0298.f1547;
        this.f381 = "";
        this.f439 = "";
        this.f424 = "";
        this.f394 = "";
        this.f398 = false;
        this.f408 = false;
        this.f371 = false;
        this.f438 = C0320.f1706;
        this.f426 = C0298.f1549;
        this.f405 = C0298.f1544;
        this.f434 = C0298.f1546;
        this.f390 = "*";
        this.f346 = null;
        this.f431 = null;
        this.f376 = null;
        this.f396 = 0;
        this.f433 = 3;
        this.f420 = 3;
        this.f369 = true;
        this.f387 = false;
        this.f417 = false;
        this.f350 = false;
        this.f393 = true;
        this.f360 = false;
        this.f403 = true;
        this.f380 = null;
        this.f365 = true;
        this.f414 = "";
        this.f429 = "";
        this.f352 = null;
        this.f412 = null;
        this.f383 = true;
        this.f353 = true;
        this.f415 = false;
        this.f356 = false;
        this.f361 = false;
        this.f440 = 0;
        this.f400 = "";
        this.f359 = "";
        this.f358 = false;
        this.f349 = "";
        this.f348 = 0;
        this.f386 = 0;
        this.f367 = new C0301();
        this.f375 = C0259.f1265;
        this.f418 = C0671.f3691;
        this.f411 = false;
        if (obj instanceof InterfaceC0352) {
            this.f412 = (InterfaceC0352) obj;
        }
        if (obj instanceof InterfaceC0125) {
            this.f380 = (InterfaceC0125) obj;
        }
        this.f433 = 3;
        this.f406 = new C0402(this);
        this.f388 = new C0148(this, socket, obj2);
        if (socket != null) {
            this.f382 = socket.getInetAddress().getHostAddress();
            this.f357 = socket.getPort();
        }
    }

    @Override
    public void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        C0335 c0335;
        if (this.f3356 != null && Thread.currentThread() != this.f3356) {
            C0402 c0402 = this.f406;
            c0402.f2092 = 3;
            c0402.f2100 = bArr;
            c0402.f2093 = str;
            c0402.f2094 = str2;
            c0402.f2096 = str3;
            c0402.f2099 = zArr;
            m3322();
            return;
        }
        C0335 c0336 = this.f346;
        C0335 c0337 = new C0335(bArr);
        if (this.f360) {
            zArr[0] = true;
        } else if (c0336 != null) {
            byte[] bArrM4377 = c0336.m4377();
            if (!zArr[0] && bArrM4377.length > 0) {
                if (C0259.m3896(bArrM4377, C0208.f780)) {
                    zArr[0] = true;
                } else {
                    zArr[0] = C0259.m3873(bArrM4377, c0337.m4377());
                }
            }
        }
        if (!zArr[0] && (c0335 = this.f431) != null) {
            byte[] bArrM4378 = c0335.m4377();
            if (bArrM4378.length > 0) {
                if (C0259.m3896(bArrM4378, C0208.f780)) {
                    zArr[0] = true;
                } else {
                    zArr[0] = C0259.m3873(bArrM4378, c0337.m4377());
                }
            }
        }
        this.f427 = c0337;
        InterfaceC0125 interfaceC0125 = this.f380;
        if (interfaceC0125 != null) {
            interfaceC0125.fireSSLServerAuthentication(bArr, str, str2, str3, zArr);
        }
    }

    @Override
    public void fireSSLStatus(String str) {
        if (this.f3356 == null || Thread.currentThread() == this.f3356) {
            InterfaceC0125 interfaceC0125 = this.f380;
            if (interfaceC0125 != null) {
                interfaceC0125.fireSSLStatus(str);
                return;
            }
            return;
        }
        C0402 c0402 = this.f406;
        c0402.f2092 = 2;
        c0402.f2096 = str;
        m3322();
    }

    public boolean m3287() {
        C0311 c0311 = this.f351;
        if (c0311 != null) {
            return c0311.f1678;
        }
        return false;
    }

    public boolean m3288() {
        return this.f388.f3024;
    }

    public final void m3289() throws C0414 {
        mo3302((C0164.m3500(3038, 8, 50) + this.f382 + ":" + this.f357 + " " + f342 + "\r\n" + C0164.m3500(3046, 6, 15) + this.f382 + ":" + this.f357 + "\r\n" + C0164.m3500(3052, 17, 19) + "\r\n" + C0164.m3500(3069, 28, 87) + "\r\n" + C0164.m3500(3097, 16, 49) + "\r\n" + m3298() + "\r\n").toString().getBytes());
        byte[] bArr = this.f436;
        if (bArr.length > 0) {
            mo3302(bArr);
        }
        this.f401 = 1;
    }

    public void m3292(boolean z) {
        this.f360 = z;
    }

    public int m3295() {
        C0311 c0311 = this.f351;
        if (c0311 != null) {
            return c0311.f1670;
        }
        return 0;
    }

    public int m3296() {
        return this.f388.f3004;
    }

    public final void m3297() throws C0414 {
        String strM5888 = C0663.m5888(new StringBuilder().append(C0164.m3500(2897, 8, 35)).append(this.f382).append(":").append(this.f357).append(" "), f342, "\r\n");
        String str = this.f395.f2276;
        if (str.length() > 0) {
            strM5888 = C0663.m5891(strM5888).append(C0164.m3500(2905, 27, 22)).append(str).append("\r\n").toString();
        }
        mo3302(C0663.m5891(strM5888).append(m3298()).toString().toString().getBytes());
        byte[] bArr = this.f436;
        if (bArr.length > 0) {
            mo3302(bArr);
        }
        mo3302(C0320.f1716);
    }

    public final String m3298() {
        String str = this.f395.f2285;
        return !C0259.m3856(str) ? C0164.m3500(2885, 12, 95) + str + "\r\n" : "";
    }

    public boolean mo3299() {
        return m3323();
    }

    public boolean m3300() {
        return this.f415;
    }

    public void m3301(boolean z) {
        synchronized (this.f1721) {
            this.f422 = z;
            if (this.f385 == 2) {
                this.f388.m5283(z);
            }
        }
    }

    public int m3303() {
        return this.f388.f3002;
    }

    public int m3304() {
        return this.f413;
    }

    public boolean m3305() {
        return this.f356;
    }

    public void m3306() throws C0414 {
        if (m4305()) {
            this.f388.m5286(true);
            this.f388.m5298(false);
            C0521 c0521 = this.f388;
            c0521.m5308(c0521.f3005);
            this.f388.m5286(false);
        } else {
            if (!m3375()) {
                return;
            }
            C0521 c0522 = this.f388;
            Socket socket = c0522.f3005;
            c0522.m5286(true);
            this.f388.m5308(this.f351.f1662);
            if (this.f351.m4283(socket)) {
                try {
                    m3394(true, socket, this.f351.f1662);
                    this.f388.m5308(this.f351.f1662);
                } catch (IOException unused) {
                }
            }
            this.f388.m5286(false);
            try {
                if (this.f351.f1662 != null) {
                    this.f351.f1662.setSoTimeout(100);
                }
            } catch (Exception unused2) {
            }
        }
        this.f396 = 0;
    }

    public final void m3307() {
        InterfaceC0352 interfaceC0352 = this.f412;
        if (interfaceC0352 != null) {
            ((C0529) interfaceC0352).m5351();
        }
    }

    @Override
    public void mo3308(int i) throws C0414 {
        try {
            super.mo3308(i);
            if (this.f3350 > 0 && this.f3342 > 0 && m3355() && (this.f3342 + ((long) (this.f3350 * this.f3344))) - System.currentTimeMillis() <= 0) {
                m3395(false, false);
            }
        } finally {
            if (Thread.currentThread() == this.f3356) {
                this.f406.m4636();
                m4306();
            }
        }
    }

    public void mo3311(byte[] bArr) {
    }

    public void m3315(boolean z) throws C0414 {
        synchronized (this.f1721) {
            int i = this.f385;
            if (i != 0 && i != 3) {
                throw new C0414(211, C0164.m3500(1764, 45, 0));
            }
            this.f370 = z;
        }
    }

    public final void m3316() throws C0414 {
        byte[] bArrM3858 = C0259.m3858(this.f395.f2279);
        byte[] bytes = this.f382.getBytes();
        int length = bytes.length;
        int length2 = bArrM3858.length + 9 + length;
        byte[] bArr = new byte[length2 + 1];
        bArr[0] = 4;
        bArr[1] = 1;
        int i = this.f357;
        bArr[2] = (byte) (i >> 8);
        bArr[3] = (byte) (i & 255);
        bArr[6] = 0;
        bArr[5] = 0;
        bArr[4] = 0;
        bArr[7] = 1;
        System.arraycopy(bArrM3858, 0, bArr, 8, bArrM3858.length);
        bArr[bArrM3858.length + 8] = 0;
        System.arraycopy(bytes, 0, bArr, bArrM3858.length + 9, length);
        bArr[length2] = 0;
        mo3302(bArr);
    }

    public void m3318(String str) {
        this.f399 = str;
    }

    public void m3320() {
        synchronized (this.f1721) {
        }
    }

    public void m3321() {
        if (this.f3359.size() > 0) {
            Vector vector = this.f3359;
            this.f3356 = (Thread) vector.elementAt(vector.size() - 1);
            Vector vector2 = this.f3359;
            vector2.removeElementAt(vector2.size() - 1);
        } else {
            this.f3356 = null;
        }
        if (this.f3356 == null) {
            this.f406.m4636();
        }
    }

    public void m3322() {
        this.f1721.notifyAll();
        while (this.f1722 == null && this.f406.f2092 != 0) {
            C0558.m5496(this.f1721, 20);
        }
    }

    public boolean m3323() {
        C0443 c0443 = this.f395;
        return (c0443 == null || c0443.f2278 == 0 || !c0443.f2281) ? false : true;
    }

    public void m3325(boolean z) {
        this.f397 = z;
    }

    public int m3327() {
        int iM5295;
        synchronized (this.f1721) {
            if (this.f385 != 2 || (iM5295 = this.f374) == 0) {
                iM5295 = this.f388.m5295();
            }
        }
        return iM5295;
    }

    public void m3329(int i) throws C0414 {
        synchronized (this.f1721) {
            int i2 = this.f385;
            if (i2 == 1 || i2 == 2) {
                throw new C0414(212, C0164.m3500(1809, 34, 63));
            }
            if (i != this.f433) {
                this.f433 = i;
            }
        }
    }

    public void m3331(String str) throws C0414 {
        synchronized (this.f1721) {
            this.f390 = str == null ? "" : str;
            if (str.length() > 0 && m3333()) {
                C0311 c0311 = this.f351;
                String str2 = c0311.f1675;
                c0311.f1675 = C0259.m3843(str);
                if (!c0311.f1675.equals(str2)) {
                    c0311.mo4275();
                    c0311.mo4271();
                    c0311.mo4277();
                }
            }
        }
    }

    public boolean m3333() throws C0414 {
        C0336 c0336;
        if (this.f1726) {
            return false;
        }
        if (this.f351 != null) {
            return true;
        }
        try {
            c0336 = new C0336(this, this.f1721, this);
        } catch (Throwable unused) {
            c0336 = null;
        }
        this.f351 = c0336;
        if (c0336 != null) {
            return true;
        }
        throw new C0414(13001, C0164.m3500(1903, 34, 83));
    }

    public String m3334() {
        if (m4305()) {
            return this.f419;
        }
        C0311 c0311 = this.f351;
        if (c0311 == null) {
            return "*";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            String[] strArr = c0311.f1674;
            if (i >= strArr.length) {
                return stringBuffer.toString();
            }
            stringBuffer.append(strArr[i]);
            if (i < c0311.f1674.length - 1) {
                stringBuffer.append("; ");
            }
            i++;
        }
    }

    public String m3335() {
        return this.f384.f1304.toString();
    }

    public String m3336() {
        if (m4305()) {
            return C0208.f771;
        }
        C0311 c0311 = this.f351;
        return c0311 != null ? c0311.f1675 : this.f390;
    }

    public void m3337(int i) throws C0414 {
        synchronized (this.f1721) {
            int i2 = this.f385;
            if (i2 != 0 && i2 != 3) {
                throw new C0414(106, C0164.m3500(2367, 70, 47));
            }
            this.f388.m5291(i);
        }
    }

    public String m3340() {
        try {
            C0521 c0521 = this.f388;
            return c0521 != null ? c0521.m5302() : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public boolean m3341() {
        return this.f433 != 3;
    }

    public final void m3342() throws C0414 {
        byte[] bArrM3381 = m3381(this.f382);
        if (bArrM3381[0] != 1) {
            try {
                String hostAddress = C0558.m5483(this.f382, m3400()).getHostAddress();
                this.f382 = hostAddress;
                bArrM3381 = m3381(hostAddress);
            } catch (Exception unused) {
                throw new C0414(118, C0164.m3500(3767, 56, 122));
            }
        }
        byte[] bArrM3858 = C0259.m3858(this.f395.f2279);
        int length = bArrM3858.length;
        byte[] bArr = new byte[length + 9];
        bArr[0] = 4;
        bArr[1] = 1;
        int i = this.f357;
        bArr[2] = (byte) (i >> 8);
        bArr[3] = (byte) (i & 255);
        System.arraycopy(bArrM3381, 1, bArr, 4, 4);
        System.arraycopy(bArrM3858, 0, bArr, 8, bArrM3858.length);
        bArr[length + 8] = 0;
        mo3302(bArr);
    }

    public int m3343() {
        if (m4305()) {
            return this.f354;
        }
        C0311 c0311 = this.f351;
        if (c0311 != null) {
            return c0311.f1667;
        }
        return 4032;
    }

    public final void m3344() throws C0414 {
        if (C0307.m4184(this.f353)) {
            StringTokenizer stringTokenizer = new StringTokenizer(C0307.m4183(this.f353), ";");
            String strM3889 = "";
            String strM38810 = "";
            int i = -1;
            int i2 = -1;
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf("=");
                int iIndexOf2 = strNextToken.indexOf(":");
                if (iIndexOf > -1 && iIndexOf2 > -1 && strNextToken.startsWith(C0164.m3500(2751, 6, 39))) {
                    strM38810 = C0259.m3889(strNextToken, iIndexOf + 1, iIndexOf2);
                    i2 = Integer.parseInt(strNextToken.substring(iIndexOf2 + 1).trim());
                } else if (iIndexOf > -1 && iIndexOf2 > -1 && strNextToken.startsWith(C0164.m3500(2757, 6, 12))) {
                    strM3889 = C0259.m3889(strNextToken, iIndexOf + 1, iIndexOf2);
                    i = Integer.parseInt(strNextToken.substring(iIndexOf2 + 1).trim());
                }
            }
            if (strM3889.length() > 0 && i > -1) {
                this.f395.m4818(strM3889);
                this.f395.m4817(i);
                this.f395.m4819(1);
            } else {
                if (strM38810.length() <= 0 || i2 <= -1) {
                    return;
                }
                this.f395.m4818(strM38810);
                this.f395.m4817(i2);
                this.f395.m4819(3);
            }
        }
    }

    public boolean m3345() {
        return this.f397;
    }

    public String m3346(int i, String str) throws C0414 {
        if (this.f385 != 2) {
            throw new C0414(1117, C0164.m3500(2151, 38, 68));
        }
        this.f348 = i;
        this.f352 = str;
        this.f429 = null;
        this.f389.m4169();
        this.f389.f1613 = this.f1725.m5715();
        m3301(true);
        while (true) {
            String str2 = this.f429;
            if (str2 != null) {
                this.f348 = 0;
                this.f352 = null;
                return str2;
            }
            if (!m3355()) {
                C0414 c0414 = this.f1722;
                if (c0414 == null) {
                    throw new C0414(32000, C0164.m3500(2189, 18, 34));
                }
                throw c0414;
            }
            mo5626();
        }
    }

    public final String m3350() {
        return this.f395.f2278 == 4 ? C0164.m3500(2964, 4, 60) : C0164.m3500(2968, 9, 10);
    }

    public void m3354(boolean z) {
        this.f415 = z;
    }

    public boolean m3355() {
        return this.f385 == 2;
    }

    public int m3356() {
        return this.f388.f2996;
    }

    public String m3357() {
        return this.f399;
    }

    public void m3360(C0414 c0414, Object obj, Object obj2) {
        C0311 c0311;
        if (!m4305() && (c0311 = this.f351) != null) {
            this.f368 = c0311.mo4276();
            SSLSocket sSLSocket = this.f351.f1676;
            this.f421 = sSLSocket == null ? null : sSLSocket.getSession();
        }
        synchronized (this.f1721) {
            m3390(c0414, obj, obj2);
        }
    }

    public void m3365(boolean z) {
        this.f356 = z;
    }

    public final void m3366() throws C0414 {
        String strM3350 = m3350();
        C0443 c0443 = this.f395;
        String strM3383 = m3383(strM3350, c0443.f2279, c0443.f2280, this.f382, "");
        mo3384(2, m3335(), C0164.m3500(2977, 4, 117));
        mo3302((C0164.m3500(2981, 8, 106) + this.f382 + ":" + this.f357 + " " + f342 + "\r\n" + C0164.m3500(2989, 21, 110) + m3350() + " " + strM3383 + "\r\n" + C0164.m3500(3010, 28, 1) + "\r\n" + m3298() + "\r\n").toString().getBytes());
        byte[] bArr = this.f436;
        if (bArr.length > 0) {
            mo3302(bArr);
        }
        this.f401 = 1;
    }

    public void m3367() {
        C0443 c0443;
        int i = this.f3354 * this.f3344;
        while (i > 0) {
            if (!m3355() && ((c0443 = this.f395) == null || !c0443.f2283)) {
                return;
            }
            synchronized (this.f1721) {
                C0558.m5496(this.f1721, 20);
            }
            i -= 20;
            if (Thread.currentThread() == this.f3356) {
                this.f406.m4636();
            }
        }
    }

    public boolean mo3368() {
        return this.f388.f3034;
    }

    public void m3369() {
    }

    public void m3373(boolean z) {
        synchronized (this.f1721) {
            this.f437 = z;
            if (z && this.f363) {
                m3301(false);
            }
            if (this.f385 == 2) {
                this.f388.m5289(z);
            }
        }
    }

    public boolean m3375() {
        C0311 c0311;
        if (m4305()) {
            return this.f396 == 3;
        }
        return (this.f396 != 3 || (c0311 = this.f351) == null || c0311.f1676 == null) ? false : true;
    }

    public String m3376() {
        String strM5287;
        synchronized (this.f1721) {
            strM5287 = (this.f385 != 2 || this.f391.length() <= 0) ? this.f388.m5287() : this.f391;
        }
        return strM5287;
    }

    public void m3377() {
    }

    public final boolean m3378(int i) throws C0414 {
        String strM3376;
        SSLSocket sSLSocket;
        synchronized (this.f1721) {
            if (!m4305()) {
                if (this.f351 == null) {
                    m3331(this.f390);
                }
                C0311 c0311 = this.f351;
                C0335 c0335 = this.f376;
                C0335 c0336 = c0311.f1665;
                c0311.f1665 = c0335;
                if ((c0335 == null && c0336 != null) || (c0335 != null && c0335 != c0311.f1665)) {
                    c0311.mo4275();
                    c0311.mo4271();
                    c0311.mo4277();
                }
                this.f351.f1679 = this.f346;
                this.f351.f1671 = this.f394;
                this.f351.f1666 = this.f371;
                Socket socket = this.f388.f3005;
                if (this.f351.m4283(socket)) {
                    return true;
                }
                Object obj = this.f417 ? this.f421 : null;
                this.f388.m5309(socket, true);
                this.f388.m5286(true);
                if (obj != null) {
                    this.f351.mo4274(this.f368);
                }
                C0311 c0312 = this.f351;
                String str = this.f382;
                boolean z = this.f369;
                boolean z2 = this.f344;
                boolean z3 = this.f383;
                c0312.f1662 = socket;
                c0312.mo4279(socket, str, z2, obj, z3);
                c0312.mo4268(z);
                if (c0312.f1722 != null) {
                    sSLSocket = c0312.f1676;
                } else {
                    if (!z) {
                        c0312.f1676.setNeedClientAuth(false);
                    }
                    c0312.m4269(false);
                    sSLSocket = c0312.f1676;
                }
                if (this.f351.f1722 != null) {
                    throw this.f351.f1722;
                }
                fireSSLStatus(C0164.m3500(4124, 28, 55));
                if (i > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis() + ((long) (i * 1000));
                    int i2 = this.f385;
                    while (this.f396 != 3 && this.f385 == i2) {
                        mo3308((int) (jCurrentTimeMillis - System.currentTimeMillis()));
                    }
                    if (this.f385 == 0) {
                        if (this.f351.f1722 != null) {
                            throw this.f351.f1722;
                        }
                        throw new C0414(32000, C0164.m3500(4152, 48, 58));
                    }
                }
                return sSLSocket == this.f388.f3005;
            }
            m3286(true, this.f419);
            C0298 c0298 = new C0298(this.f369, 0);
            c0298.f1591 = this.f365;
            c0298.f1585 = this.f409;
            c0298.f1551 = this.f442;
            c0298.f1577 = this.f426;
            c0298.f1584 = this.f405;
            c0298.f1550 = this.f434;
            c0298.f1596 = this.f381;
            c0298.f1559 = this.f438;
            c0298.f1555 = this.f398;
            c0298.f1578 = this.f428;
            c0298.f1573 = this.f408;
            c0298.f1552 = this;
            if (this instanceof InterfaceC0568) {
                c0298.f1595 = (InterfaceC0568) this;
            }
            c0298.f1588 = this.f424;
            c0298.f1592 = this.f394;
            c0298.f1563 = this.f371;
            c0298.f1569 = this.f376;
            c0298.f1567 = false;
            Object obj2 = this.f366;
            if (obj2 instanceof C0670) {
                c0298.f1580 = (C0670) obj2;
            }
            c0298.f1589 = this.f354;
            if (this.f369) {
                strM3376 = C0259.m3856(this.f414) ? this.f382 : this.f414;
            } else {
                strM3376 = m3376();
            }
            c0298.f1599 = strM3376;
            c0298.f1594 = this.f417;
            c0298.f1598 = m4305() ? this.f393 : this.f350;
            String str2 = this.f419;
            if (str2 == null || str2.length() == 0) {
                str2 = "*";
            }
            c0298.f1601 = str2.toUpperCase();
            c0298.f1562 = this.f403;
            fireSSLStatus(C0164.m3500(4200, 28, 16));
            if (C0320.f1718) {
                fireSSLStatus(C0164.m3500(4228, 43, 110));
            }
            this.f388.m5310(c0298);
            if (i > 0) {
                long jCurrentTimeMillis2 = System.currentTimeMillis() + ((long) (i * 1000));
                int i3 = this.f385;
                while (this.f396 != 3 && this.f385 == i3) {
                    mo3308((int) (jCurrentTimeMillis2 - System.currentTimeMillis()));
                }
                if (this.f385 == 0) {
                    if (c0298.f1571 != null) {
                        throw c0298.f1571;
                    }
                    throw new C0414(32000, C0164.m3500(4271, 48, 31));
                }
            }
            this.f439 = c0298.f1561;
            return true;
        }
    }

    public void m3380(boolean z) throws C0414 {
        synchronized (this.f1721) {
            boolean z2 = this.f3354 > 0 || (z && this.f413 > 0);
            boolean z3 = z2 && this.f3358 == 0;
            if (z) {
                int i = this.f385;
                if (i == 1) {
                    throw new C0414(1105, C0164.m3500(2579, 81, 127));
                }
                if (i == 2) {
                    throw new C0414(104, C0164.m3500(2660, 80, 46));
                }
                if (z3) {
                    mo3370();
                } else {
                    this.f396 = 0;
                }
            }
            try {
                m3395(z, z2);
                if (z3) {
                    this.f3358 = 0L;
                    if (this.f3348) {
                        m3321();
                    }
                }
            } catch (Throwable th) {
                if (z3) {
                    this.f3358 = 0L;
                    if (this.f3348) {
                        m3321();
                    }
                }
                throw th;
            }
        }
    }

    public final void m3382() throws C0414 {
        this.f425 = null;
        this.f388.m5305(5);
        if (!this.f370) {
            byte[] bArrM3381 = m3381(this.f382);
            int length = bArrM3381.length;
            byte[] bArr = new byte[length + 5];
            bArr[0] = 5;
            bArr[1] = 1;
            bArr[2] = 0;
            System.arraycopy(bArrM3381, 0, bArr, 3, length);
            int i = this.f357;
            bArr[length + 3] = (byte) (i >> 8);
            bArr[length + 4] = (byte) (i & 255);
            mo3302(bArr);
            return;
        }
        this.f391 = "";
        this.f374 = 0;
        this.f382 = "";
        this.f357 = 0;
        byte[] bArrM3382 = m3381("");
        int length2 = bArrM3382.length;
        byte[] bArr2 = new byte[length2 + 5];
        bArr2[0] = 5;
        bArr2[1] = 2;
        bArr2[2] = 0;
        System.arraycopy(bArrM3382, 0, bArr2, 3, length2);
        bArr2[length2 + 3] = 0;
        bArr2[length2 + 4] = 0;
        mo3302(bArr2);
    }

    public void mo3384(int i, String str, String str2) {
    }

    public void mo3385(int i, byte[] bArr) {
    }

    @Override
    public void mo3387(Object obj) {
        super.mo3387(obj);
        C0521 c0521 = this.f388;
        if (c0521 != null) {
            c0521.mo3387(obj);
        }
    }

    public boolean m3400() {
        return this.f388.f3014;
    }

    @Override
    public void mo3290(int i) {
        super.mo3290(i);
    }

    public void m3317(int i) throws C0414 {
        synchronized (this.f1721) {
            C0521 c0521 = this.f388;
            c0521.f2996 = i;
            c0521.m5307(c0521.f3024);
        }
    }

    public void m3326(byte[] bArr) {
        synchronized (this.f1721) {
            byte[] bArrM3845 = C0259.m3845(bArr);
            this.f379 = bArrM3845;
            if (this.f385 == 2) {
                this.f388.m5300(bArrM3845);
            }
        }
    }

    public void mo3351() {
        int i = this.f433;
        if (i == 0) {
            i = 1;
        }
        this.f420 = i;
    }

    public void m3364(String str) throws C0414 {
        if (m4305()) {
            this.f419 = str;
        } else if (m3333()) {
            this.f351.m4278(str);
        }
    }

    public final void m3294(byte[] bArr, boolean z) throws C0414 {
        int length = bArr.length;
        byte[] bArr2 = this.f362;
        if (bArr2 == null) {
            if (z) {
                this.f416.m4181(bArr, 0, bArr.length);
                C0301 c0301 = this.f416;
                int i = c0301.f1615;
                if (c0301.m4166(i - 1) == 13) {
                    i--;
                    length--;
                }
                this.f362 = this.f416.m4176(0, i);
            } else {
                C0301 c0302 = this.f416;
                if (c0302.f1615 == 0) {
                    c0302.m4173(bArr);
                } else {
                    c0302.m4180(bArr);
                }
            }
        } else if (z && (bArr.length == 0 || bArr[0] == 13)) {
            try {
                byte b = bArr2[9];
                if (b == 50) {
                    m3328();
                } else if (b == 52) {
                    throw new C0414(118, C0164.m3500(2932, 16, SyslogConstants.LOG_CLOCK) + C0259.m3848(this.f362, this.f375) + ".");
                }
            } catch (IndexOutOfBoundsException unused) {
                throw new C0414(118, C0164.m3500(2948, 16, 52) + C0259.m3848(this.f362, this.f375) + ".");
            }
        }
        if (length == bArr.length) {
            mo3311(bArr);
        } else {
            mo3311(C0259.m3865(bArr, 0, length));
        }
    }

    public void m3353(String str) {
        synchronized (this.f1721) {
            fireSSLStatus(str);
        }
    }

    public void m3374(int i) throws C0414 {
        if ((i & 12288) == 12288) {
            this.f1723 |= 2;
        } else {
            this.f1723 &= -3;
        }
        if (!m4305()) {
            if (m3333()) {
                this.f351.f1667 = i;
                return;
            }
            return;
        }
        this.f354 = i;
    }

    @Override
    public void mo3392(boolean z) {
        if (z && !this.f1720) {
            try {
                m3395(false, false);
            } catch (Exception unused) {
            }
            this.f406 = null;
        }
        C0521 c0521 = this.f388;
        if (c0521 != null) {
            c0521.m4308();
        }
        super.mo3392(z);
    }

    public void m3352(int i) throws C0414 {
        if (m3333()) {
            this.f351.f1670 = i;
        }
    }

    public void mo3319(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5293(z);
        }
    }

    public void mo3302(byte[] bArr) {
        this.f388.m5312(bArr);
    }

    public void m3363(int i) {
        synchronized (this.f1721) {
            this.f407 = i;
            this.f388.m5305(i);
        }
    }

    public void m3324(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5297(i);
        }
    }

    public void m3314(String str) throws C0414 {
        synchronized (this.f1721) {
            int i = this.f385;
            if (i != 0 && i != 3) {
                throw new C0414(107, C0164.m3500(2297, 70, 106));
            }
            this.f391 = str;
            this.f388.m5292(C0259.m3843(str));
        }
    }

    public void m3361(byte[] bArr, int i, int i2) throws C0414 {
        synchronized (this.f1721) {
            int i3 = this.f385;
            if (i3 != 0 && i3 != 3) {
                throw new C0414(211, C0164.m3500(2252, 45, 88));
            }
            if (bArr == null) {
                this.f436 = C0320.f1706;
            } else {
                byte[] bArr2 = new byte[i2];
                this.f436 = bArr2;
                System.arraycopy(bArr, i, bArr2, 0, i2);
            }
        }
    }

    public void m3372(String str) throws C0414 {
        synchronized (this.f1721) {
            if (str.equalsIgnoreCase(C0208.f771)) {
                C0320.f1708 = false;
            } else if (str.equalsIgnoreCase(C0208.f749)) {
                m4311(true);
            } else {
                C0320.f1708 = true;
                m3331(str);
            }
        }
    }

    public void m3330(int i) throws C0414 {
        synchronized (this.f1721) {
            int i2 = this.f385;
            if (i2 != 0 && i2 != 3) {
                throw new C0414(100, C0164.m3500(2508, 71, 22));
            }
            this.f357 = i;
        }
    }

    public void m3338(String str) throws C0414 {
        synchronized (this.f1721) {
            int i = this.f385;
            if (i != 0 && i != 3) {
                throw new C0414(101, C0164.m3500(2437, 71, WebSocketProtocol.PAYLOAD_SHORT));
            }
            this.f382 = C0259.m3843(str);
        }
    }

    public final void m3328() {
        boolean zM3378;
        int i;
        m5628();
        if (m3323()) {
            m3389(C0164.m3500(4357, 29, 95), (C0414) null);
        }
        m3389(C0164.m3500(4386, 32, 66), (C0414) null);
        try {
            this.f388.m5283(false);
            int iM3304 = this.f3358 != 0 ? this.f3354 : 20;
            if (m3304() > 0) {
                iM3304 = m3304();
            }
            int i2 = this.f420;
            boolean z = true;
            if (i2 != 1) {
                if (i2 == 2 && (i = this.f396) != 0) {
                    if (i == 1) {
                        this.f396 = 2;
                        this.f388.m5300(C0320.f1716);
                        this.f388.m5283(true);
                        return;
                    } else if (i == 2) {
                        zM3378 = m3378(iM3304);
                    }
                }
                if (z) {
                    this.f388.m5300(this.f379);
                    this.f388.m5305(this.f407);
                    this.f388.m5289(this.f437);
                    m3359((C0414) null);
                    this.f388.m5283(this.f422);
                    this.f1721.notifyAll();
                }
            }
            zM3378 = m3378(iM3304);
            z = zM3378;
            if (z) {
                this.f388.m5300(this.f379);
                this.f388.m5305(this.f407);
                this.f388.m5289(this.f437);
                m3359((C0414) null);
                this.f388.m5283(this.f422);
                this.f1721.notifyAll();
            }
        } catch (Exception e) {
            m4312(e);
            m3359(this.f1722);
            try {
                this.f388.m5311(false, false);
            } catch (C0414 unused) {
            }
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        C0521 c0521;
        C0311 c0311;
        if (c0440.m4813(C0164.m3500(373, 6, 67))) {
            if (c0440.f2269) {
                return this.f373;
            }
            this.f373 = c0440.f2271;
        } else if (c0440.m4813(C0164.m3500(379, 14, 1))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f388.f3030).toString();
            }
            this.f388.f3030 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3500(393, 9, 66))) {
            if (c0440.f2269) {
                return m3376();
            }
            m3314(c0440.f2271);
        } else if (c0440.m4813(C0164.m3500(TypedValues.CycleType.TYPE_VISIBILITY, 9, 114))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(m3327()).toString();
            }
            m3337(c0440.m4805());
        } else if (c0440.m4813(C0164.m3500(411, 12, 64))) {
            if (c0440.f2269) {
                return C0259.m3882(this.f436);
            }
            byte[] bytes = c0440.f2271.getBytes();
            m3361(bytes, 0, bytes == null ? 0 : bytes.length);
        } else if (c0440.m4813(C0164.m3500(TypedValues.CycleType.TYPE_WAVE_PERIOD, 16, 43))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f370).toString();
            }
            m3315(c0440.m4809());
        } else if (c0440.m4813(C0164.m3500(439, 14, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f437).toString();
            }
            m3373(c0440.m4809());
        } else if (c0440.m4813(C0164.m3500(453, 10, 59))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f388.f3020).toString();
            }
            m3332(c0440.m4809());
        } else if (c0440.m4813(C0164.m3500(463, 12, 64))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f388.f3007).toString();
            }
            m3324(c0440.m4805());
        } else if (c0440.m4813(C0164.m3500(475, 13, 63))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f388.f3026).toString();
            }
            m3371(c0440.m4805());
        } else if (c0440.m4813(C0164.m3500(488, 13, 89))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f407).toString();
            }
            m3363(c0440.m4805());
        } else if (c0440.m4813(C0164.m3500(TypedValues.PositionType.TYPE_TRANSITION_EASING, 23, 49))) {
            if (c0440.f2269) {
                return Constants.CASEFIRST_FALSE;
            }
            c0440.m4809();
            m3320();
        } else if (!c0440.m4813(C0164.m3500(524, 38, 79)) && !c0440.m4813(C0164.m3500(562, 32, 33))) {
            if (c0440.m4813(C0164.m3500(594, 24, 65))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f3347).toString();
                }
                this.f3347 = c0440.m4809();
            } else if (c0440.m4813(C0164.m3500(618, 7, 87))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(m3400()).toString();
                }
                if (c0440.f2271.trim().equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                    c0440.m4805();
                    this.f388.m5299();
                } else {
                    this.f388.f3014 = c0440.m4809();
                }
            } else if (c0440.m4813(C0164.m3500(625, 15, 22))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f388.f3029).toString();
                }
                m3386(c0440.m4806());
            } else if (c0440.m4813(C0164.m3500(640, 20, 62))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f353).toString();
                }
                this.f353 = c0440.m4809();
            } else if (c0440.m4813(C0164.m3500(660, 24, 66))) {
                if (c0440.f2269) {
                    return this.f409;
                }
                this.f409 = C0298.m4077(c0440.f2271);
            } else if (c0440.m4813(C0164.m3500(684, 13, 104))) {
                if (c0440.f2269) {
                    return this.f381;
                }
                this.f381 = c0440.f2271;
            } else if (c0440.m4813(C0164.m3500(697, 13, 72))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(C0259.m3841(this.f438)).toString();
                }
                this.f438 = C0259.m3863(c0440.f2271);
            } else if (c0440.m4813(C0164.m3500(710, 15, 107))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f398).toString();
                }
                this.f398 = c0440.m4809();
            } else if (c0440.m4813(C0164.m3500(725, 19, 107))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(m4305() ? this.f393 : this.f350).toString();
                }
                boolean zM4809 = c0440.m4809();
                if (m4305()) {
                    this.f393 = zM4809;
                } else {
                    this.f350 = zM4809;
                }
            } else if (!c0440.m4813(C0164.m3500(744, 11, 117)) && !c0440.m4813(C0164.m3500(755, 18, 17))) {
                if (c0440.m4813(C0164.m3500(773, 24, 94))) {
                    if (c0440.f2269) {
                        StringBuilder sbM5891 = C0663.m5891("");
                        C0311 c0312 = this.f351;
                        return sbM5891.append(c0312 != null ? c0312.f1663 : false).toString();
                    }
                    boolean zM48010 = c0440.m4809();
                    if (m3333()) {
                        this.f351.f1663 = zM48010;
                    }
                } else if (c0440.m4813(C0164.m3500(797, 28, 114))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3287()).toString();
                    }
                    boolean zM48011 = c0440.m4809();
                    if (m3333()) {
                        this.f351.f1678 = zM48011;
                    }
                } else if (c0440.m4813(C0164.m3500(825, 22, 88))) {
                    if (c0440.f2269) {
                        return m3334();
                    }
                    m3364(c0440.f2271);
                } else if (c0440.m4813(C0164.m3500(847, 15, 75))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f417).toString();
                    }
                    this.f417 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(862, 11, 49))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3336()).toString();
                    }
                    m3372(c0440.f2271);
                } else if (c0440.m4813(C0164.m3500(873, 17, 54))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3295()).toString();
                    }
                    m3352(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(890, 19, 19))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3343()).toString();
                    }
                    m3374(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(909, 13, 96))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f369).toString();
                    }
                    this.f369 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(922, 21, WebSocketProtocol.PAYLOAD_SHORT))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f387).toString();
                    }
                    this.f387 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(943, 19, 14))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f360).toString();
                    }
                    this.f360 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(962, 22, 82))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f403).toString();
                    }
                    this.f403 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(984, 18, 93))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f402).toString();
                    }
                    this.f402 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1002, 18, 92))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f395.f2282).toString();
                    }
                    this.f395.m4821(c0440.m4809());
                } else if (c0440.m4813(C0164.m3500(PointerIconCompat.TYPE_GRAB, 12, 24))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f395.f2278).toString();
                    }
                    this.f395.m4819(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(1032, 12, 6))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return this.f395.f2277;
                    }
                    this.f395.m4818(c0440.f2271);
                } else if (c0440.m4813(C0164.m3500(1044, 12, 8))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f395.f2286).toString();
                    }
                    this.f395.m4817(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(1056, 12, 9))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return this.f395.f2279;
                    }
                    this.f395.m4815(c0440.f2271);
                } else if (c0440.m4813(C0164.m3500(1068, 16, 86))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return this.f395.f2280;
                    }
                    this.f395.m4814(c0440.f2271);
                } else if (c0440.m4813(C0164.m3500(1084, 21, 75))) {
                    if (this.f395 == null) {
                        this.f395 = new C0443();
                    }
                    if (c0440.f2269) {
                        return this.f395.f2276;
                    }
                    this.f395.m4820(c0440.f2271);
                } else if (c0440.m4813(C0164.m3500(1105, 24, 127))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f410).toString();
                    }
                    this.f410 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1129, 13, 91))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f345).toString();
                    }
                    this.f345 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1142, 11, 16))) {
                    if (c0440.f2269) {
                        return this.f377;
                    }
                    this.f377 = c0440.f2271;
                } else if (c0440.m4813(C0164.m3500(1153, 12, 112))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(mo3368()).toString();
                    }
                    mo3319(c0440.m4809());
                } else if (c0440.m4813(C0164.m3500(1165, 13, 63))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3296()).toString();
                    }
                    m3313(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(1178, 17, 60))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3303()).toString();
                    }
                    m3379(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(1195, 10, 7))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3356()).toString();
                    }
                    m3317(c0440.m4805());
                } else if (c0440.m4813(C0164.m3500(1205, 6, 95))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m3288()).toString();
                    }
                    m3339(c0440.m4809());
                } else if (c0440.m4813(C0164.m3500(1211, 18, 22))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f378).toString();
                    }
                    this.f378 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1229, 9, 63))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(m3300()).toString();
                    }
                    m3354(c0440.m4809());
                } else if (c0440.m4813(C0164.m3500(1238, 21, 110))) {
                    if (c0440.m4811()) {
                        return this.f400;
                    }
                    this.f400 = c0440.m4807();
                } else if (c0440.m4813(C0164.m3500(1259, 13, 23))) {
                    if (c0440.m4811()) {
                        return this.f359;
                    }
                    this.f359 = c0440.m4807();
                } else if (c0440.m4813(C0164.m3500(1272, 20, 59))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f358).toString();
                    }
                    this.f358 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1292, 11, 15))) {
                    if (c0440.m4811()) {
                        return this.f349;
                    }
                    this.f349 = c0440.m4807();
                } else if ((c0440.m4813(C0164.m3500(1303, 11, 46)) || c0440.m4813(C0164.m3500(1314, 12, 1))) && c0440.m4811()) {
                    C0266 c0266 = this.f384;
                    if (c0266 != null) {
                        return c0266.m3966();
                    }
                } else if (c0440.m4813(C0164.m3500(1326, 17, 125))) {
                    if (c0440.m4811()) {
                        return this.f375;
                    }
                    this.f375 = c0440.m4807();
                } else if (c0440.m4813(C0164.m3500(1343, 17, 74))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f413).toString();
                    }
                    this.f413 = c0440.m4805();
                } else if (c0440.m4813(C0164.m3500(1360, 15, 91))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f418).toString();
                    }
                    this.f418 = c0440.m4808();
                } else if (c0440.m4813(C0164.m3500(1375, 24, 74))) {
                    if (c0440.m4811()) {
                        return this.f426;
                    }
                    this.f426 = C0298.m4078(c0440.m4807());
                } else if (c0440.m4813(C0164.m3500(1399, 19, 22))) {
                    if (c0440.m4811()) {
                        return this.f434;
                    }
                    this.f434 = C0298.m4084(c0440.m4807(), true);
                } else if (c0440.m4813(C0164.m3500(1418, 20, 110))) {
                    if (c0440.m4811()) {
                        return this.f405;
                    }
                    this.f405 = C0298.m4084(c0440.m4807(), true);
                } else if (c0440.m4813(C0164.m3500(1438, 20, 112))) {
                    if (c0440.m4811()) {
                        return this.f442;
                    }
                    this.f442 = C0298.m4084(c0440.m4807(), false);
                } else if (c0440.m4813(C0164.m3500(1458, 13, 121))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f408).toString();
                    }
                    this.f408 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1471, 19, 5))) {
                    if (c0440.m4811()) {
                        return m3357();
                    }
                    m3318(c0440.m4808());
                } else if (c0440.m4813(C0164.m3500(1490, 13, 70))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(m3305()).toString();
                    }
                    m3365(c0440.m4809());
                } else if (c0440.m4813(C0164.m3500(1503, 16, WebSocketProtocol.PAYLOAD_SHORT))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f365).toString();
                    }
                    this.f365 = c0440.m4809();
                } else if (c0440.m4813(C0164.m3500(1519, 22, 60))) {
                    if (c0440.m4811()) {
                        return C0663.m5891("").append(this.f361).toString();
                    }
                    this.f361 = c0440.m4809();
                } else if (!c0440.m4813(C0164.m3500(1541, 7, 82)) && !c0440.m4813(C0164.m3500(1548, 10, SyslogConstants.LOG_CLOCK))) {
                    if (c0440.m4813(C0164.m3500(1558, 16, 85))) {
                        if (c0440.m4811()) {
                            return this.f394;
                        }
                        this.f394 = c0440.m4808();
                    } else if (!c0440.m4813(C0164.m3500(1574, 8, 74)) && !c0440.m4813(C0164.m3500(1582, 11, 78))) {
                        if (c0440.m4813(C0164.m3500(1593, 12, 73)) && c0440.m4811()) {
                            return m3340();
                        }
                        if (c0440.m4813(C0164.m3500(1605, 24, 0))) {
                            if (c0440.m4811()) {
                                return m3345() + "";
                            }
                            m3325(c0440.m4809());
                        } else {
                            if (c0440.m4811() && (c0440.m4813(C0164.m3500(1629, 20, 125)) || c0440.m4813(C0164.m3500(1649, 19, 47)) || c0440.m4813(C0164.m3500(1668, 24, 104)) || c0440.m4813(C0164.m3500(1692, 20, SyslogConstants.LOG_CLOCK)) || c0440.m4813(C0164.m3500(1712, 24, 86)) || c0440.m4813(C0164.m3500(1736, 28, 6)))) {
                                Hashtable hashtableM4270 = (m4305() || (c0311 = this.f351) == null) ? null : c0311.m4270();
                                if (m4305() && (c0521 = this.f388) != null) {
                                    hashtableM4270 = c0521.m5303();
                                }
                                return (hashtableM4270 == null || !hashtableM4270.containsKey(c0440.m4810())) ? "" : (String) C0558.m5476(hashtableM4270, c0440.m4810());
                            }
                            return super.mo3151(c0440);
                        }
                    } else {
                        if (c0440.m4811()) {
                            return this.f371 + "";
                        }
                        this.f371 = c0440.m4809();
                    }
                } else {
                    if (c0440.m4811()) {
                        return this.f424;
                    }
                    this.f424 = c0440.m4808();
                }
            } else {
                if (c0440.f2269) {
                    C0311 c0313 = this.f351;
                    if (c0313 != null) {
                        return c0313.f1672;
                    }
                    return C0311.f1659;
                }
                String str = c0440.f2271;
                if (m3333()) {
                    C0311 c0314 = this.f351;
                    String str2 = c0314.f1672;
                    if (str == null) {
                        str = "";
                    }
                    c0314.f1672 = str;
                    if (c0314.f1672.equals("*")) {
                        c0314.f1672 = C0311.f1659;
                    }
                    if (!c0314.f1672.equals(str2)) {
                        c0314.mo4277();
                    }
                }
            }
        } else {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f432).toString();
            }
            this.f432 = c0440.m4809();
        }
        return "";
    }

    public final void m3349(byte[] bArr, boolean z) {
        C0301 c0301 = this.f389;
        if (c0301.f1615 == 0) {
            c0301.m4173(bArr);
        } else {
            c0301.m4180(bArr);
        }
        if (z || !this.f388.f3028) {
            switch (this.f401) {
                case 1:
                    String strM4172 = this.f389.m4172();
                    int iIndexOf = strM4172.indexOf(" ") + 1;
                    int iIndexOf2 = strM4172.indexOf(" ", iIndexOf);
                    String strSubstring = strM4172.substring(iIndexOf, iIndexOf2);
                    String strSubstring2 = strM4172.substring(iIndexOf2 + 1);
                    int i = Integer.parseInt(strSubstring.trim());
                    if (i != 401 && i != 407 && strSubstring.charAt(0) != '2') {
                        m3395(false, false);
                        mo3152(118, strM4172);
                        throw new C0414(118, C0164.m3500(3481, 82, 8) + i + " " + strSubstring2);
                    }
                    this.f389.m4169();
                    this.f401 = strSubstring.charAt(0) != '2' ? 2 : 5;
                    return;
                case 2:
                    String strM4173 = this.f389.m4172();
                    String strM5444 = C0558.m5444(strM4173);
                    String strM5446 = C0558.m5446(strM4173);
                    if (strM5444.equalsIgnoreCase(C0164.m3500(3563, 14, 50))) {
                        this.f392 = Integer.parseInt(strM5446.trim());
                        this.f355 = 0;
                    } else if (strM5444.equalsIgnoreCase(C0164.m3500(3577, 18, 45))) {
                        String strM3350 = m3350();
                        if (strM5446.length() > strM3350.length() + 1) {
                            C0301 c0302 = this.f416;
                            c0302.m4173(C0259.m3903(strM5446.substring(strM3350.length() + 1), c0302.f1613));
                        }
                    } else if (strM5444.equalsIgnoreCase(C0164.m3500(3595, 17, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)) && strM5446.length() > 0 && strM5446.equalsIgnoreCase(C0164.m3500(3612, 7, 85))) {
                        this.f423 = true;
                    }
                    if (z && bArr.length == 0) {
                        int i2 = this.f423 ? 6 : 3;
                        this.f401 = i2;
                        if (i2 == 3) {
                            this.f388.m5300(C0320.f1706);
                            this.f388.m5289(false);
                        }
                    }
                    this.f389.m4169();
                    if (this.f401 != 3 || this.f392 != 0) {
                        return;
                    }
                    break;
                case 3:
                    break;
                case 4:
                    String strM4174 = this.f389.m4172();
                    int iIndexOf3 = strM4174.indexOf(" ") + 1;
                    int iIndexOf4 = strM4174.indexOf(" ", iIndexOf3);
                    String strSubstring3 = strM4174.substring(iIndexOf3, iIndexOf4);
                    String strSubstring4 = strM4174.substring(iIndexOf4 + 1);
                    if (strSubstring3.charAt(0) == '2') {
                        this.f389.m4169();
                        this.f401 = 5;
                        return;
                    } else {
                        m3395(false, false);
                        mo3152(118, this.f416.m4172());
                        throw new C0414(118, C0164.m3500(3676, 91, WebSocketProtocol.PAYLOAD_SHORT) + strSubstring3 + " " + strSubstring4);
                    }
                case 5:
                    this.f389.m4169();
                    if (z && bArr.length == 0) {
                        this.f388.m5289(this.f430);
                        this.f388.m5300(this.f372);
                        m3328();
                        return;
                    }
                    return;
                case 6:
                    C0301 c0303 = this.f389;
                    if (c0303.f1615 > 0) {
                        this.f392 = Integer.parseInt(c0303.m4172().trim(), 16);
                        this.f355 = 0;
                        this.f401 = 3;
                        this.f388.m5300(C0320.f1706);
                        this.f388.m5289(false);
                    }
                    this.f389.m4169();
                    return;
                default:
                    return;
            }
            int i3 = this.f355;
            C0301 c0304 = this.f389;
            this.f355 = i3 + c0304.f1615;
            c0304.m4169();
            if (this.f355 >= this.f392) {
                this.f388.m5300(C0320.f1716);
                this.f388.m5289(true);
                if (this.f423 && this.f392 > 0) {
                    this.f401 = 6;
                    return;
                }
                String strM3351 = m3350();
                C0443 c0443 = this.f395;
                mo3302((C0164.m3500(3619, 8, 91) + this.f382 + ":" + this.f357 + " " + f342 + "\r\n" + C0164.m3500(3627, 21, 56) + m3350() + " " + m3383(strM3351, c0443.f2279, c0443.f2280, this.f382, this.f416.m4172()) + "\r\n" + C0164.m3500(3648, 28, 19) + "\r\n" + m3298() + "\r\n").getBytes());
                this.f423 = false;
                this.f392 = 0;
                this.f355 = 0;
                this.f401 = 4;
            }
        }
    }

    @Override
    public void mo3370() {
        super.mo3370();
        this.f396 = 0;
    }

    public void m3313(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5282(i);
        }
    }

    public void m3332(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5296(z);
        }
    }

    public void m3339(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5307(z);
        }
    }

    public void m3371(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5285(i);
        }
    }

    public void m3362(byte[] bArr, boolean z) {
        int i;
        if (this.f1722 != null) {
            return;
        }
        if (this.f385 == 2) {
            if (this.f429 == null) {
                C0301 c0301 = this.f389;
                int length = this.f361 ? this.f440 : bArr.length;
                if (c0301.f1615 == 0) {
                    c0301.m4174(bArr, 0, length);
                } else {
                    c0301.m4181(bArr, 0, length);
                }
                if (z || ((i = this.f348) > 0 && this.f389.f1615 >= i)) {
                    if (this.f352 == null) {
                        this.f429 = this.f389.toString();
                    } else {
                        byte[] bArrM4182 = this.f389.m4182();
                        this.f429 = C0259.m3894(bArrM4182, 0, bArrM4182.length, this.f352);
                    }
                    this.f389.m4169();
                    m3301(false);
                    this.f1721.notifyAll();
                }
            } else {
                try {
                    OutputStream outputStream = this.f435;
                    if (outputStream != null) {
                        outputStream.write(bArr, 0, this.f361 ? this.f440 : bArr.length);
                    }
                } catch (Exception e) {
                    m4312(e);
                }
            }
            if (this.f386 > 0) {
                int length2 = this.f361 ? this.f440 : bArr.length;
                if (bArr != null && length2 > 0) {
                    this.f367.m4181(bArr, 0, length2);
                }
                while (this.f367.f1615 >= this.f386 && this.f367.f1615 > 0) {
                    int i2 = this.f386;
                    if (i2 > 0) {
                        byte[] bArrM4176 = this.f367.m4176(0, i2);
                        this.f367 = this.f367.m4179(0, this.f386);
                        if (this.f361) {
                            this.f440 = bArrM4176.length;
                        }
                        mo3399(bArrM4176, false);
                    } else {
                        byte[] bArrM4183 = this.f367.m4182();
                        this.f367.m4169();
                        if (this.f361) {
                            this.f440 = bArrM4183.length;
                        }
                        mo3399(bArrM4183, z);
                    }
                }
                return;
            }
            mo3399(bArr, z);
            return;
        }
        try {
            C0443 c0443 = this.f395;
            if (c0443 != null && c0443.f2278 != 0 && this.f395.f2281) {
                if (this.f395.f2278 != 1) {
                    mo3311(bArr);
                }
                int i3 = this.f395.f2278;
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 3) {
                            m3293(bArr);
                            return;
                        }
                        if (i3 == 4 || i3 == 5) {
                            m3349(bArr, z);
                            return;
                        } else if (i3 == 8) {
                            m3312(bArr, z);
                            return;
                        } else if (i3 != 10) {
                            return;
                        }
                    }
                    m3348(bArr);
                    return;
                }
                m3294(bArr, z);
                return;
            }
            Socket socket = this.f388.f3005;
            while (socket == this.f388.f3005 && this.f385 != 3) {
                C0558.m5496(this.f1721, 100);
                if (this.f385 == 2) {
                    m3362(bArr, z);
                    return;
                }
            }
        } catch (C0414 e2) {
            m4312((Exception) e2);
            if (this.f347 == 1) {
                this.f385 = 0;
            }
            try {
                this.f388.m5311(false, false);
            } catch (C0414 unused) {
            }
        }
    }

    public final void m3293(byte[] bArr) throws C0414 {
        String str;
        String strM5887;
        byte b;
        int length;
        int i = this.f401;
        int i2 = 0;
        if (i == 1) {
            byte b2 = bArr[1];
            if (b2 != 2) {
                if (b2 == 0) {
                    this.f401 = 3;
                    m3382();
                    return;
                } else {
                    if (b2 == -1) {
                        this.f401 = 0;
                        throw new C0414(118, C0164.m3500(3884, 61, 69));
                    }
                    throw new C0414(118, C0164.m3500(3945, 61, 101));
                }
            }
            this.f401 = 2;
            byte[] bArrM3858 = C0259.m3858(this.f395.f2279);
            byte[] bytes = this.f395.f2280.getBytes();
            byte[] bArr2 = new byte[bArrM3858.length + 3 + bytes.length];
            bArr2[0] = 1;
            bArr2[1] = (byte) bArrM3858.length;
            System.arraycopy(bArrM3858, 0, bArr2, 2, bArrM3858.length);
            bArr2[bArrM3858.length + 2] = (byte) bytes.length;
            System.arraycopy(bytes, 0, bArr2, bArrM3858.length + 3, bytes.length);
            mo3302(bArr2);
            return;
        }
        if (i == 2) {
            if (bArr[1] == 0) {
                this.f401 = 3;
                m3382();
                return;
            }
            throw new C0414(118, C0164.m3500(4006, 21, 82) + this.f395.f2279 + C0164.m3500(4027, 14, 122));
        }
        if (i == 3) {
            if (bArr[1] == 0) {
                byte b3 = bArr[3];
                byte b4 = bArr[4];
                if (b3 == 1) {
                    strM5887 = C0663.m5887(new StringBuilder(), b4 & 255, ".");
                    b = 5;
                } else if (b3 == 3) {
                    b = (byte) (b4 + 2);
                    strM5887 = "";
                } else if (b3 == 4) {
                    strM5887 = C0259.m3868(b4) + ":";
                    b = 17;
                } else {
                    throw new C0414(118, C0164.m3500(3852, 16, 37) + C0259.m3855(this.f362) + ".");
                }
                if (this.f370) {
                    this.f425 = strM5887;
                }
                this.f401 = 4;
                this.f388.m5305(b);
                return;
            }
            try {
                str = ((int) bArr[1]) + ": " + f341[bArr[1]];
            } catch (ArrayIndexOutOfBoundsException unused) {
                str = ((int) bArr[1]) + C0164.m3500(4041, 12, 20);
            }
            throw new C0414(118, C0164.m3500(4053, 15, 86) + str + ".");
        }
        if (i != 4) {
            return;
        }
        String str2 = this.f425;
        if (str2 == null) {
            m3328();
            return;
        }
        try {
            if (str2.endsWith(".")) {
                this.f425 += (bArr[0] & 255) + "." + (bArr[1] & 255) + "." + (bArr[2] & 255);
                length = 3;
            } else if (this.f425.length() == 0) {
                length = bArr.length - 2;
                this.f425 = C0259.m3870(bArr, 0, length);
            } else {
                while (i2 < 15) {
                    this.f425 += C0259.m3868(bArr[i2]);
                    if (i2 < 14) {
                        this.f425 += ":";
                    }
                    i2++;
                }
                length = i2;
            }
            int i3 = (bArr[length + 1] & 255) | ((bArr[length] & 255) << 8);
            if (this.f391.length() == 0) {
                this.f391 = this.f425;
                this.f374 = i3;
                this.f401 = 3;
            } else {
                this.f382 = this.f425;
                this.f357 = i3;
                m3328();
            }
            this.f425 = null;
        } catch (Exception unused2) {
            throw new C0414(118, C0164.m3500(3868, 16, 3) + C0259.m3855(this.f362) + ".");
        }
    }

    public final void m3312(byte[] bArr, boolean z) {
        String strM5444;
        String strM5446;
        C0301 c0301 = this.f389;
        if (c0301.f1615 == 0) {
            c0301.m4173(bArr);
        } else {
            c0301.m4180(bArr);
        }
        if (z || !this.f388.f3028) {
            int i = this.f401;
            if (i == 1) {
                String strM4172 = this.f389.m4172();
                int iIndexOf = strM4172.indexOf(" ") + 1;
                int iIndexOf2 = strM4172.indexOf(" ", iIndexOf);
                String strSubstring = strM4172.substring(iIndexOf, iIndexOf2);
                String strSubstring2 = strM4172.substring(iIndexOf2 + 1);
                int i2 = Integer.parseInt(strSubstring.trim());
                if (i2 != 401 && i2 != 407 && strSubstring.charAt(0) != '2') {
                    m3395(false, false);
                    mo3152(118, strM4172);
                    throw new C0414(118, C0164.m3500(3113, 84, 85) + i2 + " " + strSubstring2);
                }
                this.f389.m4169();
                if (strSubstring.charAt(0) == '2') {
                    this.f401 = 6;
                    this.f388.m5289(this.f430);
                    this.f388.m5300(this.f372);
                    m3328();
                } else {
                    this.f401 = 2;
                }
            } else if (i == 2) {
                String strM4173 = this.f389.m4172();
                if (strM4173.length() == 0) {
                    if (this.f423) {
                        this.f401 = 7;
                    } else {
                        this.f401 = 3;
                        this.f388.m5289(false);
                        this.f388.m5300(C0320.f1706);
                        strM5444 = C0558.m5444(strM4173);
                        strM5446 = C0558.m5446(strM4173);
                        if (strM5444.equalsIgnoreCase(C0164.m3500(3197, 14, 33))) {
                            this.f392 = Integer.parseInt(strM5446.trim());
                            this.f355 = 0;
                            this.f423 = false;
                        } else if (strM5444.equalsIgnoreCase(C0164.m3500(3211, 18, 34))) {
                            if (strM5446.toLowerCase().trim().startsWith(C0164.m3500(3229, 6, 98))) {
                                this.f441.m3280(strM5446);
                            }
                        } else if (strM5444.equalsIgnoreCase(C0164.m3500(3235, 17, 57))) {
                            this.f423 = true;
                        }
                    }
                } else {
                    strM5444 = C0558.m5444(strM4173);
                    strM5446 = C0558.m5446(strM4173);
                    if (strM5444.equalsIgnoreCase(C0164.m3500(3197, 14, 33))) {
                        this.f392 = Integer.parseInt(strM5446.trim());
                        this.f355 = 0;
                        this.f423 = false;
                    } else if (strM5444.equalsIgnoreCase(C0164.m3500(3211, 18, 34))) {
                        if (strM5446.toLowerCase().trim().startsWith(C0164.m3500(3229, 6, 98))) {
                            this.f441.m3280(strM5446);
                        }
                    } else if (strM5444.equalsIgnoreCase(C0164.m3500(3235, 17, 57)) && strM5446.length() > 0 && strM5446.equalsIgnoreCase(C0164.m3500(3252, 7, 7))) {
                        this.f423 = true;
                    }
                }
            } else if (i == 3) {
                int length = this.f355 + bArr.length;
                this.f355 = length;
                boolean z2 = this.f423;
                if (z2 || length >= this.f392) {
                    if (z2) {
                        if (length < this.f392) {
                            this.f355 = length + 2;
                        } else {
                            this.f401 = 7;
                        }
                    } else {
                        this.f401 = 4;
                        C0138 c0138 = this.f441;
                        C0443 c0443 = this.f395;
                        c0138.m3281(c0443.f2279, c0443.f2280);
                        this.f441.m3282(C0164.m3500(3291, 7, 83), this.f395.f2284, C0320.f1706);
                        mo3302((C0164.m3500(3298, 8, 84) + this.f382 + ":" + this.f357 + " " + f342 + "\r\n" + C0164.m3500(3306, 17, 72) + "\r\n" + C0164.m3500(3323, 28, 15) + "\r\n" + C0164.m3500(3351, 16, 23) + "\r\n" + C0164.m3500(3367, 21, 123) + this.f441.m3279() + "\r\n" + m3298() + "\r\n").getBytes());
                        this.f401 = 5;
                    }
                }
            } else if (i == 4) {
                C0138 c0139 = this.f441;
                C0443 c0444 = this.f395;
                c0139.m3281(c0444.f2279, c0444.f2280);
                this.f441.m3282(C0164.m3500(3291, 7, 83), this.f395.f2284, C0320.f1706);
                mo3302((C0164.m3500(3298, 8, 84) + this.f382 + ":" + this.f357 + " " + f342 + "\r\n" + C0164.m3500(3306, 17, 72) + "\r\n" + C0164.m3500(3323, 28, 15) + "\r\n" + C0164.m3500(3351, 16, 23) + "\r\n" + C0164.m3500(3367, 21, 123) + this.f441.m3279() + "\r\n" + m3298() + "\r\n").getBytes());
                this.f401 = 5;
            } else if (i == 5) {
                String strM4174 = this.f389.m4172();
                int iIndexOf3 = strM4174.indexOf(" ") + 1;
                int iIndexOf4 = strM4174.indexOf(" ", iIndexOf3);
                String strSubstring3 = strM4174.substring(iIndexOf3, iIndexOf4);
                String strSubstring4 = strM4174.substring(iIndexOf4 + 1);
                if (strSubstring3.charAt(0) == '2') {
                    this.f389.m4169();
                    this.f401 = 6;
                    this.f388.m5289(this.f430);
                    this.f388.m5300(this.f372);
                    m3328();
                } else {
                    m3395(false, false);
                    mo3152(118, this.f416.m4172());
                    throw new C0414(118, C0164.m3500(3388, 93, 55) + strSubstring3 + " " + strSubstring4);
                }
            } else if (i == 7) {
                try {
                    int i3 = Integer.parseInt(this.f389.m4172().trim(), 16);
                    this.f392 = i3;
                    this.f355 = 0;
                    if (i3 == 0) {
                        this.f388.m5289(false);
                        this.f388.m5300(C0320.f1706);
                        this.f401 = 4;
                    } else {
                        this.f401 = 3;
                    }
                } catch (Exception e) {
                    throw new C0414(118, C0164.m3500(3259, 32, 67) + C0414.m4672(e));
                }
            }
            this.f389.m4169();
        }
    }

    public void m3379(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f388.m5280(i);
        }
    }

    public final byte[] m3381(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        byte[] bArr = new byte[5];
        bArr[0] = 1;
        int i = 1;
        while (stringTokenizer.hasMoreTokens()) {
            if (i > 4) {
                i = 6;
                break;
            }
            int i2 = i + 1;
            try {
                bArr[i] = (byte) Integer.parseInt(stringTokenizer.nextToken().trim());
                i = i2;
            } catch (NumberFormatException unused) {
                i = 6;
            }
        }
        if (i != 1 && i != 6) {
            return bArr;
        }
        byte length = (byte) str.length();
        byte[] bArr2 = new byte[length + 2];
        bArr2[0] = 3;
        bArr2[1] = length;
        System.arraycopy(C0259.m3858(str), 0, bArr2, 2, length);
        return bArr2;
    }

    public void m3291(C0414 c0414) {
        if (this.f3356 != null && Thread.currentThread() != this.f3356) {
            C0402 c0402 = this.f406;
            c0402.f2092 = 8;
            c0402.f2097 = c0414;
            c0402.f2091 = null;
            c0402.f2095 = null;
            m3322();
            return;
        }
        if (c0414 == null) {
            m3389(C0164.m3500(4418, 23, 59), this.f1722);
            C0298 c0298 = this.f388.f3001;
            if (c0298 != null) {
                C0670 c0670 = c0298.f1580;
                if (c0670 != null) {
                    c0670.equals(this.f366);
                }
                this.f366 = c0670;
            }
            this.f388.m5286(false);
        } else {
            m4312((Exception) c0414);
            m3389(C0164.m3500(4441, 22, 16), this.f1722);
            try {
                m3395(false, false);
            } catch (C0414 unused) {
            }
        }
        if (this.f385 == 2 || c0414 != null) {
            m3359(c0414);
        }
        this.f396 = 3;
    }

    public void m3359(C0414 c0414) {
        InterfaceC0352 interfaceC0352;
        if (this.f3356 != null && Thread.currentThread() != this.f3356) {
            C0402 c0402 = this.f406;
            c0402.f2092 = 4;
            c0402.f2097 = c0414;
            m3322();
            return;
        }
        int i = c0414 == null ? 2 : 0;
        this.f385 = i;
        C0443 c0443 = this.f395;
        if (c0443 != null) {
            c0443.f2283 = i == 2;
        }
        if (c0414 != null) {
            mo3358(c0414.f2136, c0414.getMessage());
            return;
        }
        mo3358(0, "OK");
        if (!m3323() || (interfaceC0352 = this.f412) == null) {
            return;
        }
        ((C0529) interfaceC0352).m5351();
    }

    public void mo3358(int i, String str) {
        InterfaceC0352 interfaceC0352 = this.f412;
        if (interfaceC0352 != null) {
            ((C0529) interfaceC0352).m5352(i, str);
        }
    }

    public final void m3348(byte[] bArr) throws C0414 {
        String str;
        if (bArr[1] == 90) {
            m3328();
        } else {
            try {
                str = ((int) bArr[1]) + ": " + f343[bArr[1] - 90];
            } catch (ArrayIndexOutOfBoundsException unused) {
                str = ((int) bArr[1]) + C0164.m3500(3823, 13, 101);
            }
            throw new C0414(118, C0164.m3500(3836, 16, 15) + str + ".");
        }
    }

    public void m3347(C0414 c0414) {
        if (c0414 != null) {
            m3389(C0164.m3500(4068, 25, 36), c0414);
            m4312((Exception) c0414);
            m3359(c0414);
            return;
        }
        m5628();
        m5627();
        if (this.f3351.length() > 0) {
            try {
                this.f3343 = new FileOutputStream(this.f3351, true);
            } catch (IOException unused) {
                throw new C0414(303, C0164.m3487(TypedValues.CycleType.TYPE_CURVE_FIT, 45, 35));
            }
        }
        C0301 c0301 = this.f3352;
        if (c0301 != null) {
            c0301.m4169();
        }
        try {
            C0443 c0443 = this.f395;
            if (c0443 != null && c0443.f2278 != 0 && this.f395.f2281) {
                this.f430 = this.f388.f3028;
                this.f372 = this.f388.f3021;
                this.f388.m5289(false);
                int i = this.f395.f2278;
                if (i == 1) {
                    this.f388.m5300(C0320.f1714);
                    this.f416.m4169();
                    this.f362 = null;
                    m3297();
                    return;
                }
                if (i == 2) {
                    this.f388.m5300(C0320.f1706);
                    this.f388.m5305(8);
                    m3342();
                    return;
                }
                if (i == 3) {
                    this.f401 = 1;
                    this.f388.m5300(C0320.f1706);
                    this.f388.m5305(2);
                    mo3302(new byte[]{5, 2, 0, 2});
                    return;
                }
                if (i == 4 || i == 5) {
                    this.f388.m5289(true);
                    this.f416.m4169();
                    this.f362 = null;
                    m3366();
                    return;
                }
                if (i != 8) {
                    if (i != 10) {
                        return;
                    }
                    this.f388.m5300(C0320.f1706);
                    this.f388.m5305(8);
                    m3316();
                    return;
                }
                this.f388.m5289(true);
                this.f416.m4169();
                this.f362 = null;
                this.f441.m3278();
                m3289();
                return;
            }
            m3328();
        } catch (C0414 e) {
            m4312((Exception) e);
            if (this.f347 == 1) {
                this.f385 = 0;
            }
            try {
                this.f388.m5311(false, false);
            } catch (C0414 unused2) {
            }
        }
    }

    public void m3310(C0414 c0414) {
        if (this.f3356 != null && Thread.currentThread() != this.f3356) {
            C0402 c0402 = this.f406;
            c0402.f2092 = 5;
            c0402.f2097 = c0414;
            m3322();
            return;
        }
        this.f396 = 0;
        this.f385 = 0;
        C0443 c0443 = this.f395;
        if (c0443 != null) {
            c0443.f2283 = false;
        }
        m3389(C0164.m3500(4553, 25, 0), c0414);
        if (c0414 != null) {
            mo3309(c0414.f2136, c0414.getMessage());
        } else {
            mo3309(0, "OK");
        }
    }

    public void mo3309(int i, String str) {
        InterfaceC0352 interfaceC0352 = this.f412;
        if (interfaceC0352 != null) {
            ((C0529) interfaceC0352).m5350(i, str);
        }
    }

    public void m3393(boolean z, Socket socket) throws IOException {
        C0311 c0311 = this.f351;
        SSLSocket sSLSocket = c0311 != null ? c0311.f1676 : null;
        C0311 c0312 = this.f351;
        Socket socket2 = c0312 != null ? c0312.f1662 : null;
        if (socket2 != null) {
            socket = socket2;
        }
        m3394(z, sSLSocket, socket);
    }

    public void m3394(boolean z, Socket socket, Socket socket2) throws IOException {
        if (socket != null && m3375()) {
            socket.close();
        }
        if (socket2 == null || z) {
            return;
        }
        socket2.close();
        C0311 c0311 = this.f351;
        if (c0311 == null || socket2 != c0311.f1662) {
            return;
        }
        c0311.f1662 = null;
    }

    public void m3398(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        synchronized (this.f1721) {
            int i = this.f385;
            if (i == 1 || i == 2) {
                fireSSLServerAuthentication(bArr, str, str2, str3, zArr);
            }
        }
    }

    public void m3395(boolean z, boolean z2) throws C0414 {
        boolean z3;
        C0443 c0443;
        Proxy proxy;
        int i = this.f3354;
        long j = this.f3358;
        boolean z4 = true;
        if (z && z2) {
            int i2 = this.f413;
            if (i2 > 0) {
                this.f3354 = i2;
                z3 = true;
            } else {
                z3 = false;
            }
            if (this.f3354 > 0) {
                mo3370();
            }
        } else {
            if (!z && z2 && this.f3354 > 0) {
                m5631();
            }
            z3 = false;
        }
        try {
            if (z) {
                mo3351();
                if (!m3355() && (c0443 = this.f395) != null && c0443.f2282) {
                    Proxy proxy2 = Proxy.NO_PROXY;
                    Proxy proxy3 = Proxy.NO_PROXY;
                    try {
                        proxy = ProxySelector.getDefault().select(new URI(C0164.m3500(2740, 5, 1), null, this.f382, this.f357, null, null, null)).get(0);
                        try {
                            proxy3 = ProxySelector.getDefault().select(new URI(C0164.m3500(2745, 6, 9), null, this.f382, this.f357, null, null, null)).get(0);
                        } catch (Exception unused) {
                            proxy2 = proxy;
                            proxy = proxy2;
                        }
                    } catch (Exception unused2) {
                    }
                    if (proxy.type() == Proxy.Type.HTTP) {
                        this.f395.m4818(((InetSocketAddress) proxy.address()).getHostName());
                        this.f395.m4817(((InetSocketAddress) proxy.address()).getPort());
                        this.f395.m4819(1);
                    } else if (proxy3.type() == Proxy.Type.SOCKS) {
                        this.f395.m4818(((InetSocketAddress) proxy3.address()).getHostName());
                        this.f395.m4817(((InetSocketAddress) proxy3.address()).getPort());
                        this.f395.m4819(3);
                    } else if (!C0307.m4185(this.f382, this.f357, null)) {
                        m3344();
                    } else {
                        this.f395.m4819(0);
                    }
                }
                boolean zM4186 = C0307.m4186(this.f399, this.f382, this.f357, null);
                C0443 c0444 = this.f395;
                if (c0444 != null) {
                    c0444.f2281 = !zM4186;
                }
                if (m3323()) {
                    this.f388.m5306(this.f395.f2277);
                    this.f388.m5288(this.f395.f2286);
                } else {
                    this.f388.m5306(this.f382);
                    this.f388.m5288(this.f357);
                }
                this.f439 = "";
                this.f385 = 1;
                this.f401 = 0;
                this.f389.m4169();
                m4312((Exception) null);
                this.f388.m5283(true);
            } else {
                if (this.f385 == 0) {
                    this.f388.m5311(false, false);
                    if (z3) {
                        this.f3354 = i;
                        if (this.f3345) {
                            this.f3358 = j;
                            return;
                        }
                        return;
                    }
                    return;
                }
                this.f385 = 3;
            }
            this.f347 = z2 ? 1 : 2;
            int i3 = this.f385;
            try {
                this.f388.m5311(z, z2);
                if (this.f347 == 1) {
                    while (i3 == this.f385) {
                        try {
                            mo5626();
                        } catch (C0414 e) {
                            if (this.f385 != 2) {
                                z4 = false;
                            }
                            this.f385 = 0;
                            this.f388.m5311(false, false);
                            if (z4) {
                                m3310(e);
                            }
                            throw e;
                        }
                    }
                }
                if (z3) {
                    this.f3354 = i;
                    if (this.f3345) {
                        this.f3358 = j;
                    }
                }
            } catch (C0414 e2) {
                this.f385 = 0;
                throw e2;
            }
        } catch (Throwable th) {
            if (z3) {
                this.f3354 = i;
                if (this.f3345) {
                    this.f3358 = j;
                }
            }
            throw th;
        }
    }

    public void m3396(byte[] bArr, int i, int i2) throws C0414 {
        if (bArr == null || i2 == 0) {
            return;
        }
        synchronized (this.f1721) {
            if (this.f385 == 2) {
                boolean z = this.f3354 > 0 && this.f3358 == 0;
                if (z) {
                    mo3370();
                }
                try {
                    this.f388.m5313(bArr, i, i2);
                    if (z) {
                        this.f3358 = 0L;
                        if (this.f3348) {
                            m3321();
                        }
                    }
                } catch (Throwable th) {
                    if (z) {
                        this.f3358 = 0L;
                        if (this.f3348) {
                            m3321();
                        }
                    }
                    throw th;
                }
            } else {
                throw new C0414(1117, C0164.m3500(2809, 38, 38));
            }
        }
    }

    public void m3397(byte[] bArr, int i, int i2, int i3, int i4) throws C0414 {
        synchronized (this.f1721) {
            while (i2 > 0) {
                if (this.f385 == 2) {
                    int i5 = i2 > i4 ? i4 : i2;
                    C0521 c0521 = this.f388;
                    C0298 c0298 = c0521.f3001;
                    if (c0298 != null) {
                        c0298.m4148(bArr, i, i5, i3);
                    } else {
                        c0521.m5314(bArr, i, i5, i3);
                    }
                    i += i5;
                    i2 -= i5;
                } else {
                    throw new C0414(1117, C0164.m3500(2847, 38, 45));
                }
            }
        }
    }

    public void m3386(long j) throws C0414 {
        synchronized (this.f1721) {
            this.f388.f3029 = j;
        }
    }

    public String m3383(String str, String str2, String str3, String str4, String str5) {
        C0335 c0335;
        if (this.f384 == null) {
            C0266 c0266 = new C0266(false, this.f345, this.f402);
            this.f384 = c0266;
            c0266.f1295 = this.f415;
            if (m4305()) {
                c0335 = this.f427;
            } else {
                C0311 c0311 = this.f351;
                c0335 = c0311 != null ? c0311.f1673 : null;
            }
            c0266.f1305 = c0335;
        }
        C0266 c0267 = this.f384;
        c0267.f1299 = this.f400;
        c0267.f1302 = this.f359;
        c0267.f1291 = this.f349;
        c0267.f1298 = this.f358;
        try {
            c0267.f1307 = this.f378;
            byte[] bArrM3968 = this.f384.m3968(str, str2, this.f373, str3, str4, C0259.m3877(C0259.m3902(str5)));
            return bArrM3968 == null ? "" : C0259.m3892(C0259.m3904(bArrM3968, 0, bArrM3968.length, true)).replaceAll("\r\n", "");
        } catch (Exception e) {
            throw new C0414(0, C0414.m4672(e));
        }
    }

    public static void m3286(boolean z, String str) {
        if (C0259.m3872(str.trim(), "*")) {
            return;
        }
        String[] strArrM3907 = C0259.m3907(str, ";", true);
        for (int i = 0; i < strArrM3907.length; i++) {
            if (z && C0510.m5206(strArrM3907[i], C0320.f1718) <= 0) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0164.m3500(4319, 38, 74)), strArrM3907[i], "."));
            }
        }
    }

    public void m3390(C0414 c0414, Object obj, Object obj2) {
        if (this.f3356 != null && Thread.currentThread() != this.f3356) {
            C0402 c0402 = this.f406;
            c0402.f2092 = 6;
            c0402.f2097 = c0414;
            c0402.f2091 = obj;
            c0402.f2095 = obj2;
            m3322();
            m3391(c0414, obj, obj2, false);
            return;
        }
        if (this.f388.f3005 != obj) {
            return;
        }
        if (c0414 != null) {
            m4312((Exception) c0414);
            m3389(C0164.m3500(4463, 22, 76), this.f1722);
        } else {
            m3389(C0164.m3500(4485, 23, 117), this.f1722);
        }
        m3391(c0414, obj, obj2, false);
    }

    public void m3391(C0414 c0414, Object obj, Object obj2, boolean z) {
        if (this.f388.f3005 == obj && !z) {
            if (this.f1722 != null) {
                try {
                    m3395(false, false);
                } catch (C0414 unused) {
                }
            }
            Socket socket = (Socket) obj2;
            if (socket != null) {
                this.f388.m5308(socket);
            }
            if (this.f1722 != null) {
                m3395(false, false);
            } else if (socket != null) {
                this.f388.m5309(socket, false);
                try {
                    this.f388.m5286(false);
                    socket.setSoTimeout(2000);
                } catch (C0414 | Exception unused2) {
                }
            }
            if (this.f385 == 2 || c0414 != null) {
                m3359(c0414);
            }
            this.f396 = 3;
        }
    }

    public void m3389(String str, C0414 c0414) {
        if (!this.f432 || this.f3356 == null || Thread.currentThread() == this.f3356) {
            if (c0414 == null) {
                mo3388(str, 0, "OK", "");
                return;
            } else {
                mo3388(str, c0414.f2136, c0414.getMessage(), "");
                return;
            }
        }
        C0402 c0402 = this.f406;
        c0402.f2092 = 7;
        c0402.f2090 = str;
        c0402.f2097 = c0414;
        m3322();
    }

    public void mo3388(String str, int i, String str2, String str3) {
        InterfaceC0352 interfaceC0352 = this.f412;
        if (interfaceC0352 != null) {
            ((C0529) interfaceC0352).m5353(str, i, str2);
        }
    }

    public void mo3399(byte[] bArr, boolean z) {
        C0301 c0301;
        InterfaceC0352 interfaceC0352 = this.f412;
        if (interfaceC0352 != null) {
            C0529 c0529 = (C0529) interfaceC0352;
            C0147 c0147 = c0529.f3079;
            String str = c0147.f382;
            int i = c0147.f357;
            String str2 = str + ":" + i;
            if (!c0529.f3080.containsKey(str2)) {
                c0301 = new C0301();
                c0529.f3080.put(str2, c0301);
            } else {
                c0301 = (C0301) c0529.f3080.get(str2);
            }
            c0301.m4180(bArr);
            int iM3846 = C0259.m3846(c0301.m4182(), 0, 4);
            if (c0301.f1615 >= iM3846) {
                c0529.f3082.mo3788(c0301.m4171(4), str, i);
                c0301.m4179(0, iM3846 + 4);
            }
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0665 interfaceC0665;
        InterfaceC0352 interfaceC0352 = this.f412;
        if (interfaceC0352 == null || (interfaceC0665 = ((C0529) interfaceC0352).f3081) == null) {
            return;
        }
        interfaceC0665.m5895(i, str);
    }
}
