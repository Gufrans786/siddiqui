package nts;

import androidx.appcompat.app.AppCompatDelegate;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.ConnectException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.util.Hashtable;

public class C0521 extends C0320 implements InterfaceC0121 {

    public int f2996;

    public String f2997;

    public long f2998;

    public int f2999;

    public C0524 f3000;

    public C0298 f3001;

    public int f3002;

    public int f3003;

    public int f3004;

    public Socket f3005;

    public int f3006;

    public int f3007;

    public Hashtable f3008;

    public C0301 f3009;

    public boolean f3010;

    public long f3011;

    public C0523 f3012;

    public int f3013;

    public boolean f3014;

    public boolean f3015;

    public int f3016;

    public C0147 f3017;

    public boolean f3018;

    public C0522 f3019;

    public boolean f3020;

    public byte[] f3021;

    public int f3022;

    public long f3023;

    public boolean f3024;

    public int f3025;

    public int f3026;

    public int f3027;

    public boolean f3028;

    public long f3029;

    public boolean f3030;

    public int f3031;

    public String f3032;

    public boolean f3033;

    public boolean f3034;

    public class C0522 extends Thread {

        public byte[][] f3035;

        public byte[] f3036;

        public volatile OutputStream f3037;

        public boolean f3038;

        public boolean f3039;

        public int f3040;

        public int f3042;

        public volatile Socket f3043;

        public byte f3045;

        public int f3046 = 4;

        public boolean f3041 = true;

        public C0522(boolean z) {
            setDaemon(z);
        }

        public static void m5316(C0522 c0522) {
            if (c0522.f3046 == 5) {
                return;
            }
            c0522.f3046 = 3;
            if (!C0521.this.f3024 && c0522.f3043 != null) {
                c0522.m5324();
            }
            C0521.this.f1721.notifyAll();
        }

        public static boolean m5317(C0522 c0522) {
            return c0522.f3046 == 4;
        }

        public static void m5318(C0522 c0522) {
            c0522.f3043 = C0521.this.f3005;
            try {
                if (c0522.f3043 != null) {
                    c0522.f3037 = c0522.f3043.getOutputStream();
                } else {
                    c0522.f3037 = null;
                }
            } catch (Exception unused) {
                c0522.f3037 = null;
            }
        }

        @Override
        public void run() {
            Thread.currentThread().setName(C0521.this.f3017.getClass() + C0164.m3507(796, 7, 115));
            while (this.f3046 != 5) {
                m5320();
                m5321();
                synchronized (C0521.this.f1721) {
                    if (this.f3043 != null) {
                        if (C0521.this.f3017.f421 != null && C0521.this.f3017.f411) {
                            while (C0521.this.f3000 != null && C0521.this.f3000.isAlive()) {
                                try {
                                    C0521.this.f1721.wait(20L);
                                } catch (Exception unused) {
                                }
                            }
                        }
                        m5324();
                    }
                }
            }
        }

        public final void m5320() {
            synchronized (C0521.this.f1721) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (true) {
                    long jCurrentTimeMillis2 = (((long) C0521.this.f3013) + jCurrentTimeMillis) - System.currentTimeMillis();
                    int i = 5;
                    if (this.f3046 == 1) {
                        if (this.f3037 != null) {
                            i = 2;
                        }
                        this.f3046 = i;
                        return;
                    } else if (jCurrentTimeMillis2 <= 0) {
                        this.f3046 = 5;
                        return;
                    } else {
                        this.f3046 = 4;
                        try {
                            C0521.this.f1721.wait(jCurrentTimeMillis2);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }

        public final void m5322() {
            synchronized (C0521.this.f1721) {
                if (this.f3041 && this.f3039) {
                    this.f3039 = false;
                    C0521.this.m5294();
                }
            }
        }

        public final long m5323() {
            synchronized (C0521.this.f1721) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - C0521.this.f3023 > 60000) {
                    C0521 c0521 = C0521.this;
                    c0521.f3011 = jCurrentTimeMillis;
                    c0521.f3023 = jCurrentTimeMillis;
                    C0521.this.f2998 = 0L;
                }
                if (C0521.this.f3029 <= 0) {
                    return -1L;
                }
                if (jCurrentTimeMillis - C0521.this.f3011 <= 0) {
                    return 0L;
                }
                if (C0521.this.f2998 < 0) {
                    C0521.this.f2998 = 0L;
                }
                return (long) (C0521.this.f2998 / ((jCurrentTimeMillis - C0521.this.f3011) / 1000.0d));
            }
        }

        public final void m5324() {
            C0414 c0414;
            C0521 c0521 = C0521.this;
            C0298 c0298 = c0521.f3001;
            boolean z = true;
            if (c0298 != null) {
                int i = c0521.f3006;
                if (i != 0 && i != 3) {
                    if (c0298.f1572 != 20) {
                        try {
                            c0298.m4134(1, 0);
                        } catch (Exception unused) {
                        }
                        c0298.f1572 = 20;
                    } else {
                        c0298.f1576 = null;
                    }
                }
                C0521 c0522 = C0521.this;
                c0522.f3008 = c0522.f3001.f1565;
                c0522.f3001 = null;
            }
            try {
                C0521.this.f3017.m3393(false, this.f3043);
                c0414 = null;
            } catch (IOException e) {
                c0414 = new C0414(e);
            }
            this.f3043 = null;
            this.f3037 = null;
            synchronized (C0521.this.f1721) {
                if (this.f3041) {
                    C0521 c0523 = C0521.this;
                    if (c0523.f3025 == 2) {
                        c0523.f3025 = 3;
                    }
                    if (c0523.f3031 == 0) {
                        c0523.f3017.m4312((Exception) c0414);
                    }
                    if (c0523.f3006 != 3) {
                        z = false;
                    }
                    c0523.f3006 = 0;
                    if (z) {
                        if (c0523.f3031 == 0) {
                            c0414 = c0523.f3017.f1722;
                        }
                        c0523.mo3401(c0414);
                    }
                    c0523.f1721.notifyAll();
                }
            }
        }

        public final void m5321() {
            byte[] bArr;
            int i;
            while (true) {
                synchronized (C0521.this.f1721) {
                    if (this.f3040 == 0) {
                        if (this.f3046 != 2) {
                            return;
                        } else {
                            try {
                                C0521.this.f1721.wait();
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                    if (this.f3038) {
                        this.f3038 = false;
                        this.f3035 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 3, C0521.this.f3026);
                    }
                }
                if (this.f3040 > 0) {
                    try {
                        synchronized (C0521.this.f1721) {
                            bArr = this.f3035[2];
                            i = this.f3040;
                            System.arraycopy(this.f3036, 0, bArr, 0, i);
                            byte b = (byte) (1 - this.f3045);
                            this.f3045 = b;
                            this.f3036 = this.f3035[b];
                            this.f3040 = 0;
                            long jM5323 = m5323();
                            if (jM5323 >= 0) {
                                while (jM5323 > C0521.this.f3029) {
                                    C0521.this.f3017.mo5626();
                                    jM5323 = m5323();
                                }
                            }
                        }
                        if (this.f3037 != null) {
                            this.f3037.write(bArr, 0, i);
                            synchronized (C0521.this.f1721) {
                                C0521.this.f3023 = System.currentTimeMillis();
                                C0521.this.f2998 += (long) i;
                            }
                            m5322();
                        }
                    } catch (IOException e) {
                        synchronized (C0521.this.f1721) {
                            if (this.f3041) {
                                C0521.this.mo3406(new C0414(e));
                            }
                        }
                    }
                }
            }
        }

        public static void m5319(C0522 c0522, byte[] bArr, int i, int i2) throws C0414 {
            int iMin = Math.min(c0522.f3036.length - c0522.f3040, i2);
            c0522.f3042 = iMin;
            System.arraycopy(bArr, i, c0522.f3036, c0522.f3040, iMin);
            int i3 = c0522.f3040;
            int i4 = c0522.f3042;
            c0522.f3040 = i3 + i4;
            if (i4 >= i2) {
                return;
            }
            c0522.f3039 = true;
            C0521.this.mo3402();
            throw new C0414(135, C0164.m3507(774, 22, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
        }
    }

    public class C0523 extends Thread {

        public C0521 f3049;

        public volatile InputStream f3050;

        public boolean f3051 = false;

        public byte[] f3048 = new byte[16384];

        public C0523(boolean z, Socket socket, C0521 c0521) {
            this.f3049 = null;
            setDaemon(z);
            this.f3049 = c0521;
            try {
                this.f3050 = socket.getInputStream();
            } catch (IOException unused) {
            }
        }

        @Override
        public void run() {
            Thread.currentThread().setName(C0521.this.f3017.getClass() + C0164.m3507(809, 14, 33));
            while (!this.f3051) {
                m5325();
                m5326();
            }
            C0521 c0521 = this.f3049;
            if (c0521 != null) {
                c0521.m5304();
            }
        }

        public final void m5325() {
            synchronized (C0521.this.f1721) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (!this.f3051) {
                    long jCurrentTimeMillis2 = (jCurrentTimeMillis + ((long) C0521.this.f3013)) - System.currentTimeMillis();
                    if (jCurrentTimeMillis2 > 0) {
                        try {
                            C0521.this.f1721.wait(jCurrentTimeMillis2);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }

        public final void m5326() {
            synchronized (C0521.this.f1721) {
                if (!this.f3051) {
                    try {
                        if (this.f3050.available() == 0) {
                            return;
                        }
                        InputStream inputStream = this.f3050;
                        byte[] bArr = this.f3048;
                        int i = inputStream.read(bArr, 0, bArr.length);
                        if (i > 0) {
                            C0521.this.f3001.m4147(this.f3048, 0, i);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public class C0524 extends Thread {

        public volatile InputStream f3054;

        public boolean f3056;

        public int f3060;

        public volatile Socket f3063;

        public int f3064;

        public int f3066;

        public boolean f3067;

        public byte[] f3069;

        public int f3070 = 4;

        public boolean f3061 = false;

        public boolean f3052 = true;

        public boolean f3053 = true;

        public boolean f3057 = false;

        public byte[] f3055 = null;

        public int f3059 = -1;

        public boolean f3062 = false;

        public boolean f3058 = false;

        public byte[] f3068 = null;

        public C0524(boolean z) {
            setDaemon(z);
        }

        public static boolean m5327(C0524 c0524) {
            return c0524.isAlive() && c0524.f3053 && c0524.f3070 != 5;
        }

        @Override
        public void run() {
            setName(C0521.this.f3017.getClass() + C0164.m3507(745, 7, 110));
            while (this.f3070 != 5) {
                m5331();
                m5332();
                m5333();
            }
        }

        public final boolean m5330() throws IOException {
            if (this.f3068 == null) {
                this.f3068 = new byte[16384];
            }
            try {
                InputStream inputStream = this.f3054;
                byte[] bArr = this.f3068;
                int i = inputStream.read(bArr, 0, bArr.length);
                if (i == -1) {
                    return false;
                }
                synchronized (C0521.this.f1721) {
                    C0521.this.f3001.m4147(this.f3068, 0, i);
                }
                return true;
            } catch (InterruptedIOException unused) {
                return true;
            }
        }

        public final void m5331() {
            String hostAddress;
            InetAddress inetAddress;
            synchronized (C0521.this.f1721) {
                if (this.f3070 != 2) {
                    return;
                }
                boolean z = this.f3063 != null;
                if (!z) {
                    try {
                        if (C0521.this.f2997.length() == 0) {
                            if (!C0521.this.f3017.m3323()) {
                                throw new C0414(102, C0164.m3507(485, 34, 99));
                            }
                            throw new C0414(102, C0164.m3507(449, 36, 110));
                        }
                        synchronized (C0521.this.f1721) {
                            if (this.f3070 != 2) {
                                return;
                            }
                            this.f3053 = false;
                            InetAddress byName = InetAddress.getByName(C0521.this.f2997);
                            if (C0521.this.f3014 && byName.getClass() == Inet4Address.class) {
                                byName = C0558.m5483(C0521.this.f2997, true);
                            }
                            if (C0521.this.f3032.length() > 0 || C0521.this.f3016 != 0 || C0521.this.f3033) {
                                String strM3507 = C0521.this.f3032;
                                if (strM3507 == null || strM3507.length() == 0) {
                                    strM3507 = C0164.m3507(519, 9, 71);
                                    if (!byName.isLoopbackAddress()) {
                                        strM3507 = InetAddress.getLocalHost().getHostName();
                                    }
                                }
                                InetAddress[] allByName = InetAddress.getAllByName(strM3507);
                                int i = 0;
                                while (true) {
                                    if (i >= allByName.length) {
                                        hostAddress = strM3507;
                                        inetAddress = null;
                                        break;
                                    } else {
                                        if (allByName[i].getClass() == byName.getClass()) {
                                            inetAddress = allByName[i];
                                            hostAddress = inetAddress.getHostAddress();
                                            break;
                                        }
                                        i++;
                                    }
                                }
                                if (inetAddress == null) {
                                    throw new C0414(1118, C0164.m3507(528, 33, 42));
                                }
                                SecurityManager securityManager = System.getSecurityManager();
                                if (C0521.this.f3016 != 0) {
                                    if (securityManager != null) {
                                        securityManager.checkConnect(hostAddress, C0521.this.f3016);
                                    }
                                    if (C0521.this.f3030) {
                                        if (C0521.m5276(C0521.this)) {
                                            this.f3063 = new Socket(Proxy.NO_PROXY);
                                        } else {
                                            this.f3063 = new Socket();
                                        }
                                        this.f3063.setReuseAddress(true);
                                        this.f3063.bind(new InetSocketAddress(inetAddress, C0521.this.f3016));
                                        this.f3063.connect(new InetSocketAddress(byName, C0521.this.f3027));
                                    } else if (C0521.m5276(C0521.this)) {
                                        this.f3063 = new Socket(Proxy.NO_PROXY);
                                        this.f3063.bind(new InetSocketAddress(inetAddress, C0521.this.f3016));
                                        this.f3063.connect(new InetSocketAddress(byName, C0521.this.f3027));
                                    } else {
                                        this.f3063 = new Socket(byName, C0521.this.f3027, inetAddress, C0521.this.f3016);
                                    }
                                } else if (C0521.this.f3033) {
                                    boolean z2 = false;
                                    for (int iCurrentTimeMillis = ((int) (System.currentTimeMillis() % 300)) + 512; iCurrentTimeMillis < 1000 && !z2; iCurrentTimeMillis++) {
                                        if (securityManager != null) {
                                            try {
                                                securityManager.checkConnect(hostAddress, iCurrentTimeMillis);
                                            } catch (ConnectException e) {
                                                throw new C0414(e, 10061, C0164.m3507(561, 89, 30));
                                            } catch (SocketException unused) {
                                                C0521.this.f3017.m5632();
                                            }
                                        }
                                        if (C0521.m5276(C0521.this)) {
                                            this.f3063 = new Socket(Proxy.NO_PROXY);
                                            this.f3063.bind(new InetSocketAddress(inetAddress, iCurrentTimeMillis));
                                            this.f3063.connect(new InetSocketAddress(byName, C0521.this.f3027));
                                        } else {
                                            this.f3063 = new Socket(byName, C0521.this.f3027, inetAddress, iCurrentTimeMillis);
                                        }
                                        z2 = true;
                                    }
                                    if (!z2) {
                                        C0521.this.m5290();
                                        C0521.m5279(C0521.this, new C0414(5001, C0164.m3507(650, 40, 114)));
                                        return;
                                    }
                                } else if (C0521.m5276(C0521.this)) {
                                    this.f3063 = new Socket(Proxy.NO_PROXY);
                                    this.f3063.bind(new InetSocketAddress(inetAddress, 0));
                                    this.f3063.connect(new InetSocketAddress(byName, C0521.this.f3027));
                                } else {
                                    this.f3063 = new Socket(byName, C0521.this.f3027, inetAddress, 0);
                                }
                            } else if (C0521.m5276(C0521.this)) {
                                this.f3063 = new Socket(Proxy.NO_PROXY);
                                this.f3063.connect(new InetSocketAddress(byName, C0521.this.f3027));
                            } else {
                                this.f3063 = new Socket(byName, C0521.this.f3027);
                            }
                            synchronized (C0521.this.f1721) {
                                if (this.f3070 != 2) {
                                    return;
                                }
                            }
                        }
                    } catch (Exception e2) {
                        if (!z && this.f3063 != null) {
                            try {
                                C0521.this.f3017.m3393(false, this.f3063);
                            } catch (IOException unused2) {
                            }
                        }
                        synchronized (C0521.this.f1721) {
                            if (this.f3070 == 2) {
                                C0521.m5279(C0521.this, new C0414(e2));
                                this.f3070 = 4;
                            }
                            this.f3053 = true;
                        }
                    }
                }
                if (z) {
                    this.f3063.setSoLinger(false, 0);
                }
                C0521.this.m5309(this.f3063, false);
                synchronized (C0521.this.f1721) {
                    if (this.f3070 == 2) {
                        this.f3054 = this.f3063.getInputStream();
                        C0521.m5278(C0521.this, this.f3063);
                    }
                    if (this.f3070 == 2) {
                        C0521 c0521 = C0521.this;
                        c0521.f3006 = 2;
                        c0521.f1721.notifyAll();
                        c0521.f3017.m5632();
                        c0521.mo3403((C0414) null);
                        c0521.m5294();
                    } else if (!z) {
                        try {
                            C0521.this.f3017.m3393(false, this.f3063);
                        } catch (IOException unused3) {
                        }
                    }
                    this.f3053 = true;
                }
                this.f3063 = null;
            }
        }

        public final void m5332() {
            int i;
            byte[] bArr;
            byte[] bArr2;
            byte[] bArr3;
            boolean zM5334 = true;
            C0414 c0414 = null;
            while (true) {
                synchronized (C0521.this.f1721) {
                    if (this.f3070 != 2) {
                        return;
                    }
                    if (!this.f3052 || this.f3061) {
                        this.f3064 = this.f3060;
                        this.f3056 = true;
                        this.f3052 = true;
                        this.f3061 = false;
                    }
                }
                if (this.f3056 && (i = this.f3064) != this.f3066) {
                    int i2 = this.f3059;
                    if (i2 != -1) {
                        if (i2 == 13 && this.f3069[i] == 10) {
                            int iM5337 = m5337(i, 1, 0);
                            this.f3064 = iM5337;
                            this.f3060 = iM5337;
                        }
                        this.f3059 = -1;
                    } else {
                        if (C0521.this.f3028) {
                            int i3 = 0;
                            while (true) {
                                int iM5338 = m5337(this.f3064, i3, 1);
                                if (iM5338 == -1) {
                                    bArr3 = null;
                                    break;
                                }
                                this.f3064 = iM5338;
                                byte b = this.f3069[iM5338];
                                if (b == 13 || b == 10) {
                                    int iM5336 = m5336(iM5338, 1);
                                    this.f3064 = iM5336;
                                    int iM5339 = m5336(iM5336, -this.f3060) - 1;
                                    bArr3 = this.f3055;
                                    if (bArr3 != null) {
                                        C0521.this.f3017.f440 = iM5339;
                                    } else {
                                        bArr3 = new byte[iM5339];
                                    }
                                    m5340(bArr3, iM5339);
                                    this.f3059 = b;
                                    break;
                                }
                                i3 = 1;
                            }
                            if (bArr3 != null) {
                                m5341(bArr3, true);
                            }
                        }
                        C0521 c0521 = C0521.this;
                        byte[] bArr4 = c0521.f3021;
                        if (bArr4.length != 0) {
                            boolean[] zArr = {false};
                            int length = bArr4.length;
                            int iMin = c0521.f2999;
                            int i4 = c0521.f3022;
                            if (i4 > 0) {
                                iMin = Math.min(i4, iMin);
                            }
                            int i5 = 0;
                            while (true) {
                                int iM53310 = m5337(this.f3064, i5, length);
                                if (iM53310 == -1) {
                                    bArr2 = null;
                                    break;
                                }
                                this.f3064 = iM53310;
                                if (iMin > 0 && m5336(iM53310, -this.f3060) == iMin) {
                                    bArr2 = this.f3055;
                                    if (bArr2 != null) {
                                        C0521.this.f3017.f440 = iMin;
                                    } else {
                                        bArr2 = new byte[iMin];
                                    }
                                    m5340(bArr2, iMin);
                                    break;
                                }
                                int iM53311 = this.f3064;
                                int i6 = 0;
                                while (i6 < length && this.f3069[iM53311] == bArr4[i6]) {
                                    iM53311 = m5336(iM53311, 1);
                                    i6++;
                                }
                                if (i6 == length) {
                                    int iM53312 = m5336(iM53311, -this.f3060) - length;
                                    byte[] bArr5 = this.f3055;
                                    if (bArr5 != null) {
                                        C0521.this.f3017.f440 = iM53312;
                                    } else {
                                        bArr5 = new byte[iM53312];
                                    }
                                    m5340(bArr5, iM53312);
                                    this.f3064 = iM53311;
                                    zArr[0] = true;
                                    bArr2 = bArr5;
                                    break;
                                }
                                i5 = 1;
                            }
                            if (bArr2 != null) {
                                m5341(bArr2, zArr[0]);
                            }
                        }
                        C0521 c0522 = C0521.this;
                        int iMin2 = c0522.f2999;
                        int i7 = c0522.f3022;
                        if (i7 != 0) {
                            iMin2 = Math.min(i7, iMin2);
                        }
                        if (m5336(this.f3066, -this.f3060) >= iMin2) {
                            bArr = this.f3055;
                            if (bArr != null) {
                                C0521.this.f3017.f440 = iMin2;
                            } else {
                                bArr = new byte[iMin2];
                            }
                            m5340(bArr, iMin2);
                            this.f3064 = m5336(this.f3060, iMin2);
                        } else if (C0521.this.f3021.length == 0) {
                            int iM53313 = m5336(this.f3066, -this.f3060);
                            byte[] bArr6 = this.f3055;
                            if (bArr6 != null) {
                                C0521.this.f3017.f440 = iM53313;
                            } else {
                                bArr6 = new byte[iM53313];
                            }
                            m5340(bArr6, iM53313);
                            this.f3064 = this.f3066;
                            bArr = bArr6;
                        } else {
                            bArr = null;
                        }
                        if (bArr != null) {
                            m5341(bArr, false);
                        } else {
                            this.f3056 = false;
                        }
                    }
                }
                synchronized (C0521.this.f1721) {
                    if (this.f3062) {
                        try {
                            C0521.this.f1721.wait(100L);
                        } catch (InterruptedException unused) {
                        }
                    } else {
                        this.f3058 = true;
                        if (zM5334 && !this.f3057) {
                            try {
                                zM5334 = m5334();
                                if (!zM5334 && C0521.this.f3017.m3375()) {
                                    this.f3057 = true;
                                    zM5334 = true;
                                }
                            } catch (Exception e) {
                                c0414 = new C0414(e);
                                zM5334 = false;
                            }
                        }
                        synchronized (C0521.this.f1721) {
                            if (!this.f3067) {
                                this.f3067 = true;
                                C0521.this.f1721.notifyAll();
                            }
                            this.f3058 = false;
                        }
                        if (this.f3057) {
                            synchronized (C0521.this.f1721) {
                                if (C0521.this.f3006 == 2 && C0521.this.f3017.f385 != 3) {
                                    C0521.this.f3017.m3306();
                                } else if (C0521.this.f3006 == 3) {
                                    this.f3057 = false;
                                    zM5334 = false;
                                } else if (C0521.this.f3006 == 0) {
                                    this.f3057 = false;
                                }
                            }
                        }
                        if (zM5334) {
                            continue;
                        } else {
                            synchronized (C0521.this.f1721) {
                                if (this.f3052) {
                                    if (!m5342()) {
                                        if (c0414 != null) {
                                            m5338(c0414);
                                        }
                                        synchronized (C0521.this.f1721) {
                                            if (this.f3070 == 2) {
                                                try {
                                                    if (C0521.this.f3006 == 2 && c0414 != null && !C0521.this.f3017.f404 && (!C0521.this.f3017.f397 || !c0414.getMessage().contains(C0164.m3507(690, 55, 53)))) {
                                                        C0521.this.f3017.m4312((Exception) c0414);
                                                    }
                                                    C0521.this.m5311(false, false);
                                                } catch (C0414 unused2) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        public final void m5333() {
            synchronized (C0521.this.f1721) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (true) {
                    long jCurrentTimeMillis2 = (((long) C0521.this.f3013) + jCurrentTimeMillis) - System.currentTimeMillis();
                    if (this.f3070 == 1) {
                        m5335();
                        return;
                    } else if (jCurrentTimeMillis2 <= 0) {
                        this.f3070 = 5;
                        return;
                    } else {
                        this.f3070 = 4;
                        try {
                            C0521.this.f1721.wait(jCurrentTimeMillis2);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }

        public final boolean m5334() throws IOException {
            if (C0521.this.f3001 != null) {
                return m5330();
            }
            int i = this.f3066;
            int i2 = this.f3060;
            if (i >= i2) {
                int length = this.f3069.length - i;
                if (i2 == 0) {
                    length--;
                }
                try {
                    int i3 = this.f3054.read(this.f3069, this.f3066, length);
                    C0521.this.f3017.m5633(1, this.f3069, this.f3066, i3);
                    if (i3 == -1) {
                        return false;
                    }
                    this.f3066 = m5336(this.f3066, i3);
                    this.f3056 = true;
                } catch (InterruptedIOException unused) {
                    return true;
                }
            }
            int i4 = this.f3066;
            int i5 = this.f3060;
            if (i4 < i5) {
                int i6 = (i5 - i4) - 1;
                if (i6 > 2048) {
                    i6 = 2048;
                }
                try {
                    int i7 = this.f3054.read(this.f3069, this.f3066, i6);
                    C0521.this.f3017.m5633(1, this.f3069, this.f3066, i7);
                    if (i7 == -1) {
                        return true;
                    }
                    this.f3066 = m5336(this.f3066, i7);
                    this.f3056 = true;
                } catch (InterruptedIOException unused2) {
                }
            }
            return true;
        }

        public static void m5328(C0524 c0524) {
            c0524.f3063 = C0521.this.f3005;
            try {
                if (c0524.f3063 != null) {
                    c0524.f3054 = c0524.f3063.getInputStream();
                } else {
                    c0524.f3054 = null;
                }
            } catch (Exception unused) {
                c0524.f3054 = null;
            }
            c0524.f3057 = false;
        }

        public final void m5335() {
            this.f3070 = 2;
            this.f3059 = -1;
            C0521 c0521 = C0521.this;
            c0521.f3022 = c0521.f3022;
            this.f3061 = false;
            this.f3069 = new byte[Math.max(c0521.f2999, Math.min(65536, c0521.f3007)) + 1];
            this.f3056 = false;
            this.f3052 = true;
            this.f3066 = 0;
            this.f3064 = 0;
            this.f3060 = 0;
            this.f3055 = C0521.this.f3017.f361 ? new byte[this.f3069.length] : null;
        }

        public void m5339(boolean z) throws C0414 {
            synchronized (C0521.this.f1721) {
                this.f3062 = z;
                if (this.f3058) {
                    this.f3067 = false;
                    while (!this.f3067 && this != Thread.currentThread()) {
                        C0521.this.f3017.mo5626();
                    }
                }
            }
        }

        public final boolean m5342() {
            boolean z = m5336(this.f3066, -this.f3060) != 0;
            this.f3061 = z;
            return z;
        }

        public final int m5337(int i, int i2, int i3) {
            int iM5336 = m5336(i, i2);
            if (m5336(this.f3066, -iM5336) >= i3) {
                return iM5336;
            }
            return -1;
        }

        public final void m5340(byte[] bArr, int i) {
            int i2 = this.f3066;
            int i3 = this.f3060;
            if (i2 > i3) {
                System.arraycopy(this.f3069, i3, bArr, 0, i);
                return;
            }
            int i4 = i3 + i;
            byte[] bArr2 = this.f3069;
            if (i4 <= bArr2.length) {
                System.arraycopy(bArr2, i3, bArr, 0, i);
                return;
            }
            System.arraycopy(bArr2, i3, bArr, 0, bArr2.length - i3);
            byte[] bArr3 = this.f3069;
            int length = bArr3.length;
            int i5 = this.f3060;
            System.arraycopy(bArr3, 0, bArr, bArr3.length - i5, i - (length - i5));
        }

        public final int m5336(int i, int i2) {
            int i3 = i + i2;
            if (i3 < 0) {
                return i3 + this.f3069.length;
            }
            byte[] bArr = this.f3069;
            return i3 >= bArr.length ? i3 - bArr.length : i3;
        }

        public final void m5341(byte[] bArr, boolean z) {
            synchronized (C0521.this.f1721) {
                while (this.f3070 == 2 && this.f3052) {
                    if (C0521.this.f3018) {
                        C0147 c0147 = C0521.this.f3017;
                        if (bArr == this.f3055) {
                            int i = C0521.this.f3017.f440;
                        } else {
                            int length = bArr.length;
                        }
                        c0147.m5632();
                        C0521.this.mo3407(bArr, z);
                        this.f3060 = this.f3064;
                        C0521.this.f1721.notifyAll();
                        return;
                    }
                    try {
                        C0521.this.f1721.wait();
                    } catch (InterruptedException unused) {
                    }
                }
                this.f3064 = this.f3060;
                this.f3059 = -1;
            }
        }

        public final void m5338(C0414 c0414) {
            synchronized (C0521.this.f1721) {
                if (this.f3070 == 2) {
                    C0521.this.mo3406(c0414);
                }
            }
        }
    }

    public C0521(C0147 c0147, Socket socket, Object obj) {
        super(obj);
        this.f3006 = 0;
        this.f3025 = 0;
        this.f3031 = 0;
        this.f3005 = null;
        this.f3000 = null;
        this.f3019 = null;
        this.f2997 = "";
        this.f3027 = 0;
        this.f3032 = "";
        this.f3016 = 0;
        this.f3007 = 1048576;
        this.f3026 = 262144;
        this.f3028 = false;
        this.f3021 = C0320.f1706;
        this.f2999 = 2048;
        this.f3022 = 0;
        this.f3018 = true;
        this.f3024 = true;
        this.f2996 = 0;
        this.f3020 = false;
        this.f3034 = false;
        this.f3004 = 0;
        this.f3002 = 0;
        this.f3010 = false;
        this.f3003 = 0;
        this.f3013 = 1;
        this.f2998 = 0L;
        this.f3029 = 0L;
        this.f3011 = 0L;
        this.f3023 = 0L;
        this.f3033 = false;
        this.f3001 = null;
        this.f3012 = null;
        this.f3009 = null;
        this.f3015 = false;
        this.f3030 = false;
        this.f3014 = false;
        this.f3008 = null;
        this.f3017 = c0147;
        this.f3005 = socket;
    }

    public static boolean m5276(C0521 c0521) {
        return c0521.f3017.mo3299();
    }

    public void m5281(boolean z) throws C0414 {
        int i;
        C0301 c0301 = this.f3009;
        if (c0301 == null || (i = c0301.f1615) <= 0) {
            return;
        }
        if (z) {
            try {
                m5314(c0301.f1616, 0, i, 1);
                return;
            } finally {
                this.f3009.m4179(0, this.f3003);
                this.f3003 = 0;
            }
        }
        try {
            m5301(c0301.f1616, 0, i, 1);
        } finally {
            this.f3009.m4179(0, this.f3019.f3042);
            this.f3003 = 0;
        }
    }

    public void m5283(boolean z) {
        synchronized (this.f1721) {
            this.f3018 = z;
            if (this.f3006 == 2 && z) {
                this.f1721.notifyAll();
            }
        }
    }

    public void mo3401(C0414 c0414) {
        throw null;
    }

    public void mo3402() {
        throw null;
    }

    public void m5286(boolean z) throws C0414 {
        C0523 c0523;
        if (z || (c0523 = this.f3012) == null || c0523.f3051) {
            this.f3000.m5339(z);
        }
    }

    public void m5289(boolean z) {
        synchronized (this.f1721) {
            this.f3028 = z;
        }
    }

    public final void m5290() {
        this.f3006 = 3;
        synchronized (this.f1721) {
            C0524 c0524 = this.f3000;
            if (c0524 != null && c0524.f3070 != 5) {
                c0524.f3070 = 4;
                C0521.this.f1721.notifyAll();
            }
            C0522 c0522 = this.f3019;
            if (c0522 != null) {
                C0522.m5316(c0522);
            }
        }
        this.f3005 = null;
    }

    public final void m5294() {
        if (this.f3025 == 2) {
            this.f3025 = 3;
        } else {
            mo3404();
        }
        this.f1721.notifyAll();
    }

    public void m5296(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f3020 = z;
            if (this.f3006 == 2) {
                throw new C0414(212, C0164.m3507(127, 40, 86));
            }
        }
    }

    public void m5299() {
    }

    public void mo3403(C0414 c0414) {
        throw null;
    }

    public String m5302() {
        synchronized (this.f1721) {
            if (this.f3006 == 2) {
                return this.f3005.getInetAddress().getHostAddress();
            }
            return this.f2997;
        }
    }

    public Hashtable m5303() {
        C0298 c0298 = this.f3001;
        if (c0298 != null) {
            this.f3008 = c0298.f1565;
        }
        return this.f3008;
    }

    public void m5304() {
        C0523 c0523 = this.f3012;
        if (c0523 != null) {
            boolean z = c0523.f3051;
            this.f3012 = null;
            if (z) {
                synchronized (this.f1721) {
                    this.f3017.m3322();
                    this.f3017.m3360((C0414) null, this.f3005, (Object) null);
                }
            }
            m5286(false);
        }
    }

    public void mo3404() {
        throw null;
    }

    public void m5305(int i) {
        synchronized (this.f1721) {
            try {
                if (i <= 0) {
                    return;
                }
                this.f2999 = i;
                if (this.f3006 == 2) {
                    this.f1721.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void mo3152(int i, String str) {
    }

    public void mo3405(int i, byte[] bArr) {
        throw null;
    }

    public void mo3407(byte[] bArr, boolean z) {
        throw null;
    }

    public void m5284(int i) {
        synchronized (this.f1721) {
            int i2 = this.f2999;
            if (i > i2) {
                i = i2;
            }
            this.f3022 = i;
            if (this.f3006 == 2) {
                this.f3000.f3052 = false;
                this.f1721.notifyAll();
            }
        }
    }

    public void m5297(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f3007 = i;
            if (this.f3006 == 2) {
                try {
                    C0610.f3340.mo3468(this.f3005, i);
                } catch (SocketException e) {
                    throw new C0414(e);
                }
            }
        }
    }

    public void m5301(byte[] bArr, int i, int i2, int i3) throws C0414 {
        int i4;
        if (this.f3006 != 2) {
            throw new C0414(1117, C0164.m3507(53, 38, 10));
        }
        this.f3017.m5633(0, bArr, i, i2);
        try {
            C0522.m5319(this.f3019, bArr, i, i2);
            i4 = this.f3019.f3042;
            this.f3017.m5632();
            if (i3 != 1) {
                byte[] bArr2 = C0320.f1706;
                if (i3 == 2) {
                    bArr2 = new byte[i4];
                    System.arraycopy(bArr, i, bArr2, 0, i4);
                }
            }
        } finally {
            i4 = this.f3019.f3042;
            this.f3017.m5632();
            if (i3 != 1) {
                byte[] bArr3 = C0320.f1706;
                if (i3 == 2) {
                    bArr3 = new byte[i4];
                    System.arraycopy(bArr, i, bArr3, 0, i4);
                }
                mo3405(i4, bArr3);
            }
            this.f1721.notifyAll();
        }
    }

    public void m5308(Socket socket) {
        synchronized (this.f1721) {
            this.f3005 = socket;
            C0524 c0524 = this.f3000;
            if (c0524 != null) {
                C0524.m5328(c0524);
            }
            C0522 c0522 = this.f3019;
            if (c0522 != null) {
                C0522.m5318(c0522);
            }
            if (socket == null || socket.isClosed()) {
                m5290();
            }
        }
    }

    public void m5285(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f3026 = i;
            if (this.f3006 == 2) {
                try {
                    C0610.f3340.mo3462(this.f3005, i);
                    this.f3019.f3038 = true;
                } catch (SocketException e) {
                    throw new C0414(e);
                }
            }
        }
    }

    public String m5287() {
        synchronized (this.f1721) {
            if (this.f3006 == 2) {
                return this.f3005.getLocalAddress().getHostAddress();
            }
            return this.f3032;
        }
    }

    public void m5288(int i) throws C0414 {
        synchronized (this.f1721) {
            int i2 = this.f3006;
            if (i2 != 0 && i2 != 3) {
                throw new C0414(100, C0164.m3507(378, 71, 38));
            }
            this.f3027 = i;
        }
    }

    public int m5295() {
        synchronized (this.f1721) {
            if (this.f3006 == 2) {
                return this.f3005.getLocalPort();
            }
            return this.f3016;
        }
    }

    public void m5307(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f3024 = z;
            if (this.f3006 == 2) {
                try {
                    if (z) {
                        int i = this.f2996;
                        if (i == 0) {
                            this.f3005.setSoLinger(false, 0);
                        } else {
                            this.f3005.setSoLinger(true, i);
                        }
                    } else {
                        this.f3005.setSoLinger(true, 0);
                    }
                } catch (IOException e) {
                    throw new C0414(700, C0164.m3507(91, 14, 51) + e.getMessage());
                }
            }
        }
    }

    public void m5282(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f3004 = i;
        }
    }

    public void m5298(boolean z) {
        C0298 c0298;
        synchronized (this.f1721) {
            if (z) {
                this.f3006 = 3;
                c0298 = this.f3001;
                if (c0298 != null) {
                    this.f3008 = c0298.f1565;
                    this.f3001 = null;
                }
                m5281(true);
                this.f3009 = null;
                this.f1721.notifyAll();
            } else {
                c0298 = this.f3001;
                if (c0298 != null) {
                    this.f3008 = c0298.f1565;
                    this.f3001 = null;
                }
                m5281(true);
                this.f3009 = null;
                this.f1721.notifyAll();
            }
            throw th;
        }
    }

    public void m5310(C0298 c0298) {
        this.f3001 = c0298;
        synchronized (this.f1721) {
            C0524 c0524 = this.f3000;
            if (c0524 != null) {
                C0524.m5328(c0524);
            }
            C0522 c0522 = this.f3019;
            if (c0522 != null) {
                C0522.m5318(c0522);
            }
            Socket socket = this.f3005;
            if (socket == null || socket.isClosed()) {
                m5290();
            }
        }
        if (c0298 != null) {
            if (this.f3012 == null) {
                C0147 c0147 = this.f3017;
                this.f3012 = new C0523(c0147 != null && c0147.f3346, this.f3005, this);
                m5286(true);
                this.f3012.start();
            }
            C0298 c0299 = this.f3001;
            c0299.f1576 = this;
            try {
                c0299.f1560 = null;
                c0299.f1553 = null;
                c0299.f1561 = "";
                if (c0299.f1604) {
                    c0299.m4109();
                } else {
                    c0299.f1572 = 2;
                }
            } catch (Exception e) {
                c0299.m4136(e);
                throw new C0414(e);
            }
        }
    }

    public void m5293(boolean z) throws C0414 {
        synchronized (this.f1721) {
            this.f3034 = z;
            if (this.f3006 == 2) {
                try {
                    this.f3005.setKeepAlive(z);
                } catch (SocketException e) {
                    throw new C0414(e);
                }
            }
        }
    }

    public void m5280(int i) throws C0414 {
        synchronized (this.f1721) {
            this.f3002 = i;
        }
    }

    public void m5306(String str) throws C0414 {
        synchronized (this.f1721) {
            int i = this.f3006;
            if (i != 0 && i != 3) {
                throw new C0414(101, C0164.m3507(307, 71, 24));
            }
            if (str == null) {
                str = "";
            }
            this.f2997 = str;
        }
    }

    public void m5292(String str) throws C0414 {
        synchronized (this.f1721) {
            int i = this.f3006;
            if (i != 0 && i != 3) {
                throw new C0414(107, C0164.m3507(167, 70, 46));
            }
            if (str == null) {
                str = "";
            }
            this.f3032 = str;
        }
    }

    public void m5291(int i) throws C0414 {
        synchronized (this.f1721) {
            int i2 = this.f3006;
            if (i2 != 0 && i2 != 3) {
                throw new C0414(106, C0164.m3507(237, 70, 112));
            }
            this.f3016 = i;
        }
    }

    public void m5300(byte[] bArr) {
        synchronized (this.f1721) {
            this.f3021 = C0259.m3845(bArr);
            if (this.f3006 == 2) {
                this.f3000.f3052 = false;
                this.f1721.notifyAll();
            }
        }
    }

    public void m5311(boolean z, boolean z2) throws C0414 {
        int i = this.f3025;
        if (i == 3 || i == 2) {
            this.f3025 = 4;
            while (this.f3025 == 4 && z2) {
                try {
                    this.f1721.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
        this.f3031 = !z2 ? 1 : 0;
        int i2 = this.f3006;
        if (z) {
            this.f3006 = 1;
            this.f3025 = 0;
            C0524 c0524 = this.f3000;
            if (c0524 != null && !C0524.m5327(c0524)) {
                this.f3000.f3070 = 5;
                this.f3000 = null;
            }
            if (this.f3000 == null) {
                C0147 c0147 = this.f3017;
                C0524 c0525 = new C0524(c0147 != null && c0147.f3346);
                this.f3000 = c0525;
                c0525.start();
            }
            C0522 c0522 = this.f3019;
            if (c0522 != null) {
                c0522.f3041 = false;
                C0522.m5316(c0522);
            }
            C0524 c0526 = this.f3000;
            c0526.f3063 = this.f3005;
            c0526.f3070 = 1;
            C0521.this.f1721.notifyAll();
        } else if (i2 == 0) {
            return;
        } else {
            m5290();
        }
        if (this.f3031 == 0) {
            while (i2 == this.f3006) {
                try {
                    this.f3017.mo5626();
                } catch (C0414 e) {
                    m5290();
                    throw e;
                }
            }
        }
    }

    public void m5312(byte[] bArr) throws C0414 {
        if (bArr == null) {
            return;
        }
        m5313(bArr, 0, bArr.length);
    }

    public void m5313(byte[] bArr, int i, int i2) throws C0414 {
        synchronized (this.f1721) {
            int i3 = this.f3025;
            if (i3 == 3 || i3 == 2 || i3 == 4) {
                this.f3010 = true;
                mo3402();
                throw new C0414(135, C0164.m3507(31, 22, 22));
            }
            if (bArr == null) {
                return;
            }
            if (this.f3017.f3354 == 0) {
                try {
                    m5281(false);
                    C0298 c0298 = this.f3001;
                    if (c0298 != null) {
                        try {
                            this.f3015 = true;
                            c0298.m4148(bArr, i, i2, 1);
                            this.f3015 = false;
                        } catch (Throwable th) {
                            this.f3015 = false;
                            throw th;
                        }
                    } else {
                        m5301(bArr, i, i2, 1);
                    }
                    this.f3025 = 1;
                } catch (Throwable th2) {
                    this.f3025 = 1;
                    throw th2;
                }
            } else {
                C0298 c0299 = this.f3001;
                if (c0299 != null) {
                    c0299.m4148(bArr, i, i2, 1);
                } else {
                    m5314(bArr, i, i2, 1);
                }
            }
        }
    }

    public void m5314(byte[] bArr, int i, int i2, int i3) throws C0414 {
        this.f3003 = 0;
        this.f3010 = false;
        this.f3025 = 3;
        int i4 = 0;
        while (true) {
            try {
                try {
                    int i5 = this.f3025;
                    if (i5 == 3) {
                        m5301(bArr, i, i2, i3);
                        i4 += this.f3019.f3042;
                        break;
                    } else if (i5 == 4) {
                        break;
                    } else {
                        this.f3017.mo5626();
                    }
                } catch (C0414 e) {
                    if (e.f2136 == 135) {
                        int i6 = this.f3019.f3042;
                        i += i6;
                        i2 -= i6;
                        i4 += i6;
                        this.f3025 = 2;
                    } else {
                        throw e;
                    }
                }
            } catch (Throwable th) {
                this.f3025 = 0;
                if (!this.f3010) {
                    this.f3003 = i4;
                }
                throw th;
            }
        }
        this.f3025 = 0;
        if (this.f3010) {
            return;
        }
        this.f3003 = i4;
    }

    public static void m5279(C0521 c0521, C0414 c0414) {
        c0521.f3006 = 0;
        if (c0521.f3031 == 0) {
            c0521.f3017.m4312((Exception) c0414);
            c0521.f1721.notifyAll();
        } else {
            c0521.mo3403(c0414);
        }
    }

    public void m5309(Socket socket, boolean z) {
        try {
            if (z) {
                try {
                    C0610.f3340.mo3462(socket, 65535);
                } catch (SocketException unused) {
                }
                try {
                    C0610.f3340.mo3468(socket, 65535);
                } catch (SocketException unused2) {
                }
                try {
                    socket.setSoLinger(false, 0);
                } catch (SocketException unused3) {
                }
                try {
                    socket.setTcpNoDelay(false);
                } catch (SocketException unused4) {
                }
                try {
                    socket.setKeepAlive(false);
                } catch (SocketException unused5) {
                }
                socket.setSoTimeout(0);
            } else {
                try {
                    C0610.f3340.mo3462(socket, this.f3026);
                } catch (SocketException unused6) {
                }
                try {
                    C0610.f3340.mo3468(socket, this.f3007);
                } catch (SocketException unused7) {
                }
                try {
                    if (this.f3024) {
                        int i = this.f2996;
                        if (i == 0) {
                            socket.setSoLinger(false, 0);
                        } else {
                            socket.setSoLinger(true, i);
                        }
                    } else {
                        socket.setSoLinger(true, 0);
                    }
                } catch (SocketException unused8) {
                }
                boolean z2 = this.f3020;
                if (z2) {
                    try {
                        socket.setTcpNoDelay(z2);
                    } catch (SocketException unused9) {
                    }
                }
                if (this.f3034) {
                    try {
                        socket.setKeepAlive(true);
                    } catch (SocketException unused10) {
                    }
                }
                socket.setSoTimeout(100);
            }
        } catch (SocketException unused11) {
        }
    }

    public static void m5278(C0521 c0521, Socket socket) {
        c0521.f3005 = socket;
        C0522 c0522 = c0521.f3019;
        if (c0522 != null && !C0522.m5317(c0522)) {
            C0522 c0523 = c0521.f3019;
            c0523.f3046 = 5;
            c0523.f3041 = false;
            c0521.f3019 = null;
        }
        if (c0521.f3019 == null) {
            C0147 c0147 = c0521.f3017;
            C0522 c0524 = c0521.new C0522(c0147 != null && c0147.f3346);
            c0521.f3019 = c0524;
            c0524.start();
        }
        C0522 c0525 = c0521.f3019;
        c0525.f3043 = socket;
        c0525.f3046 = 1;
        c0525.f3042 = 0;
        c0525.f3035 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 3, C0521.this.f3026);
        c0525.f3036 = c0525.f3035[c0525.f3045];
        c0525.f3040 = 0;
        c0525.f3045 = (byte) 0;
        c0525.f3038 = false;
        c0525.f3039 = false;
        c0525.f3041 = true;
        try {
            c0525.f3037 = socket.getOutputStream();
        } catch (IOException e) {
            c0525.f3037 = null;
            C0521.this.mo3406(new C0414(e));
        }
    }

    public void m5315(byte[] bArr, int i, int i2, int i3, int i4) {
        if (this.f3015) {
            if (this.f3009 == null) {
                this.f3009 = new C0301();
            }
            this.f3009.m4181(bArr, i, i2);
            this.f3003 = i4;
            m5281(false);
        } else {
            m5281(true);
            m5314(bArr, i, i2, i3);
            this.f3003 = i4;
        }
        this.f3003 = i4;
    }
}
