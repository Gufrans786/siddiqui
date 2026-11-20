package nts;

import androidx.appcompat.app.AppCompatDelegate;
import com.google.common.base.Ascii;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import com.transistorsoft.locationmanager.logger.TSLog;
import kotlin.jvm.internal.CharCompanionObject;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0387 {

    public StringBuffer f1991 = new StringBuffer();

    public static char m4526(byte b) {
        return (char) (b & 255);
    }

    public boolean equals(Object obj) {
        return obj instanceof String ? m4552((String) obj) : super.equals(obj);
    }

    public String toString() {
        return m4571();
    }

    public int m4531(String str) {
        if (str == null) {
            str = "";
        }
        this.f1991.setLength(0);
        this.f1991.append(str);
        return 0;
    }

    public int m4534(int i) {
        m4531(this.f1991.substring(i));
        return 0;
    }

    public int m4537(byte[] bArr, int i) {
        if (bArr == null) {
            m4541();
            return 0;
        }
        if (i >= 0) {
            m4531(m4527(bArr, 0, i));
        }
        return 0;
    }

    public int m4541() {
        this.f1991.setLength(0);
        return 0;
    }

    public int m4543(byte[] bArr) {
        if (bArr == null) {
            m4541();
            return 0;
        }
        m4531(m4527(bArr, 0, bArr.length));
        return 0;
    }

    public int m4549(String str, int i) {
        if (str == null) {
            str = "";
        }
        if (i >= 0) {
            m4531(str.substring(0, i));
        }
        return 0;
    }

    public int m4555() {
        int iM4533 = 0;
        while (m4546(iM4533) == ' ') {
            iM4533++;
        }
        if (iM4533 > m4533()) {
            iM4533 = m4533();
        }
        m4531(this.f1991.substring(iM4533));
        int iM4534 = m4533();
        while (iM4534 > 0 && m4546(iM4534 - 1) == ' ') {
            iM4534--;
        }
        return m4530(iM4534);
    }

    public int m4563(String str) {
        if (str == null) {
            return 0;
        }
        this.f1991.append(str);
        return 0;
    }

    public static byte[] m4525(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public boolean m4535(String str) {
        if (str == null) {
            str = "";
        }
        return m4571().startsWith(str);
    }

    public int m4550(String str, Object... objArr) {
        m4531(m4524(str, objArr));
        return 0;
    }

    public int m4564(String str, int i) {
        if (i > 0) {
            this.f1991.append(str.substring(0, i));
        }
        return 0;
    }

    public void m4532() {
        int length = this.f1991.length();
        for (int i = 0; i < length; i++) {
            this.f1991.setCharAt(i, (char) 0);
        }
        this.f1991.delete(0, length);
    }

    public int m4533() {
        return this.f1991.length();
    }

    public boolean m4539(String str) {
        if (str == null) {
            str = "";
        }
        return C0259.m3872(m4571(), str);
    }

    public int m4547(char c) {
        this.f1991.append(c);
        return 0;
    }

    public int m4568(byte[] bArr) {
        if (bArr != null) {
            this.f1991.append(m4527(bArr, 0, bArr.length));
        }
        return 0;
    }

    public boolean m4540(byte[] bArr) {
        if (bArr == null && m4533() == 0) {
            return true;
        }
        return C0301.m4164(m4554(), bArr);
    }

    public int m4542(String str) {
        return this.f1991.indexOf(str);
    }

    public int m4548(int i, byte b) {
        if (m4533() <= i) {
            m4530(i + 1);
        }
        this.f1991.setCharAt(i, m4526(b));
        return 0;
    }

    public long m4544() {
        long j;
        String strM4571 = m4571();
        long jCharAt = 0;
        if (strM4571 == null || strM4571.length() == 0) {
            return 0L;
        }
        int i = 0;
        if ('-' == strM4571.charAt(0)) {
            i = 1;
            j = -1;
        } else {
            j = 1;
        }
        while (i < strM4571.length() && strM4571.charAt(i) >= '0' && strM4571.charAt(i) <= '9') {
            jCharAt = (jCharAt * 10) + ((long) (strM4571.charAt(i) - '0'));
            i++;
        }
        return j * jCharAt;
    }

    public int m4536() {
        int i;
        String strM4571 = m4571();
        int iCharAt = 0;
        if (strM4571 == null || strM4571.length() == 0) {
            return 0;
        }
        int i2 = 1;
        if ('-' == strM4571.charAt(0)) {
            i = -1;
        } else {
            i = 1;
            i2 = 0;
        }
        while (i2 < strM4571.length() && strM4571.charAt(i2) >= '0' && strM4571.charAt(i2) <= '9') {
            iCharAt = (iCharAt * 10) + (strM4571.charAt(i2) - '0');
            i2++;
        }
        return i * iCharAt;
    }

    public boolean m4552(String str) {
        if (str == null) {
            str = "";
        }
        return m4571().equals(str);
    }

    public int m4569(byte[] bArr, int i) {
        if (i > 0) {
            this.f1991.append(m4527(bArr, 0, i));
        }
        return 0;
    }

    public boolean m4553(byte[] bArr, int i) {
        if (bArr == null && m4533() == 0) {
            return true;
        }
        if (m4533() != i || bArr.length < i) {
            return false;
        }
        return C0301.m4164(m4554(), C0259.m3865(bArr, 0, i));
    }

    public int m4558(int i) {
        this.f1991.append("" + i);
        return 0;
    }

    public int m4530(int i) {
        if (m4533() == i) {
            return 0;
        }
        if (m4533() > i) {
            m4561(0, i);
            return 0;
        }
        for (int iM4533 = m4533(); iM4533 < i; iM4533++) {
            m4547(CardNumberHelper.DIVIDER);
        }
        return 0;
    }

    public int m4562(long j) {
        this.f1991.append("" + j);
        return 0;
    }

    public int m4566(String str, Object... objArr) {
        m4563(m4524(str, objArr));
        return 0;
    }

    public byte[] m4554() {
        return m4525(m4571());
    }

    public int m4560(int i, char c) {
        while (i > 0) {
            this.f1991.append(c);
            i--;
        }
        return 0;
    }

    public char m4546(int i) {
        if (i >= m4533()) {
            return (char) 0;
        }
        return m4571().charAt(i);
    }

    public int m4556(byte b) {
        this.f1991.append(m4526(b));
        return 0;
    }

    public int m4561(int i, int i2) {
        m4531(this.f1991.substring(i, i2));
        return 0;
    }

    public int m4551(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        if (bArr.length != 0) {
            int i = 16;
            byte[] bArr2 = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
            byte[] bArrM3902 = C0259.m3902(C0642.m5839(0, 67, 59));
            byte[] bArrM3865 = C0259.m3865(bArrM3902, 0, bArrM3902.length);
            int i2 = ((length + 15) / 16) * 16;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = 0;
                while (i4 < i) {
                    if (i3 < length) {
                        byte b = bArr[i3];
                        int i5 = i4 * 3;
                        int i6 = i4 + 51;
                        bArrM3865[i5] = bArr2[(b & 255) >> 4];
                        bArrM3865[i5 + 1] = bArr2[b & Ascii.SI];
                        if (b < 32 || b > 126) {
                            b = 46;
                        }
                        bArrM3865[i6] = b;
                    }
                    i4++;
                    i3++;
                    i = 16;
                }
                if (!C0259.m3856("")) {
                    m4563("");
                }
                m4563(C0259.m3887(i3 - 16, 4, true));
                m4563(TSLog.TAB);
                m4563(C0259.m3892(bArrM3865));
                if (i3 < length) {
                    m4563("\r\n");
                }
                bArrM3865 = C0259.m3865(bArrM3902, 0, bArrM3902.length);
                i = 16;
            }
        }
        return 0;
    }

    public int m4557(char c) {
        return this.f1991.indexOf("" + c);
    }

    public byte[] m4545(int i) {
        if (i < 0 || i >= m4533()) {
            return null;
        }
        return m4525(m4538(i));
    }

    public int m4567(C0387 c0387) {
        m4549(c0387.m4571(), c0387.m4533());
        return 0;
    }

    public String m4538(int i) {
        return (i < 0 || i >= m4533()) ? "" : this.f1991.substring(i);
    }

    public int m4565(String str, String str2) {
        if (str != null && str.length() != 0) {
            if (str2 == null) {
                str2 = "";
            }
            int iIndexOf = 0;
            while (iIndexOf >= 0) {
                iIndexOf = this.f1991.indexOf(str, iIndexOf);
                if (iIndexOf >= 0) {
                    this.f1991.replace(iIndexOf, str.length() + iIndexOf, str2);
                    iIndexOf += str2.length();
                }
            }
        }
        return 0;
    }

    public static java.lang.String m4524(java.lang.String r18, java.lang.Object... r19) throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0387.m4524(java.lang.String, java.lang.Object[]):java.lang.String");
    }

    public String m4571() {
        return this.f1991.toString();
    }

    public int m4559(int i, byte b) {
        char cM4526 = m4526(b);
        while (i > 0) {
            this.f1991.append(cM4526);
            i--;
        }
        return 0;
    }

    public int m4570(byte[] bArr, int i, int i2) {
        m4563(C0259.m3882(C0259.m3901(8, bArr, i, i2, true)));
        return 0;
    }

    public static String m4529(char c, int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(c);
        }
        return sb.toString();
    }

    public static long m4528(Object obj, boolean z) {
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            return z ? ((long) iIntValue) & 4294967295L : iIntValue;
        }
        if (obj instanceof Short) {
            short sShortValue = ((Short) obj).shortValue();
            return z ? ((long) sShortValue) & WebSocketProtocol.PAYLOAD_SHORT_MAX : sShortValue;
        }
        if (obj instanceof Character) {
            char cCharValue = ((Character) obj).charValue();
            return z ? cCharValue & CharCompanionObject.MAX_VALUE : cCharValue;
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof Byte) {
            return ((Byte) obj).byteValue() & 255;
        }
        throw new C0414(0, C0642.m5839(CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 23, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR) + obj.toString() + "'");
    }

    public static String m4527(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < i + i2 && i3 < bArr.length; i3++) {
            stringBuffer.append(m4526(bArr[i3]));
        }
        return stringBuffer.toString();
    }
}
