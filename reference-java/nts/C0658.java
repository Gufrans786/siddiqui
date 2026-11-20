package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import java.io.InputStream;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.prefs.Preferences;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0658 {

    public static Method f3645;

    public static Method f3646;

    public static Method f3647;

    public static Class<? extends Preferences> f3648;

    public static Method f3649;

    public static Method f3650;

    public static Method f3651;

    public static Method f3652;

    public static Method f3653;

    public static Method f3654;

    public static Method f3655;

    public static Method f3656;

    public static Method f3657;

    public static Method f3658;

    public static Method f3659;

    public static Method f3661;

    public static boolean f3662;

    public static Method f3663;

    public static Method f3664;

    public static Method f3665;

    public static Method f3666;

    public static Method f3667;

    public static Preferences f3668 = Preferences.userRoot();

    public static Preferences f3660 = Preferences.systemRoot();

    public static class C0659 extends Thread {

        public StringWriter f3669 = new StringWriter();

        public InputStream f3670;

        public C0659(InputStream inputStream) {
            this.f3670 = inputStream;
        }

        @Override
        public void run() {
            while (true) {
                try {
                    int i = this.f3670.read();
                    if (i == -1) {
                        return;
                    } else {
                        this.f3669.write(i);
                    }
                } catch (Exception unused) {
                    return;
                }
            }
        }
    }

    static {
        char c;
        Class cls = f3668.getClass();
        f3648 = cls;
        f3657 = null;
        f3645 = null;
        f3646 = null;
        f3651 = null;
        f3667 = null;
        f3649 = null;
        f3650 = null;
        f3654 = null;
        f3661 = null;
        f3664 = null;
        f3653 = null;
        f3658 = null;
        f3665 = null;
        f3652 = null;
        f3666 = null;
        f3663 = null;
        f3656 = null;
        f3659 = null;
        f3647 = null;
        f3655 = null;
        f3662 = false;
        try {
            c = 0;
            try {
                Method declaredMethod = cls.getDeclaredMethod(C0128.m3246(0, 17, 12), Integer.TYPE, byte[].class, Integer.TYPE);
                f3657 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                }
                Method declaredMethod2 = f3648.getDeclaredMethod(C0128.m3246(17, 18, 75), Integer.TYPE);
                f3646 = declaredMethod2;
                if (declaredMethod2 != null) {
                    declaredMethod2.setAccessible(true);
                }
                Method declaredMethod3 = f3648.getDeclaredMethod(C0128.m3246(35, 22, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), Integer.TYPE, byte[].class);
                f3667 = declaredMethod3;
                if (declaredMethod3 != null) {
                    declaredMethod3.setAccessible(true);
                }
                Method declaredMethod4 = f3648.getDeclaredMethod(C0128.m3246(57, 19, 122), Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f3650 = declaredMethod4;
                if (declaredMethod4 != null) {
                    declaredMethod4.setAccessible(true);
                }
                Method declaredMethod5 = f3648.getDeclaredMethod(C0128.m3246(76, 23, 48), Integer.TYPE);
                f3661 = declaredMethod5;
                if (declaredMethod5 != null) {
                    declaredMethod5.setAccessible(true);
                }
                Method declaredMethod6 = f3648.getDeclaredMethod(C0128.m3246(99, 19, 101), Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f3653 = declaredMethod6;
                if (declaredMethod6 != null) {
                    declaredMethod6.setAccessible(true);
                }
                Method declaredMethod7 = f3648.getDeclaredMethod(C0128.m3246(118, 21, 113), Integer.TYPE, byte[].class);
                f3665 = declaredMethod7;
                if (declaredMethod7 != null) {
                    declaredMethod7.setAccessible(true);
                }
                Method declaredMethod8 = f3648.getDeclaredMethod(C0128.m3246(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 20, 43), Integer.TYPE, byte[].class, byte[].class);
                f3666 = declaredMethod8;
                if (declaredMethod8 != null) {
                    declaredMethod8.setAccessible(true);
                }
                Method declaredMethod9 = f3648.getDeclaredMethod(C0128.m3246(159, 21, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), Integer.TYPE, byte[].class);
                f3647 = declaredMethod9;
                if (declaredMethod9 != null) {
                    declaredMethod9.setAccessible(true);
                }
                Method declaredMethod10 = f3648.getDeclaredMethod(C0128.m3246(RotationOptions.ROTATE_180, 19, 74), Integer.TYPE, byte[].class);
                f3656 = declaredMethod10;
                if (declaredMethod10 != null) {
                    declaredMethod10.setAccessible(true);
                }
            } catch (Exception unused) {
                try {
                    Class<? extends Preferences> cls2 = f3648;
                    String strM3246 = C0128.m3246(199, 17, 101);
                    Class<?>[] clsArr = new Class[3];
                    clsArr[c] = Long.TYPE;
                    clsArr[1] = byte[].class;
                    clsArr[2] = Integer.TYPE;
                    Method declaredMethod11 = cls2.getDeclaredMethod(strM3246, clsArr);
                    f3645 = declaredMethod11;
                    if (declaredMethod11 != null) {
                        declaredMethod11.setAccessible(true);
                    }
                    Class<? extends Preferences> cls3 = f3648;
                    String strM3247 = C0128.m3246(JfifUtil.MARKER_SOI, 18, 84);
                    Class<?>[] clsArr2 = new Class[1];
                    clsArr2[c] = Long.TYPE;
                    Method declaredMethod12 = cls3.getDeclaredMethod(strM3247, clsArr2);
                    f3651 = declaredMethod12;
                    if (declaredMethod12 != null) {
                        declaredMethod12.setAccessible(true);
                    }
                    Class<? extends Preferences> cls4 = f3648;
                    String strM3248 = C0128.m3246(234, 22, 57);
                    Class<?>[] clsArr3 = new Class[2];
                    clsArr3[c] = Long.TYPE;
                    clsArr3[1] = byte[].class;
                    Method declaredMethod13 = cls4.getDeclaredMethod(strM3248, clsArr3);
                    f3649 = declaredMethod13;
                    if (declaredMethod13 != null) {
                        declaredMethod13.setAccessible(true);
                    }
                    Class<? extends Preferences> cls5 = f3648;
                    String strM3249 = C0128.m3246(256, 19, 70);
                    Class<?>[] clsArr4 = new Class[3];
                    clsArr4[c] = Long.TYPE;
                    clsArr4[1] = Integer.TYPE;
                    clsArr4[2] = Integer.TYPE;
                    Method declaredMethod14 = cls5.getDeclaredMethod(strM3249, clsArr4);
                    f3654 = declaredMethod14;
                    if (declaredMethod14 != null) {
                        declaredMethod14.setAccessible(true);
                    }
                    Class<? extends Preferences> cls6 = f3648;
                    String strM32410 = C0128.m3246(275, 23, 93);
                    Class<?>[] clsArr5 = new Class[1];
                    clsArr5[c] = Long.TYPE;
                    Method declaredMethod15 = cls6.getDeclaredMethod(strM32410, clsArr5);
                    f3664 = declaredMethod15;
                    if (declaredMethod15 != null) {
                        declaredMethod15.setAccessible(true);
                    }
                    Class<? extends Preferences> cls7 = f3648;
                    String strM32411 = C0128.m3246(298, 19, 41);
                    Class<?>[] clsArr6 = new Class[3];
                    clsArr6[c] = Long.TYPE;
                    clsArr6[1] = Integer.TYPE;
                    clsArr6[2] = Integer.TYPE;
                    Method declaredMethod16 = cls7.getDeclaredMethod(strM32411, clsArr6);
                    f3658 = declaredMethod16;
                    if (declaredMethod16 != null) {
                        declaredMethod16.setAccessible(true);
                    }
                    Class<? extends Preferences> cls8 = f3648;
                    String strM32412 = C0128.m3246(TypedValues.AttributesType.TYPE_EASING, 21, 106);
                    Class<?>[] clsArr7 = new Class[2];
                    clsArr7[c] = Long.TYPE;
                    clsArr7[1] = byte[].class;
                    Method declaredMethod17 = cls8.getDeclaredMethod(strM32412, clsArr7);
                    f3652 = declaredMethod17;
                    if (declaredMethod17 != null) {
                        declaredMethod17.setAccessible(true);
                    }
                    Class<? extends Preferences> cls9 = f3648;
                    String strM32413 = C0128.m3246(338, 20, 94);
                    Class<?>[] clsArr8 = new Class[3];
                    clsArr8[c] = Long.TYPE;
                    clsArr8[1] = byte[].class;
                    clsArr8[2] = byte[].class;
                    Method declaredMethod18 = cls9.getDeclaredMethod(strM32413, clsArr8);
                    f3663 = declaredMethod18;
                    if (declaredMethod18 != null) {
                        declaredMethod18.setAccessible(true);
                    }
                    Class<? extends Preferences> cls10 = f3648;
                    String strM32414 = C0128.m3246(358, 21, 19);
                    Class<?>[] clsArr9 = new Class[2];
                    clsArr9[c] = Long.TYPE;
                    clsArr9[1] = byte[].class;
                    Method declaredMethod19 = cls10.getDeclaredMethod(strM32414, clsArr9);
                    f3655 = declaredMethod19;
                    if (declaredMethod19 != null) {
                        declaredMethod19.setAccessible(true);
                    }
                    Class<? extends Preferences> cls11 = f3648;
                    String strM32415 = C0128.m3246(379, 19, 125);
                    Class<?>[] clsArr10 = new Class[2];
                    clsArr10[c] = Long.TYPE;
                    clsArr10[1] = byte[].class;
                    Method declaredMethod20 = cls11.getDeclaredMethod(strM32415, clsArr10);
                    f3659 = declaredMethod20;
                    if (declaredMethod20 != null) {
                        declaredMethod20.setAccessible(true);
                    }
                    f3662 = true;
                } catch (Exception unused2) {
                }
            }
        } catch (Exception unused3) {
            c = 0;
        }
    }

    public static String m5871(int i, String str, String str2) throws C0414 {
        if (i == -2147483646) {
            return m5873(f3660, i, str, str2);
        }
        if (i == -2147483647) {
            return m5873(f3668, i, str, str2);
        }
        throw new C0414(0, C0128.m3246(398, 33, 4) + i + ")");
    }

    public static String m5873(Preferences preferences, int i, String str, String str2) throws C0414 {
        if (f3662) {
            try {
                long[] jArr = (long[]) f3645.invoke(preferences, new Long(i), m5874(str), new Integer(131097));
                if (jArr[1] != 0) {
                    return null;
                }
                byte[] bArr = (byte[]) f3649.invoke(preferences, new Long(jArr[0]), m5874(str2));
                f3651.invoke(preferences, new Long(jArr[0]));
                return bArr != null ? new String(bArr).trim() : m5872(i, str, str2);
            } catch (Exception e) {
                throw new C0414(0, C0128.m3246(PointerIconCompat.TYPE_VERTICAL_TEXT, 23, 80) + e.getMessage() + ")");
            }
        }
        try {
            int[] iArr = (int[]) f3657.invoke(preferences, new Integer(i), m5874(str), new Integer(131097));
            if (iArr[1] != 0) {
                return null;
            }
            byte[] bArr2 = (byte[]) f3667.invoke(preferences, new Integer(iArr[0]), m5874(str2));
            f3646.invoke(preferences, new Integer(iArr[0]));
            return bArr2 != null ? new String(bArr2).trim() : m5872(i, str, str2);
        } catch (Exception e2) {
            throw new C0414(0, C0128.m3246(986, 23, 112) + e2.getMessage() + ")");
        }
    }

    public static byte[] m5874(String str) {
        byte[] bArr = new byte[str.length() + 1];
        for (int i = 0; i < str.length(); i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        bArr[str.length()] = 0;
        return bArr;
    }

    public static final String m5872(int i, String str, String str2) {
        int iIndexOf;
        if (i == -2147483647) {
            str = C0128.m3246(1252, 18, 18) + str;
        }
        if (i == -2147483646) {
            str = C0128.m3246(1270, 19, 117) + str;
        }
        try {
            Process processExec = Runtime.getRuntime().exec(C0128.m3246(1289, 10, 70) + '\"' + str + C0128.m3246(1299, 5, 122) + str2);
            C0659 c0659 = new C0659(processExec.getInputStream());
            c0659.start();
            processExec.waitFor();
            c0659.join();
            try {
                String string = c0659.f3669.toString();
                int iIndexOf2 = string.indexOf(C0128.m3246(1304, 4, 44));
                if (iIndexOf2 <= 0 || (iIndexOf = string.indexOf(" ", iIndexOf2)) <= 0) {
                    return "";
                }
                String strTrim = string.substring(iIndexOf2, iIndexOf).trim();
                String strTrim2 = string.substring(iIndexOf).trim();
                if (strTrim.equals(C0128.m3246(1308, 9, 95))) {
                    return (strTrim2.startsWith("0x") || strTrim2.startsWith("0X")) ? "" + C0259.m3860(strTrim2.substring(2)) : strTrim2;
                }
                return strTrim2;
            } catch (Exception unused) {
                return " ";
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
