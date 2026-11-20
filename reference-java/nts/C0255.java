package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;
import com.yalantis.ucrop.UCrop;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Hashtable;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import sa.lg.android.locate.BuildConfig;

public class C0255 extends C0280 {

    public static final String f1246 = C0177.m3557(487, 27, 22);

    public static String f1247;

    public static void m3818(byte[] bArr) {
        bArr[0] = 79;
        bArr[1] = 49;
        bArr[2] = 106;
        bArr[3] = 99;
        bArr[4] = 79;
        bArr[5] = 71;
        bArr[6] = 82;
        bArr[7] = 106;
        bArr[8] = 108;
        bArr[9] = 110;
        bArr[10] = 116;
        bArr[11] = 90;
        bArr[12] = 104;
        bArr[13] = 50;
        bArr[14] = 90;
        bArr[15] = 90;
        C0280.m4017(bArr, (byte) 71, (byte) 86);
    }

    public static void m3823(int i, Class cls, String str) {
        if (m3819(i, cls, str != null ? (str + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR).getBytes() : null) != 0) {
            try {
                m3821(i, cls, new int[1]);
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
    }

    public static int m3819(int i, Class cls, byte[] bArr) {
        int i2;
        char c;
        int iM4012;
        if (bArr == null) {
            return 18;
        }
        byte[] bArr2 = new byte[17];
        m3818(bArr2);
        int i3 = 0;
        if (bArr.length - 1 < 128) {
            iM4012 = 17;
            i2 = 10;
        } else {
            int i4 = 0;
            i2 = 10;
            while (true) {
                if (i4 >= 64) {
                    c = '@';
                    break;
                }
                int i5 = i4 * 2;
                c = '@';
                byte b = bArr[i5];
                if (b >= 48 && b <= 57) {
                    bArr[i4] = (byte) ((b - 48) << 4);
                } else {
                    if (b < 65 || b > 70) {
                        for (int i6 = 0; i6 < 128; i6++) {
                            bArr[i6] = 0;
                        }
                        break;
                    }
                    bArr[i4] = (byte) ((b - 55) << 4);
                }
                byte b2 = bArr[i5 + 1];
                if (b2 >= 48 && b2 <= 57) {
                    bArr[i4] = (byte) (bArr[i4] + ((byte) (b2 - 48)));
                } else {
                    if (b2 < 65 || b2 > 70) {
                        for (int i7 = 0; i7 < 128; i7++) {
                            bArr[i7] = 0;
                        }
                        break;
                    }
                    bArr[i4] = (byte) (bArr[i4] + ((byte) (b2 - 55)));
                }
                i4++;
            }
            bArr[c] = 0;
            if (bArr[0] == 0) {
                iM4012 = 18;
            } else {
                byte[] bArr3 = new byte[40];
                byte[] bArr4 = new byte[9];
                byte[] bArr5 = new byte[16];
                for (int i8 = 0; i8 < 40; i8++) {
                    bArr3[i8] = bArr[i8];
                }
                for (int i9 = 40; i9 < 49; i9++) {
                    bArr4[i9 - 40] = bArr[i9];
                }
                for (int i10 = 50; i10 < 62; i10++) {
                    bArr5[i10 - 50] = bArr[i10];
                }
                int iM4014 = C0280.m4014(bArr3, bArr4, bArr5, bArr2);
                if (iM4014 == 0) {
                    char cM4006 = (char) C0280.m4006(bArr[5]);
                    if (cM4006 == 'F') {
                        if (i == 0) {
                            iM4012 = iM4014;
                        } else if (i != (((bArr[6] - 48) * 10) + bArr[7]) - 48) {
                            iM4012 = 11;
                        } else {
                            iM4012 = 0;
                        }
                    } else if (cM4006 == 'V') {
                        iM4012 = 0;
                    } else if (cM4006 == 'X') {
                        byte[] bytes = C0280.m4015().getBytes();
                        int i11 = 0;
                        while (true) {
                            if (i11 < 8) {
                                if (bytes[i11] != bArr[i11 + 40]) {
                                    iM4012 = 20;
                                    break;
                                }
                                i11++;
                            } else {
                                iM4012 = C0280.m4012(bArr);
                                break;
                            }
                        }
                    } else if (cM4006 != 'Z') {
                        switch (cM4006) {
                            case 'A':
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT:
                            case BuildConfig.VERSION_CODE:
                                iM4012 = 0;
                                break;
                            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL:
                                if (i == 0) {
                                    iM4012 = iM4014;
                                } else if (i != (((bArr[6] - 48) * 10) + bArr[7]) - 48) {
                                    iM4012 = 11;
                                } else {
                                    iM4012 = 0;
                                }
                                break;
                            default:
                                iM4012 = 10;
                                break;
                        }
                    } else {
                        iM4012 = C0280.m4012(bArr);
                    }
                } else {
                    iM4012 = iM4014;
                }
            }
        }
        if (iM4012 == 0) {
            iM4012 = (((char) C0280.m4006(bArr[5])) == 'V' || ((char) C0280.m4006(bArr[3])) == '2') ? 0 : 21;
        }
        if (iM4012 != 0) {
            return iM4012;
        }
        if (C0280.m4019(C0280.m4006(bArr[5])) && 8277 > C0280.m4009(bArr)) {
            i3 = 13;
        }
        if (i3 == 0) {
            return i3;
        }
        int iM4009 = C0280.m4009(bArr);
        char c2 = (char) (i3 + 65);
        String strM4015 = C0280.m4015();
        String strM3557 = C0177.m3557(48, 25, 48);
        if (cls != null) {
            strM3557 = C0663.m5892(strM3557, " (").append(cls.getName()).append(C0177.m3557(73, 7, 21)).toString();
        }
        throw new RuntimeException(C0663.m5891(strM3557).append(C0177.m3557(80, 92, 70)).append(iM4009).append(C0177.m3557(172, 40, 122)).append(com.nsoftware.ipworks3ds.sdk.BuildConfig.VERSION_CODE).append(C0177.m3557(212, i2, 57)).append(C0177.m3557(222, 86, 24)).append(C0177.m3557(308, 62, 91)).append(c2).append(C0177.m3557(370, 9, 36)).append(strM4015).append("].").toString());
    }

    public static String m3822(String str, String str2) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        while (i < length && str2.indexOf(charArray[i]) > -1) {
            i++;
        }
        while (i < length && str2.indexOf(charArray[length - 1]) > -1) {
            length--;
        }
        return (i > 0 || length < charArray.length) ? str.substring(i, length) : str;
    }

    public static int m3820(String str, byte[] bArr, int i, String[] strArr, byte[][] bArr2) throws IOException {
        char c;
        InputStreamReader inputStreamReader;
        int i2;
        char c2;
        String absolutePath;
        InputStreamReader fileReader;
        String line;
        int iM4014;
        Class cls;
        byte[] bytes;
        InputStream resourceAsStream;
        byte[] bytes2 = new byte[20];
        bytes2[0] = 42;
        bytes2[1] = 0;
        String str2 = f1247;
        if (str2 != null && new File(str2).exists()) {
            absolutePath = f1247;
            c = 1;
            i2 = 6;
            c2 = 5;
            inputStreamReader = null;
        } else {
            c = 1;
            inputStreamReader = null;
            String string = C0663.m5891("/").append(C0255.class.getName().replace(CoreConstants.DOT, '/')).append(C0177.m3557(388, 6, 29)).toString();
            URL resource = C0255.class.getResource(string);
            if (resource == null) {
                f1247 = null;
                i2 = 6;
                c2 = 5;
            } else {
                String file = resource.getFile();
                int i3 = file.startsWith(C0177.m3557(394, 5, SyslogConstants.LOG_CLOCK)) ? 5 : 0;
                int iIndexOf = file.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = file.length();
                }
                i2 = 6;
                c2 = 5;
                int iLastIndexOf = file.lastIndexOf(C0177.m3557(399, 14, 23), iIndexOf);
                if (iLastIndexOf < 0) {
                    iLastIndexOf = file.lastIndexOf(C0177.m3557(413, 10, 36), file.length());
                }
                if (iLastIndexOf < 0) {
                    iLastIndexOf = file.lastIndexOf(string, file.length());
                }
                if (iLastIndexOf < 0) {
                    iLastIndexOf = file.length();
                }
                int iLastIndexOf2 = file.lastIndexOf("/", iLastIndexOf);
                if (iLastIndexOf2 < 0) {
                    f1247 = null;
                } else {
                    File file2 = new File(URLDecoder.decode(C0663.m5891(file.substring(i3, iLastIndexOf2)).append(C0177.m3557(TypedValues.CycleType.TYPE_WAVE_PERIOD, 10, 82)).toString()));
                    if (file2.exists()) {
                        absolutePath = file2.getAbsolutePath();
                        f1247 = absolutePath;
                    } else {
                        String property = System.getProperty(C0177.m3557(433, 9, 64));
                        if (property != null) {
                            if (!property.endsWith(File.separator)) {
                                property = C0663.m5891(property).append(File.separator).toString();
                            }
                            File file3 = new File(URLDecoder.decode(C0663.m5891(property).append(C0177.m3557(442, 10, 18)).append(File.separator).append(C0177.m3557(452, 9, 101)).toString()));
                            if (file3.exists()) {
                                absolutePath = file3.getAbsolutePath();
                                f1247 = absolutePath;
                            }
                        }
                        f1247 = null;
                    }
                }
            }
            absolutePath = null;
        }
        if (absolutePath == null) {
            ClassLoader classLoader = C0255.class.getClassLoader();
            fileReader = (classLoader == null || (resourceAsStream = classLoader.getResourceAsStream(C0177.m3557(379, 9, 114))) == null) ? inputStreamReader : new InputStreamReader(resourceAsStream);
        } else {
            fileReader = new FileReader(absolutePath);
        }
        if (fileReader == null) {
            return i2;
        }
        Hashtable hashtable = new Hashtable();
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        try {
            String str3 = C0177.m3557(461, 20, 42) + str + "]";
            do {
                line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
            } while (!line.equals(str3));
            if (line == null) {
                bufferedReader.close();
                return i2;
            }
            while (true) {
                String line2 = bufferedReader.readLine();
                if (line2 == null || line2.length() == 0) {
                    break;
                    break;
                }
                int iIndexOf2 = line2.indexOf("=");
                hashtable.put(m3822(line2.substring(0, iIndexOf2), "\""), m3822(line2.substring(iIndexOf2 + 1), "\""));
            }
            bufferedReader.close();
            if (!hashtable.containsKey("@")) {
                return i2;
            }
            strArr[0] = (String) hashtable.get("@");
            byte[] bytes3 = (strArr[0] + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR).getBytes();
            bArr2[0] = bytes3;
            C0280.m4010(bytes3, 0);
            byte[] bArr3 = bArr2[0];
            if (bArr3[0] == 0) {
                return 7;
            }
            char c3 = (char) bArr3[c2];
            if (c3 != 'M' && c3 != 'P' && c3 != 'V' && c3 != 'X' && c3 != 'Z' && c3 != 'S' && c3 != 'T') {
                switch (c3) {
                    case 'A':
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT:
                    case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL:
                    case BuildConfig.VERSION_CODE:
                    case UCrop.REQUEST_CROP:
                    case CoreConstants.OOS_RESET_FREQUENCY:
                    case 'G':
                        break;
                    default:
                        return 10;
                }
            }
            if (hashtable.containsKey(C0177.m3557(481, 3, 106))) {
                String str4 = (String) hashtable.get(C0177.m3557(484, 3, 115));
                if (str4 != null) {
                    cls = inputStreamReader;
                    bytes = (str4 + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR).getBytes();
                } else {
                    InputStreamReader inputStreamReader2 = inputStreamReader;
                    cls = inputStreamReader2;
                    bytes = inputStreamReader2;
                }
                if (m3819(i, cls, bytes) == 0) {
                    return 0;
                }
            }
            char c4 = (char) bArr2[0][c2];
            if (c4 == 'B' || c4 == 'Z') {
                bytes2[0] = 42;
                bytes2[c] = 0;
            } else {
                bytes2 = C0280.m4015().getBytes();
            }
            try {
                String strM4016 = C0280.m4016(bytes2, 0, 8);
                if (strM4016.charAt(0) == '*') {
                    strM4016 = "*";
                }
                String str5 = (String) hashtable.get(strM4016);
                if (str5 == null) {
                    return 8;
                }
                byte[] bytes4 = (str5 + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR).getBytes();
                if (bytes2[0] == 42) {
                    iM4014 = C0280.m4014(bArr2[0], null, bytes4, bArr);
                } else {
                    iM4014 = C0280.m4014(bArr2[0], bytes2, bytes4, bArr);
                }
                if (iM4014 == 0) {
                    byte[] bArr4 = bArr2[0];
                    iM4014 = (((char) C0280.m4006(bArr4[c2])) == 'V' || ((char) C0280.m4006(bArr4[3])) == '2') ? 0 : 21;
                    if (iM4014 != 0) {
                        return iM4014;
                    }
                }
                if (iM4014 == 0) {
                    byte[] bArr5 = bArr2[0];
                    int i4 = (!C0280.m4019(C0280.m4006(bArr5[c2])) || 8277 <= C0280.m4009(bArr5)) ? 0 : 14;
                    if (i4 != 0) {
                        return i4;
                    }
                    iM4014 = i4;
                }
                if (iM4014 != 0) {
                    return 8;
                }
                return C0280.m4012(bArr2[0]);
            } catch (Exception unused) {
                return 8;
            }
        } catch (Throwable th) {
            bufferedReader.close();
            throw th;
        }
    }

    public static String m3821(int i, Class cls, int[] iArr) throws Exception {
        int i2;
        byte[] bArr;
        String string;
        String[] strArr = new String[1];
        String strM3557 = C0177.m3557(SyslogConstants.SYSLOG_PORT, 25, 28);
        if (cls != null) {
            strM3557 = C0663.m5892(strM3557, " (").append(cls.getName()).append(C0177.m3557(539, 11, 90)).toString();
        }
        String strM5880 = C0663.m5880(strM3557, ". ");
        byte[] bArr2 = {67, 73, 83, 103, 101, 114, 104, 98, 67, 116, 102, 109, 100, 50, 78, 65};
        C0280.m4017(bArr2, (byte) 71, (byte) 86);
        byte[][] bArr3 = new byte[1][];
        if (i == -1) {
            iArr[0] = m3820(f1246, bArr2, i, strArr, bArr3);
        } else {
            String str = f1246;
            int iM3820 = m3820(str, bArr2, i, strArr, bArr3);
            if (iM3820 == 0 && (bArr = bArr3[0]) != null && C0280.m4007(bArr[5])) {
                byte[] bArr4 = bArr3[0];
                if (i != (((bArr4[6] - 48) * 10) + bArr4[7]) - 48) {
                    int iM3821 = m3820(str + "\\" + i, bArr2, i, strArr, bArr3);
                    if (iM3821 != 0) {
                        if (iM3821 == 6) {
                            i2 = 11;
                        } else {
                            i2 = iM3821;
                        }
                    } else if (C0280.m4007(bArr3[0][5])) {
                        byte[] bArr5 = bArr3[0];
                        if (i != (((bArr5[6] - 48) * 10) + bArr5[7]) - 48) {
                            i2 = 11;
                        } else {
                            i2 = 0;
                        }
                    } else {
                        i2 = 10;
                    }
                } else {
                    i2 = 0;
                }
            } else {
                i2 = iM3820;
            }
            iArr[0] = i2;
        }
        int i3 = iArr[0];
        if (i3 != 0) {
            if (i3 == 8) {
                string = C0663.m5891(strM5880).append(C0177.m3557(550, 171, 47)).toString();
            } else if (i3 == 9) {
                string = C0663.m5891(strM5880).append(C0177.m3557(721, 211, 66)).toString();
            } else if (i3 != 14) {
                string = C0663.m5891(strM5880).append(C0177.m3557(1155, 172, 25)).toString();
            } else {
                string = C0663.m5891(strM5880).append(C0177.m3557(932, 100, 53)).append(C0280.m4009(bArr3[0])).append(C0177.m3557(1032, 39, 97)).append(com.nsoftware.ipworks3ds.sdk.BuildConfig.VERSION_CODE).append(C0177.m3557(1071, 84, 52)).toString();
            }
            throw new RuntimeException(C0663.m5891(string).append(C0177.m3557(1327, 8, 114)).append((char) (iArr[0] + 65)).append(C0177.m3557(1335, 10, 65)).append(C0280.m4015()).append("].").toString());
        }
        if (C0280.m4011(bArr3[0][5])) {
            return null;
        }
        char c = (char) bArr3[0][5];
        if (c != 'F' && c != 'V' && c != 'Z') {
            switch (c) {
                case 'A':
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT:
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL:
                case BuildConfig.VERSION_CODE:
                    break;
                default:
                    return null;
            }
        }
        byte[] bArr6 = new byte[16];
        m3818(bArr6);
        byte[] bArr7 = new byte[129];
        byte[] bytes = (strArr[0] + C0177.m3557(1372, 44, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)).getBytes();
        byte[] bytes2 = C0280.m4015().getBytes();
        bArr7[0] = 0;
        C0280.m4010(bytes, 0);
        if (bytes[0] != 0) {
            byte[] bArrM4020 = C0280.m4020(bytes, bytes2, bArr6);
            int i4 = 0;
            while (true) {
                if (i4 < 40) {
                    bArr7[i4] = bytes[i4];
                    i4++;
                } else {
                    for (int i5 = 40; i5 < 48; i5++) {
                        bArr7[i5] = bytes2[i5 - 40];
                    }
                    for (int i6 = 50; i6 < 62; i6++) {
                        bArr7[i6] = bArrM4020[i6 - 50];
                    }
                    byte[] bArr8 = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
                    for (int i7 = 63; i7 >= 0; i7--) {
                        byte b = bArr7[i7];
                        int i8 = i7 * 2;
                        bArr7[i8 + 1] = bArr8[b & Ascii.SI];
                        bArr7[i8] = bArr8[(byte) (b >> 4)];
                    }
                    bArr7[128] = 0;
                }
            }
        }
        return C0280.m4016(bArr7, 0, 128);
    }
}
