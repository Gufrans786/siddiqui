package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0610 extends C0320 {

    public static String f3335 = null;

    public static String f3336 = null;

    public static int f3337 = 0;

    public static double f3338 = 0.0d;

    public static boolean f3339 = true;

    public static InterfaceC0535 f3340;

    public int f3341;

    public long f3342;

    public FileOutputStream f3343;

    public int f3344;

    public boolean f3345;

    public boolean f3346;

    public boolean f3347;

    public boolean f3348;

    public String f3349;

    public int f3350;

    public String f3351;

    public C0301 f3352;

    public String f3353;

    public int f3354;

    public boolean f3355;

    public Thread f3356;

    public boolean f3357;

    public long f3358;

    public Vector f3359;

    static {
        String[] strArr = new String[3];
        C0164.m3487(0, 6, 79);
        C0164.m3487(6, 6, 40);
        C0164.m3487(12, 4, 107);
        f3340 = null;
        f3337 = 1;
        f3335 = "";
        f3338 = 0.0d;
        f3336 = null;
        try {
            f3339 = Class.forName(C0164.m3487(16, 19, 27)) != null;
        } catch (Error unused) {
            f3339 = false;
        } catch (Exception unused2) {
            f3339 = false;
        }
        try {
            String property = System.getProperty(C0164.m3487(35, 7, 19));
            f3336 = property;
            if (property != null) {
                f3336 = property.toLowerCase();
            }
        } catch (Exception unused3) {
            f3336 = null;
        }
        String property2 = System.getProperty(C0164.m3487(42, 12, 97), C0164.m3487(54, 3, 34));
        if (System.getProperty(C0164.m3487(57, 12, 24)).equals(C0164.m3487(69, 6, 52))) {
            try {
                String str = (String) Class.forName(C0164.m3487(75, 24, 65)).getField(C0164.m3487(99, 7, 56)).get(null);
                f3335 = str;
                String strTrim = str.trim();
                int iIndexOf = strTrim.indexOf(".");
                for (int i = 0; i < strTrim.length(); i++) {
                    if (i != iIndexOf && !Character.isDigit(strTrim.charAt(i))) {
                        strTrim = strTrim.substring(0, i);
                        break;
                    }
                }
                f3338 = Double.parseDouble(strTrim);
            } catch (Error | Exception unused4) {
            }
        }
        if (property2.equals("0") && System.getProperty(C0164.m3487(106, 12, 7)).equals(C0164.m3487(118, 6, 62))) {
            f3337 = 5;
        } else if (property2.compareTo(C0164.m3487(124, 3, 19)) < 0) {
            f3337 = 1;
        } else if (property2.compareTo(C0164.m3487(127, 3, 58)) < 0) {
            f3337 = 2;
        } else if (property2.compareTo(C0164.m3487(130, 3, 25)) < 0) {
            f3337 = 3;
        } else if (property2.compareTo(C0164.m3487(133, 3, 75)) < 0) {
            f3337 = 4;
        } else if (property2.compareTo(C0164.m3487(SyslogConstants.LOG_LOCAL1, 3, 89)) < 0) {
            f3337 = 5;
        } else if (property2.compareTo(C0164.m3487(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 3, 117)) < 0) {
            f3337 = 6;
        } else if (property2.compareTo(C0164.m3487(CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 3, 46)) < 0) {
            f3337 = 7;
        } else {
            f3337 = 7;
        }
        int i2 = f3337;
        if (m5624(i2)) {
            if (i2 < 2) {
                f3340 = new C0161();
            } else if (i2 < 4) {
                f3340 = new C0196();
            } else {
                f3340 = new C0661();
            }
        }
    }

    public C0610(Object obj) {
        super(obj);
        this.f3346 = true;
        this.f3354 = 0;
        this.f3358 = 0L;
        this.f3345 = false;
        this.f3344 = 1000;
        this.f3350 = 0;
        this.f3342 = 0L;
        this.f3356 = null;
        this.f3359 = new Vector();
        this.f3348 = false;
        this.f3347 = true;
        this.f3355 = false;
        this.f3357 = true;
        this.f3351 = "";
        this.f3343 = null;
        this.f3352 = null;
        this.f3349 = "";
        this.f3353 = "";
        this.f3341 = 1;
        try {
            m5629(f3339);
            if (f3337 >= 7) {
                this.f3357 = false;
            }
        } catch (C0414 unused) {
        }
    }

    public static boolean m5624(int i) {
        boolean z = i <= f3337;
        if (!z) {
            System.err.println(C0164.m3487(CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 20, 22) + i + C0164.m3487(165, 17, 102) + System.getProperty(C0164.m3487(182, 12, 117), C0164.m3487(194, 7, 114)) + ".");
        }
        return z;
    }

    public static boolean m5625(String str) {
        if (str != null) {
            str = str.toLowerCase();
        }
        String str2 = f3336;
        return str2 != null && str2.contains(str);
    }

    public void mo3290(int i) {
        synchronized (this.f1721) {
            if (i > 2147483) {
                i = 2147483;
            }
            this.f3354 = i;
            this.f1721.notifyAll();
        }
    }

    public void mo3308(int i) throws C0414 {
        synchronized (this.f1721) {
            try {
                if (i < 0) {
                    throw new C0414(201, C0164.m3487(393, 8, 53));
                }
                m4306();
                if (i > 0) {
                    Object obj = this.f1721;
                    if (i > 20) {
                        i = 20;
                    }
                    C0558.m5496(obj, i);
                }
                m4306();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int mo5257() {
        return this.f3341;
    }

    public void mo5260() {
        synchronized (this.f1721) {
            m4312((Exception) new C0414(301, C0164.m3487(381, 12, 64)));
            this.f1721.notifyAll();
        }
    }

    public void m5627() {
        FileOutputStream fileOutputStream = this.f3343;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException unused) {
            } finally {
                this.f3343 = null;
            }
        }
    }

    public void m5628() {
        this.f3342 = this.f3350 == 0 ? 0L : System.currentTimeMillis();
    }

    public void mo5266(int i) {
        this.f3341 = i;
    }

    public void m5630(byte[] bArr) {
        FileOutputStream fileOutputStream = this.f3343;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.write(bArr);
            } catch (IOException unused) {
                throw new C0414(304, C0164.m3487(446, 36, 40));
            }
        }
        C0301 c0301 = this.f3352;
        if (c0301 != null) {
            c0301.m4180(bArr);
        }
    }

    public void m5631() {
        m5628();
        this.f3358 = this.f3354 == 0 ? 0L : System.currentTimeMillis();
    }

    public void mo3370() {
        Thread threadCurrentThread;
        Thread thread;
        synchronized (this.f1721) {
            if (this.f3348 && this.f3347 && (thread = this.f3356) != (threadCurrentThread = Thread.currentThread())) {
                this.f3359.addElement(thread);
                this.f3356 = threadCurrentThread;
            }
            m5631();
            this.f1722 = null;
        }
    }

    public void m5632() {
        m5628();
        if (this.f3345 || this.f3358 == 0) {
            return;
        }
        m5631();
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0164.m3487(201, 15, WebSocketProtocol.PAYLOAD_SHORT))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3345).toString();
            }
            this.f3345 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3487(JfifUtil.MARKER_SOI, 15, 12))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3347).toString();
            }
            this.f3347 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3487(231, 17, 115))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3348).toString();
            }
            this.f3348 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3487(248, 21, 119))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3344 == 1).toString();
            }
            this.f3344 = c0440.m4809() ? 1 : 1000;
        } else if (c0440.m4813(C0164.m3487(269, 12, 42))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3355).toString();
            }
            m5629(c0440.m4809());
        } else if (c0440.m4813(C0164.m3487(281, 12, 45))) {
            if (c0440.f2269) {
                return this.f3351;
            }
            this.f3351 = c0440.f2271;
        } else if (c0440.m4813(C0164.m3487(293, 14, 7))) {
            if (c0440.f2269) {
                C0301 c0301 = this.f3352;
                return c0301 == null ? "" : C0259.m3882(c0301.m4182());
            }
            if (c0440.f2271.equalsIgnoreCase("on")) {
                this.f3352 = new C0301();
            } else {
                this.f3352 = null;
            }
        } else if (c0440.m4813(C0164.m3487(307, 22, 112))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3357).toString();
            }
            this.f3357 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3487(329, 13, 101))) {
            if (c0440.f2269) {
                return this.f3349;
            }
            this.f3349 = c0440.f2271;
        } else if (c0440.m4813(C0164.m3487(342, 15, 13))) {
            if (c0440.f2269) {
                return this.f3353;
            }
            this.f3353 = c0440.f2271;
        } else if (c0440.m4813(C0164.m3487(357, 16, 69))) {
            if (c0440.f2269) {
                return this.f3346 + "";
            }
            this.f3346 = c0440.m4809();
        } else {
            if (!c0440.m4813(C0164.m3487(373, 8, 31))) {
                return super.mo3151(c0440);
            }
            if (c0440.f2269) {
                return mo5257() + "";
            }
            mo5266(c0440.m4805());
        }
        return "";
    }

    public void m5629(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f3355 = z;
        }
    }

    public void mo5626() throws C0414 {
        long j = this.f3358;
        mo3308(j == 0 ? 100 : (int) ((j + ((long) (this.f3354 * this.f3344))) - System.currentTimeMillis()));
    }

    @Override
    public void mo3392(boolean z) {
        if (!z || this.f1720) {
            return;
        }
        mo5260();
    }

    public void m5633(int i, byte[] bArr, int i2, int i3) {
        if (!(this.f3343 == null && this.f3352 == null) && i3 > 0) {
            if (i == 0) {
                m5630(C0259.m3858(C0164.m3487(482, 17, 53)));
                m5634(C0259.m3865(bArr, i2, i3));
                m5634(C0259.m3902(""));
                m5630(C0164.m3487(TSLocationManager.LOCATION_ERROR_CANCELLED, 3, 67).getBytes());
                return;
            }
            if (i != 1) {
                return;
            }
            m5630(C0259.m3858(C0164.m3487(TypedValues.PositionType.TYPE_DRAWPATH, 19, 93)));
            m5634(C0259.m3865(bArr, i2, i3));
            m5634(C0259.m3902(""));
            m5630(C0164.m3487(521, 3, 55).getBytes());
        }
    }

    public void m5634(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            char c = (char) b;
            if (c != '\n' && c != '\r' && (c < ' ' || c > 'z')) {
                m5630(C0259.m3858(C0663.m5891("\\").append((b >> 6) & 7).append((b >> 3) & 7).append(b & 7).toString()));
            } else {
                if (c == '\\' || c == '$' || c == '\"' || c == '{' || c == '}' || c == '[' || c == ']') {
                    m5630(C0259.m3858("\\"));
                }
                m5630(new byte[]{bArr[i]});
            }
        }
    }
}
