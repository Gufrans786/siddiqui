package nts;

import androidx.appcompat.app.AppCompatDelegate;
import java.security.SecureRandom;

public class C0362 extends AbstractC0264 {

    public static SecureRandom f1901;

    public static SecureRandom f1902;

    public String f1903;

    public C0362(String str) {
        this.f1903 = str.toUpperCase();
    }

    public static byte[] m4426(int i) {
        if (f1901 == null) {
            f1901 = m4425(C0465.m5122(0, 10, 127));
        }
        byte[] bArr = new byte[i];
        f1901.nextBytes(bArr);
        return bArr;
    }

    @Override
    public void mo3180(byte[] bArr) {
        SecureRandom secureRandom;
        if (this.f1903.equals(C0465.m5122(17, 10, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
            if (f1901 == null) {
                f1901 = m4425(C0465.m5122(27, 10, 24));
            }
            secureRandom = f1901;
        } else {
            if (f1902 == null) {
                f1902 = m4425(C0465.m5122(37, 7, 22));
            }
            secureRandom = f1902;
        }
        secureRandom.nextBytes(bArr);
    }

    public static SecureRandom m4425(String str) {
        try {
            return SecureRandom.getInstance(str, C0465.m5122(44, 6, 20));
        } catch (Exception e) {
            throw new C0414(e.getMessage());
        }
    }
}
