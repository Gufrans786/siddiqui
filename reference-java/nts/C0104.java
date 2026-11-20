package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0104 extends C0320 {

    public C0627 f123;

    public boolean f124;

    public InputStream f125;

    public InterfaceC0233 f126;

    public int f127;

    public long f128;

    public int f129;

    public int f130;

    public C0387 f131;

    public boolean f132;

    public boolean f133;

    public AbstractC0317 f134;

    public long f135;

    public C0387 f136;

    public boolean f137;

    public AbstractC0403 f138;

    public C0387 f139;

    public C0104(Object obj, Object obj2) {
        super(obj2);
        this.f126 = null;
        this.f125 = null;
        this.f131 = new C0387();
        this.f123 = new C0627();
        this.f136 = new C0387();
        this.f139 = new C0387();
        this.f132 = false;
        this.f124 = false;
        if (obj instanceof InterfaceC0233) {
            this.f126 = (InterfaceC0233) obj;
        }
        this.f127 = 2;
        m3148();
        this.f139.m4541();
        this.f123.m5722();
        this.f131.m4541();
        this.f136.m4541();
        m3149();
        this.f128 = 0L;
        this.f135 = 0L;
        this.f129 = 0;
        this.f137 = true;
        this.f133 = true;
        this.f130 = 1;
    }

    public void m3147(int i) {
        this.f127 = i;
        m3148();
    }

    public void m3148() {
        int i;
        this.f134 = null;
        this.f138 = null;
        if (C0320.f1718) {
            i = 2;
        } else {
            i = this.f132 ? 3 : 1;
        }
        try {
            switch (this.f127) {
                case 0:
                    AbstractC0317 abstractC0317M4238 = C0308.m4238(C0164.m3502(124, 4, 44), i);
                    this.f134 = abstractC0317M4238;
                    abstractC0317M4238.mo3250();
                    this.f129 = 0;
                    return;
                case 1:
                    AbstractC0317 abstractC0317M4239 = C0308.m4238(C0164.m3502(128, 6, 67), i);
                    this.f134 = abstractC0317M4239;
                    abstractC0317M4239.mo3250();
                    this.f129 = 0;
                    return;
                case 2:
                    AbstractC0317 abstractC0317M42310 = C0308.m4238(C0164.m3502(134, 6, 95), i);
                    this.f134 = abstractC0317M42310;
                    abstractC0317M42310.mo3250();
                    this.f129 = 0;
                    return;
                case 3:
                    AbstractC0317 abstractC0317M42311 = C0308.m4238(C0164.m3502(CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, 6, 43), i);
                    this.f134 = abstractC0317M42311;
                    abstractC0317M42311.mo3250();
                    this.f129 = 0;
                    return;
                case 4:
                    AbstractC0317 abstractC0317M42312 = C0308.m4238(C0164.m3502(CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA, 6, 112), i);
                    this.f134 = abstractC0317M42312;
                    abstractC0317M42312.mo3250();
                    this.f129 = 0;
                    return;
                case 5:
                    AbstractC0317 abstractC0317M42313 = C0308.m4238(C0164.m3502(172, 3, RNMBXStyleValue.InterpolationModeIdentity), i);
                    this.f134 = abstractC0317M42313;
                    abstractC0317M42313.mo3250();
                    this.f129 = 0;
                    return;
                case 6:
                    AbstractC0317 abstractC0317M42314 = C0308.m4238(C0164.m3502(175, 3, 122), i);
                    this.f134 = abstractC0317M42314;
                    abstractC0317M42314.mo3250();
                    this.f129 = 0;
                    return;
                case 7:
                    AbstractC0317 abstractC0317M42315 = C0308.m4238(C0164.m3502(178, 3, 10), i);
                    this.f134 = abstractC0317M42315;
                    abstractC0317M42315.mo3250();
                    this.f129 = 0;
                    return;
                case 8:
                    AbstractC0317 abstractC0317M42316 = C0308.m4238(C0164.m3502(181, 9, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), i);
                    this.f134 = abstractC0317M42316;
                    abstractC0317M42316.mo3250();
                    this.f129 = 0;
                    return;
                case 9:
                    AbstractC0317 abstractC0317M42317 = C0308.m4238(C0164.m3502(190, 7, 115), i);
                    this.f134 = abstractC0317M42317;
                    abstractC0317M42317.mo3250();
                    this.f129 = 0;
                    return;
                case 10:
                    AbstractC0403 abstractC0403M4223 = C0308.m4223(C0164.m3502(197, 7, 48));
                    this.f138 = abstractC0403M4223;
                    abstractC0403M4223.mo3250();
                    this.f129 = 1;
                    return;
                case 11:
                    AbstractC0403 abstractC0403M4224 = C0308.m4223(C0164.m3502(JfifUtil.MARKER_EOI, 8, 11));
                    this.f138 = abstractC0403M4224;
                    abstractC0403M4224.mo3250();
                    this.f129 = 1;
                    return;
                case 12:
                    AbstractC0403 abstractC0403M4225 = C0308.m4223(C0164.m3502(255, 10, 3));
                    this.f138 = abstractC0403M4225;
                    abstractC0403M4225.mo3250();
                    this.f129 = 1;
                    return;
                case 13:
                    AbstractC0403 abstractC0403M4226 = C0308.m4223(C0164.m3502(JfifUtil.MARKER_APP1, 10, 56));
                    this.f138 = abstractC0403M4226;
                    abstractC0403M4226.mo3250();
                    this.f129 = 1;
                    return;
                case 14:
                    AbstractC0403 abstractC0403M4227 = C0308.m4223(C0164.m3502(235, 10, WebSocketProtocol.PAYLOAD_SHORT));
                    this.f138 = abstractC0403M4227;
                    abstractC0403M4227.mo3250();
                    this.f129 = 1;
                    return;
                case 15:
                    AbstractC0403 abstractC0403M4228 = C0308.m4223(C0164.m3502(245, 10, 52));
                    this.f138 = abstractC0403M4228;
                    abstractC0403M4228.mo3250();
                    this.f129 = 1;
                    return;
                case 16:
                    AbstractC0403 abstractC0403M4229 = C0308.m4223(C0164.m3502(204, 13, 124));
                    this.f138 = abstractC0403M4229;
                    abstractC0403M4229.mo3250();
                    this.f129 = 1;
                    return;
                case 17:
                    AbstractC0317 abstractC0317M42318 = C0308.m4238(C0164.m3502(265, 8, 2), i);
                    this.f134 = abstractC0317M42318;
                    abstractC0317M42318.mo3250();
                    this.f129 = 0;
                    return;
                case 18:
                    AbstractC0317 abstractC0317M42319 = C0308.m4238(C0164.m3502(273, 8, 58), i);
                    this.f134 = abstractC0317M42319;
                    abstractC0317M42319.mo3250();
                    this.f129 = 0;
                    return;
                case 19:
                    AbstractC0317 abstractC0317M42320 = C0308.m4238(C0164.m3502(281, 8, 41), i);
                    this.f134 = abstractC0317M42320;
                    abstractC0317M42320.mo3250();
                    this.f129 = 0;
                    return;
                case 20:
                    AbstractC0317 abstractC0317M42321 = C0308.m4238(C0164.m3502(289, 8, 37), i);
                    this.f134 = abstractC0317M42321;
                    abstractC0317M42321.mo3250();
                    this.f129 = 0;
                    return;
                case 21:
                    AbstractC0317 abstractC0317M42322 = C0308.m4238(C0164.m3502(SyslogConstants.LOG_LOCAL3, 10, 6), i);
                    this.f134 = abstractC0317M42322;
                    abstractC0317M42322.mo3250();
                    this.f129 = 0;
                    return;
                case 22:
                    AbstractC0317 abstractC0317M42323 = C0308.m4238(C0164.m3502(162, 10, 98), i);
                    this.f134 = abstractC0317M42323;
                    abstractC0317M42323.mo3250();
                    this.f129 = 0;
                    return;
                default:
                    this.f129 = 0;
                    throw new C0414(101, C0164.m3502(297, 21, 82));
            }
        } catch (C0537 unused) {
            if (this.f134 != null || this.f138 != null) {
                throw new C0414(101, C0164.m3502(TypedValues.AttributesType.TYPE_PIVOT_TARGET, 20, 67));
            }
            throw new C0414(101, C0164.m3502(338, 21, 10));
        }
    }

    public final void m3149() {
        InputStream inputStream;
        try {
            try {
                if (this.f124 && (inputStream = this.f125) != null) {
                    inputStream.close();
                }
                this.f125 = null;
            } catch (IOException unused) {
                throw new C0414(304, C0164.m3502(390, 19, 119));
            }
        } catch (Throwable th) {
            this.f125 = null;
            throw th;
        }
    }

    public int m3150() {
        int i = this.f129;
        return (i == 0 || i == 4) ? C0308.m4221(this.f134) : C0308.m4221(this.f138);
    }

    public byte[] m3154(byte[] bArr, boolean z) {
        int i;
        int length = bArr.length;
        this.f136.m4541();
        try {
            int i2 = this.f129;
            if (i2 == 4) {
                this.f134.mo3250();
                this.f129 = 0;
            } else if (i2 == 3) {
                this.f138.mo3250();
                this.f129 = 1;
            }
            int i3 = this.f129;
            if (i3 == 1) {
                try {
                    C0308.m4245(this.f138, this.f139.m4554());
                    this.f129 = 2;
                } catch (C0537 e) {
                    throw new C0414(e);
                }
            } else if (i3 == 0 && (i = this.f127) <= 20 && i >= 17) {
                ((C0173) this.f134).m3534(this.f130);
            }
            if (z) {
                try {
                    if (this.f129 == 2) {
                        this.f138.mo3122(bArr, 0, length);
                        this.f136.m4543(C0308.m4264(this.f138));
                        this.f129 = 3;
                    } else {
                        this.f134.mo3122(bArr, 0, length);
                        this.f136.m4543(C0308.m4264(this.f134));
                        this.f129 = 4;
                    }
                } catch (Exception e2) {
                    throw new C0414(0, C0414.m4672(e2));
                }
            } else {
                try {
                    if (this.f129 == 2) {
                        this.f138.mo3412(bArr, 0, length);
                    } else {
                        this.f134.mo3412(bArr, 0, length);
                    }
                } catch (Exception e3) {
                    throw new C0414(0, C0414.m4672(e3));
                }
            }
            return this.f136.m4554();
        } catch (C0537 e4) {
            throw new C0414(e4);
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0164.m3502(31, 8, 98)) && c0440.f2269) {
            return C0663.m5891("").append(m3150()).toString();
        }
        if (c0440.m4813(C0164.m3502(39, 11, 76))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f130).toString();
            }
            this.f130 = c0440.m4805();
        } else if (c0440.m4813(C0164.m3502(50, 31, 16))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f133).toString();
            }
            this.f133 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3502(81, 19, 77))) {
            if (c0440.f2269) {
                return super.mo3151(c0440);
            }
            if (C0320.f1718 != c0440.m4809()) {
                super.mo3151(c0440);
                m3148();
            }
        } else if (c0440.m4813(C0164.m3502(100, 15, 23))) {
            if (c0440.f2269) {
                return this.f132 ? C0164.m3502(115, 4, 33) : C0164.m3502(119, 5, 57);
            }
            boolean zM4809 = c0440.m4809();
            if (zM4809 != this.f132) {
                this.f132 = zM4809;
                m3148();
            }
        } else {
            return super.mo3151(c0440);
        }
        return "";
    }

    public void m3153(long j) {
        int i;
        if (j <= 0) {
            return;
        }
        long j2 = this.f135 + j;
        this.f135 = j2;
        long j3 = this.f128;
        if (j3 > 0) {
            i = (int) ((100 * j2) / j3);
            if (i > 100) {
                i = 100;
            }
        } else {
            i = -1;
        }
        InterfaceC0233 interfaceC0233 = this.f126;
        if (interfaceC0233 != null) {
            interfaceC0233.m3706(j2, i);
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0233 interfaceC0233 = this.f126;
        if (interfaceC0233 != null) {
            interfaceC0233.m3705(i, str);
        }
    }
}
