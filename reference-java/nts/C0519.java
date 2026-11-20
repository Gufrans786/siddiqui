package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imageutils.JfifUtil;
import com.google.android.material.internal.ViewUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0519 extends C0610 {

    public DatagramPacket f2978;

    public int f2979;

    public int f2980;

    public int f2981;

    public boolean f2982;

    public String f2983;

    public int f2984;

    public boolean f2985;

    public int f2986;

    public int f2987;

    public boolean f2988;

    public DatagramSocket f2989;

    public int f2990;

    public C0520 f2991;

    public boolean f2992;

    public String f2993;

    public class C0520 extends Thread {

        public boolean f2995 = true;

        public C0520(boolean z) {
            setDaemon(z);
        }

        @Override
        public void run() {
            synchronized (C0519.this.f1721) {
                if (!this.f2995) {
                    return;
                }
                int i = C0519.this.f2984;
                DatagramPacket datagramPacket = new DatagramPacket(new byte[C0519.this.f2984], C0519.this.f2984);
                DatagramSocket datagramSocket = C0519.this.f2989;
                while (true) {
                    try {
                        synchronized (C0519.this.f1721) {
                            if (C0519.this.f2984 < i) {
                                datagramPacket.setLength(C0519.this.f2984);
                            } else if (C0519.this.f2984 > i) {
                                datagramPacket.setData(new byte[C0519.this.f2984]);
                                i = C0519.this.f2984;
                            }
                        }
                        datagramSocket.receive(datagramPacket);
                        int length = datagramPacket.getLength();
                        byte[] bArr = new byte[length];
                        System.arraycopy(datagramPacket.getData(), 0, bArr, 0, length);
                        C0519.this.m5632();
                        datagramPacket.setLength(C0519.this.f2984);
                        synchronized (C0519.this.f1721) {
                            while (this.f2995 && !C0519.this.f2988) {
                                try {
                                    C0519.this.f1721.wait(100L);
                                } catch (InterruptedException unused) {
                                }
                            }
                            C0519.this.mo3788(bArr, datagramPacket.getAddress().getHostAddress(), datagramPacket.getPort());
                            if (!this.f2995) {
                                return;
                            }
                        }
                    } catch (InterruptedIOException unused2) {
                        continue;
                    } catch (IOException e) {
                        synchronized (C0519.this.f1721) {
                            if (!this.f2995) {
                                return;
                            }
                            C0414 c0414 = new C0414(e);
                            C0519.this.mo3152(c0414.f2136, c0414.getMessage());
                            if (C0519.this.f2982 && c0414.f2136 == 700 && c0414.getMessage().equalsIgnoreCase(C0128.m3239(ViewUtils.EDGE_TO_EDGE_FLAGS, 27, 42))) {
                                try {
                                    C0519.this.m5267();
                                    datagramSocket = C0519.this.f2989;
                                } catch (IOException unused3) {
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public C0519(Object obj, Object obj2) {
        super(obj2);
        this.f2986 = 1;
        this.f2989 = null;
        this.f2983 = "";
        this.f2990 = 0;
        this.f2993 = "";
        this.f2979 = 0;
        this.f2984 = 2048;
        this.f2981 = 2048;
        this.f2988 = true;
        this.f2992 = false;
        this.f2987 = 2048;
        this.f2980 = 1;
        this.f2985 = false;
        this.f2982 = false;
        if (obj instanceof InterfaceC0442) {
        }
    }

    public void m5255(boolean z) {
        synchronized (this.f1721) {
            this.f2988 = z;
            this.f1721.notifyAll();
        }
    }

    public void m5256(boolean z) throws C0414 {
        synchronized (this.f1721) {
            if (z) {
                if (this.f2986 == 2) {
                    throw new C0414(104, C0128.m3239(247, 26, 46));
                }
                try {
                    m5267();
                    C0520 c0520 = new C0520(this.f3346);
                    this.f2991 = c0520;
                    c0520.start();
                    this.f2986 = 2;
                } catch (IOException e) {
                    m5268();
                    throw new C0414(e);
                }
            } else if (this.f2986 == 2) {
                m5268();
            }
        }
    }

    public void m5258(int i) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                throw new C0414(112, C0128.m3239(394, 56, 39));
            }
            this.f2987 = i;
        }
    }

    public void m5261(int i) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                try {
                    C0610.f3340.mo3461(this.f2989, i);
                } catch (SocketException e) {
                    throw new C0414(e);
                }
            }
            this.f2981 = i;
        }
    }

    public void m5263(boolean z) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                throw new C0414(113, C0128.m3239(492, 64, 8));
            }
            this.f2985 = z;
        }
    }

    public String m5264() {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                return this.f2989.getLocalAddress().getHostAddress();
            }
            return this.f2993;
        }
    }

    public void m5265(int i) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                if (this.f2992) {
                    throw new C0414(115, C0128.m3239(712, 56, 80));
                }
                this.f2978.setPort(i);
            }
            this.f2990 = i;
        }
    }

    @Override
    public void mo5266(int i) {
        this.f2980 = i;
    }

    public final void m5267() throws IOException {
        DatagramSocket datagramSocket = this.f2989;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f2989 = null;
        }
        InetAddress byName = this.f2993.length() != 0 ? InetAddress.getByName(this.f2993) : null;
        InetAddress byName2 = InetAddress.getByName(this.f2983);
        this.f2989 = C0610.f3340.mo3464(byName, this.f2979, this.f2985);
        this.f2985 = C0610.f3340.mo3469(this.f2989);
        this.f2989.setSoTimeout(100);
        if (this.f2992) {
            int i = this.f2990;
            if (i == 0) {
                throw new C0414(116, C0128.m3239(273, 69, 93));
            }
            C0610.f3340.mo3467(this.f2989, byName2, i);
        }
        C0610.f3340.mo3461(this.f2989, this.f2981);
        C0610.f3340.mo3466(this.f2989, this.f2984);
        this.f2978 = new DatagramPacket(C0320.f1706, 0, byName2, this.f2990);
    }

    public final void m5268() {
        this.f2986 = 1;
        C0520 c0520 = this.f2991;
        if (c0520 != null) {
            c0520.f2995 = false;
            C0519.this.f1721.notifyAll();
            this.f2991 = null;
        }
        DatagramSocket datagramSocket = this.f2989;
        if (datagramSocket != null) {
            datagramSocket.close();
        }
        this.f2989 = null;
        this.f2978 = null;
    }

    public int m5269() {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                return this.f2989.getLocalPort();
            }
            return this.f2979;
        }
    }

    public void m5272(boolean z) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                throw new C0414(117, C0128.m3239(342, 52, 111));
            }
            this.f2992 = z;
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0128.m3239(0, 8, 87))) {
            if (c0440.f2269) {
                return "0";
            }
            c0440.m4805();
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3239(JfifUtil.MARKER_RST7, 32, 106));
        }
        if (c0440.m4813(C0128.m3239(8, 14, 93))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2985).toString();
            }
            m5263(c0440.m4809());
            return "";
        }
        if (c0440.m4813(C0128.m3239(22, 13, 125))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2992).toString();
            }
            m5272(c0440.m4809());
            return "";
        }
        if (c0440.m4813(C0128.m3239(35, 13, 65))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2987).toString();
            }
            m5258(c0440.m4805());
            return "";
        }
        if (c0440.m4813(C0128.m3239(48, 12, 23))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2984).toString();
            }
            m5262(c0440.m4805());
            return "";
        }
        if (c0440.m4813(C0128.m3239(60, 13, 1))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2981).toString();
            }
            m5261(c0440.m4805());
            return "";
        }
        if (c0440.m4813(C0128.m3239(73, 15, 44))) {
            return "";
        }
        if (c0440.m4813(C0128.m3239(88, 12, 3))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2989).toString();
            }
            this.f2989 = (DatagramSocket) c0440.f2271;
            return "";
        }
        if (c0440.m4813(C0128.m3239(100, 10, 96))) {
            if (c0440.f2269) {
                return "0";
            }
            c0440.m4805();
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3239(181, 34, 63));
        }
        if (c0440.m4813(C0128.m3239(110, 16, 19))) {
            if (c0440.f2269) {
                return this.f2982 ? C0128.m3239(WebSocketProtocol.PAYLOAD_SHORT, 4, 69) : C0128.m3239(130, 5, 32);
            }
            this.f2982 = c0440.m4809();
            return "";
        }
        if (c0440.m4813(C0128.m3239(135, 9, 73))) {
            if (c0440.f2269) {
                return m5264();
            }
            m5271(c0440.f2271);
        } else if (c0440.m4813(C0128.m3239(144, 9, 87))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(m5269()).toString();
            }
            m5270(c0440.m4805());
        } else if (c0440.m4813(C0128.m3239(153, 8, 61))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2980).toString();
            }
            this.f2980 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3239(161, 10, 54))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2988).toString();
            }
            m5255(c0440.m4809());
        } else {
            if (!c0440.m4813(C0128.m3239(171, 10, 86)) || c0440.f2269) {
                return super.mo3151(c0440);
            }
            byte[] bArrM3863 = C0259.m3863(c0440.f2271);
            if (bArrM3863 != null && bArrM3863.length != 0) {
                m5273(bArrM3863, 0, bArrM3863.length);
            }
        }
        return "";
    }

    @Override
    public void mo3152(int i, String str) {
        throw null;
    }

    public void mo3788(byte[] bArr, String str, int i) {
        throw null;
    }

    public void m5262(int i) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                try {
                    C0610.f3340.mo3466(this.f2989, i);
                } catch (SocketException e) {
                    throw new C0414(e);
                }
            }
            this.f2984 = i;
        }
    }

    public void m5271(String str) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 != 2) {
                if (str == null) {
                    str = "";
                }
                this.f2993 = str;
            } else {
                throw new C0414(107, C0128.m3239(556, 52, 4));
            }
        }
    }

    @Override
    public void mo5260() {
        synchronized (this.f1721) {
            super.mo5260();
            try {
                m5256(false);
            } catch (C0414 unused) {
            }
        }
    }

    @Override
    public int mo5257() {
        return this.f2980;
    }

    public void m5259(String str) throws C0414 {
        synchronized (this.f1721) {
            if (str == null) {
                str = "";
            }
            if (this.f2986 == 2) {
                if (!this.f2992) {
                    try {
                        this.f2978.setAddress(InetAddress.getByName(str));
                    } catch (UnknownHostException e) {
                        throw new C0414(e);
                    }
                } else {
                    throw new C0414(114, C0128.m3239(660, 52, 98));
                }
            }
            this.f2983 = str;
        }
    }

    public void m5270(int i) throws C0414 {
        synchronized (this.f1721) {
            if (this.f2986 != 2) {
                this.f2979 = i;
            } else {
                throw new C0414(106, C0128.m3239(TypedValues.MotionType.TYPE_DRAW_PATH, 52, 38));
            }
        }
    }

    public void m5273(byte[] bArr, int i, int i2) throws C0414 {
        if (bArr == null || i2 == 0) {
            return;
        }
        synchronized (this.f1721) {
            if (this.f2986 == 2) {
                try {
                    C0610.f3340.mo3465(this.f2978, bArr, i, i2);
                    this.f2989.send(this.f2978);
                    m5632();
                } catch (IOException e) {
                    throw new C0414(e);
                }
            } else {
                throw new C0414(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, C0128.m3239(450, 42, 32));
            }
        }
    }
}
