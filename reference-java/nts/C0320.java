package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.common.base.Ascii;
import java.io.File;
import java.security.Security;
import java.util.Locale;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0320 {

    public static boolean f1708 = true;

    public static boolean f1711 = false;

    public static final String f1712;

    public static int f1713 = 0;

    public static boolean f1715 = false;

    public static final String f1717;

    public static boolean f1718 = false;

    public static boolean f1719 = false;

    public static final byte[] f1706 = new byte[0];

    public static final char[] f1707 = new char[0];

    public static final byte[] f1710 = {Ascii.CR};

    public static final byte[] f1714 = {10};

    public static final byte[] f1716 = {Ascii.CR, 10};

    public static final byte[] f1709 = {Ascii.CR, 10, Ascii.CR, 10};

    public boolean f1726 = false;

    public C0625 f1725 = new C0625(false);

    public C0414 f1722 = null;

    public C0414 f1724 = null;

    public boolean f1720 = false;

    public Object f1721 = null;

    public int f1723 = 0;

    static {
        String property = System.getProperty(C0128.m3244(78, 14, 54), "\r\n");
        f1712 = property;
        C0259.m3858(property);
        f1717 = File.separator;
        String property2 = System.getProperty(C0128.m3244(92, 12, 27));
        if (property2 != null && property2.equalsIgnoreCase(C0128.m3244(104, 6, 64))) {
            f1719 = true;
            f1708 = false;
        }
        f1718 = false;
        f1715 = true;
        f1711 = true;
        f1713 = 1;
    }

    public C0320(Object obj) {
        mo3387(obj);
        Locale locale = Locale.getDefault();
        this.f1725.m5714((locale.equals(Locale.JAPAN) || locale.equals(Locale.JAPANESE)) ? 1 : 0);
    }

    public static void m4303(boolean z) {
        if (z) {
            String strM3244 = C0128.m3244(0, 78, 87);
            if (f1719) {
                throw new C0414(TypedValues.TransitionType.TYPE_TO, strM3244);
            }
        }
        f1708 = z;
    }

    public boolean m4305() {
        if (this.f1723 == 0) {
            return (f1708 || f1719) ? false : true;
        }
        return true;
    }

    public void m4307(String str) {
        this.f1725.m5717(str);
    }

    public String m4309() {
        C0625 c0625 = this.f1725;
        String strM5880 = c0625.f3458;
        if (strM5880 == null) {
            strM5880 = "";
        }
        String str = c0625.f3459;
        if (str == null || str.length() <= 0 || strM5880.equals(c0625.f3459)) {
            return strM5880;
        }
        if (strM5880.length() > 0) {
            strM5880 = C0663.m5880(strM5880, "/");
        }
        return C0663.m5891(strM5880).append(c0625.f3459).toString();
    }

    public void m4311(boolean z) {
        if (z) {
            this.f1723 |= 1;
        } else {
            this.f1723 &= -2;
        }
    }

    public void mo3152(int i, String str) {
    }

    public void mo3406(C0414 c0414) {
        if (c0414 != null) {
            mo3152(c0414.f2136, c0414.getMessage());
        } else {
            mo3152(0, "OK");
        }
    }

    public void mo3392(boolean z) {
    }

    public void m4306() throws C0414 {
        synchronized (this.f1721) {
            C0414 c0414 = this.f1722;
            if (c0414 != null) {
                try {
                    throw c0414;
                } catch (Throwable th) {
                    this.f1722 = null;
                    throw th;
                }
            } else {
                C0414 c0415 = this.f1724;
                if (c0415 != null) {
                    try {
                        throw c0415;
                    } catch (Throwable th2) {
                        this.f1724 = null;
                        throw th2;
                    }
                }
            }
            throw th;
        }
    }

    public String m4304(String str) throws C0414 {
        return mo3151(new C0440(str));
    }

    public int m4310(String str, String str2) {
        return str.toLowerCase().compareTo(str2.toLowerCase());
    }

    public void mo3387(Object obj) {
        if (obj != null) {
            this.f1721 = obj;
            return;
        }
        throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3244(110, 38, 95));
    }

    public void m4312(Exception exc) {
        synchronized (this.f1721) {
            try {
                if (exc == null) {
                    this.f1722 = null;
                } else if (this.f1722 == null) {
                    this.f1722 = exc instanceof C0414 ? (C0414) exc : new C0414(exc);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void m4308() {
        try {
            mo3392(!this.f1720);
        } finally {
            this.f1720 = true;
        }
    }

    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0128.m3244(CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 22, 46))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(f1708).toString();
            }
            m4303(c0440.m4809());
        } else {
            if (!c0440.m4813(C0128.m3244(170, 22, 76)) && !c0440.m4813(C0128.m3244(192, 21, 19))) {
                if (c0440.m4813(C0128.m3244(213, 19, 111))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(f1718).toString();
                    }
                    if (c0440.m4809()) {
                        if (Security.getProvider(C0128.m3244(232, 6, 92)) != null) {
                            try {
                                Class<?> cls = Class.forName(C0128.m3244(302, 47, 33));
                                if (((Boolean) cls.getDeclaredMethod(C0128.m3244(349, 20, 10), new Class[0]).invoke(cls, new Object[0])).booleanValue()) {
                                    this.f1723 |= 1073741824;
                                } else {
                                    throw new C0414(C0128.m3244(369, 204, 45));
                                }
                            } catch (Exception e) {
                                throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3244(573, 74, 78) + e.getMessage());
                            }
                        } else {
                            throw new C0414(C0128.m3244(238, 64, 89));
                        }
                    } else {
                        this.f1723 &= -1073741825;
                    }
                    boolean zM4809 = c0440.m4809();
                    f1718 = zM4809;
                    AbstractC0116.m3184(AbstractC0116.m3183(zM4809 ? 2 : 1));
                } else if (c0440.m4813(C0128.m3244(647, 14, 8))) {
                    if (c0440.f2269) {
                        return AbstractC0116.f198.mo3190();
                    }
                    AbstractC0116.m3184((Object) c0440.f2271);
                } else if (!c0440.m4813(C0128.m3244(661, 7, 24)) && !c0440.m4813(C0128.m3244(668, 8, 40))) {
                    if (c0440.m4813(C0128.m3244(676, 11, 112))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(this.f1725.f3457).toString();
                        }
                        this.f1725.m5714(c0440.m4805());
                    } else if (c0440.m4813(C0128.m3244(687, 19, 63))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(f1715).toString();
                        }
                        f1715 = c0440.m4809();
                    } else if (c0440.m4813(C0128.m3244(TypedValues.TransitionType.TYPE_STAGGERED, 19, 81))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(f1711).toString();
                        }
                        f1711 = c0440.m4809();
                    } else if (c0440.m4813(C0128.m3244(725, 12, 85))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(f1713).toString();
                        }
                        f1713 = c0440.m4805();
                    } else {
                        throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0128.m3244(737, 30, 42)), c0440.f2272, "\"."));
                    }
                } else {
                    if (c0440.f2269) {
                        return m4309();
                    }
                    m4307(c0440.f2271);
                }
            } else {
                if (c0440.f2269) {
                    return C0663.m5891("").append(!f1708).toString();
                }
                m4303(!c0440.m4809());
            }
        }
        return "";
    }
}
