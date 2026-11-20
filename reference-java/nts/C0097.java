package nts;

import androidx.appcompat.app.AppCompatDelegate;
import com.facebook.imageutils.JfifUtil;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class C0097 extends AbstractC0313 {

    public KeyGenerator f86 = null;

    public String f87;

    public String f88;

    public C0097(String str, String str2) {
        String upperCase = str.toUpperCase();
        this.f87 = upperCase;
        this.f88 = str2;
        if (upperCase.equals(C0465.m5121(188, 3, 34))) {
            this.f1687 = new C0509[]{new C0509(128, 256, 64)};
            this.f1684 = new C0509[]{new C0509(128, 128, 0)};
            this.f1689 = 128;
            this.f1685 = 128;
            this.f1691 = 256;
            this.f1690 = 1;
            this.f1686 = 1;
            return;
        }
        if (this.f87.equals(C0465.m5121(191, 4, 10)) || this.f87.equals(C0465.m5121(195, 9, 112))) {
            this.f87 = C0465.m5121(204, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
            this.f1687 = new C0509[]{new C0509(128, 192, 64)};
            this.f1691 = 128;
            this.f1689 = 64;
            this.f1685 = 64;
        }
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0362.m4426(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        if (this.f86 == null) {
            try {
                String str = this.f88;
                if (str != null) {
                    this.f86 = KeyGenerator.getInstance(this.f87, str);
                } else {
                    this.f86 = KeyGenerator.getInstance(this.f87);
                }
                this.f86.init(this.f1691);
            } catch (Exception e) {
                throw new C0537(e.getMessage());
            }
        }
        mo3267(this.f86.generateKey().getEncoded());
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0098(this, bArr, bArr2, this.f1690, this.f1686, this.f1685, this.f87, this.f88);
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0099(this, bArr, bArr2, this.f1690, this.f1686, this.f1685, this.f87, this.f88);
    }

    public static String m3114(int i, String str) throws C0537 {
        if (i == 1) {
            return C0465.m5121(228, 9, 97);
        }
        if (i == 2) {
            return str == null ? C0465.m5121(237, 12, 82) : C0465.m5121(249, 12, 59);
        }
        if (i == 3) {
            throw new C0537(C0465.m5121(290, 21, 127));
        }
        if (i != 4) {
            return i != 5 ? "" : C0465.m5121(261, 17, 17);
        }
        return C0465.m5121(278, 12, 69);
    }

    public class C0098 extends AbstractC0527 {

        public String f89;

        public String f90;

        public Cipher f91;

        public String f92;

        public byte[] f93;

        public C0098(C0097 c0097, byte[] bArr, byte[] bArr2, int i, int i2, int i3, String str, String str2) throws C0537 {
            super(bArr2, 16, 16, i, i2, i3);
            this.f91 = null;
            this.f92 = str;
            this.f89 = C0663.m5892(str, "/").append(C0097.m3113(i)).append("/").append(C0097.m3114(i2, this.f90)).toString();
            this.f93 = bArr;
            this.f90 = str2;
        }

        @Override
        public void mo3119() throws Exception {
            throw new C0414(C0465.m5121(311, 29, 69));
        }

        public final void m3120() throws Exception {
            if (this.f91 != null) {
                return;
            }
            String str = this.f90;
            if (str != null) {
                this.f91 = Cipher.getInstance(this.f89, str);
            } else {
                this.f91 = Cipher.getInstance(this.f89);
            }
            this.f91.init(1, new SecretKeySpec(this.f93, this.f92), this.f3365 == 2 ? null : new IvParameterSpec(this.f3364));
        }

        @Override
        public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            m3120();
            byte[] bArrUpdate = this.f91.update(bArr, i, i2);
            if (bArrUpdate == null) {
                return 0;
            }
            System.arraycopy(bArrUpdate, 0, bArr2, i3, bArrUpdate.length);
            return bArrUpdate.length;
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            m3120();
            return this.f91.doFinal(bArr, i, i2);
        }
    }

    public class C0099 extends AbstractC0606 {

        public String f94;

        public String f95;

        public Cipher f96;

        public String f97;

        public byte[] f98;

        public C0099(C0097 c0097, byte[] bArr, byte[] bArr2, int i, int i2, int i3, String str, String str2) throws C0537 {
            super(bArr2, 16, 16, i, i2, i3);
            this.f96 = null;
            this.f97 = str;
            this.f94 = C0663.m5892(str, "/").append(C0097.m3113(i)).append("/").append(C0097.m3114(i2, this.f95)).toString();
            this.f98 = bArr;
            this.f95 = str2;
        }

        @Override
        public void mo3123() throws Exception {
            throw new C0414(C0465.m5121(340, 29, 121));
        }

        public final void m3124() throws Exception {
            if (this.f96 != null) {
                return;
            }
            String str = this.f95;
            if (str != null) {
                this.f96 = Cipher.getInstance(this.f94, str);
            } else {
                this.f96 = Cipher.getInstance(this.f94);
            }
            this.f96.init(2, new SecretKeySpec(this.f98, this.f97), this.f3365 == 2 ? null : new IvParameterSpec(this.f3364));
        }

        @Override
        public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            m3124();
            byte[] bArrUpdate = this.f96.update(bArr, i, i2);
            if (bArrUpdate == null) {
                return 0;
            }
            System.arraycopy(bArrUpdate, 0, bArr2, i3, bArrUpdate.length);
            return bArrUpdate.length;
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            m3124();
            return this.f96.doFinal(bArr, i, i2);
        }
    }

    public static String m3113(int i) {
        switch (i) {
            case 1:
                return C0465.m5121(210, 3, 10);
            case 2:
                return C0465.m5121(213, 3, 95);
            case 3:
                return C0465.m5121(JfifUtil.MARKER_SOI, 3, 39);
            case 4:
                return C0465.m5121(219, 3, 46);
            case 5:
                return C0465.m5121(222, 3, 71);
            case 6:
                return C0465.m5121(JfifUtil.MARKER_APP1, 3, 48);
            default:
                return "";
        }
    }
}
