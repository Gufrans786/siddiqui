package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imageutils.JfifUtil;
import com.facebook.imageutils.TiffUtil;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class C0191 extends AbstractC0373 {

    public String f691;

    public String f692;

    public C0191(String str, String str2) throws C0537 {
        this.f1684 = new C0509[]{new C0509(128, 128, 0)};
        this.f1687 = new C0509[]{new C0509(128, 256, 8)};
        this.f1952 = new C0509[]{new C0509(96, 128, 8)};
        this.f1691 = 256;
        this.f1689 = 128;
        this.f1685 = 128;
        this.f691 = str;
        this.f692 = str2;
        m4469(96);
    }

    public static void m3655() throws C0537 {
        String property = System.getProperty(C0164.m3488(262, 12, 53));
        if (property.startsWith("1.")) {
            property = C0259.m3888(property, 2);
        }
        int iIndexOf = property.indexOf(46);
        int iIndexOf2 = property.indexOf(45);
        if (iIndexOf <= -1) {
            iIndexOf = iIndexOf2 > -1 ? iIndexOf2 : 1;
        }
        if (Integer.parseInt(property.substring(0, iIndexOf)) <= 6) {
            throw new C0537(C0164.m3488(TiffUtil.TIFF_TAG_ORIENTATION, 41, 110));
        }
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0362.m4426(12));
    }

    @Override
    public void mo3116() throws C0537 {
        int i = this.f1691 / 8;
        if (C0362.f1902 == null) {
            C0362.f1902 = C0362.m4425(C0465.m5122(10, 7, 105));
        }
        byte[] bArr = new byte[i];
        C0362.f1902.nextBytes(bArr);
        mo3267(bArr);
    }

    @Override
    public InterfaceC0614 mo3656(byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537 {
        m3655();
        return new C0192((this.f691.equals(C0164.m3488(204, 6, 112)) || this.f691.equals(C0164.m3488(210, 7, 61)) || this.f691.equals(C0164.m3488(JfifUtil.MARKER_EOI, 7, 86))) ? new SecretKeySpec(bArr, C0164.m3488(224, 3, RNMBXStyleValue.InterpolationModeIdentity)) : new SecretKeySpec(bArr, C0164.m3488(227, 6, 26)), bArr2, bArr3, this.f1951, this.f1685, this.f692);
    }

    public class C0192 extends AbstractC0527 implements InterfaceC0614 {

        public byte[] f694;

        public SecretKey f695;

        public Cipher f696;

        public byte[] f697;

        public String f698;

        public C0192(SecretKey secretKey, byte[] bArr, byte[] bArr2, int i, int i2, String str) throws C0537 {
            super(bArr, 16, 16, 1, 1, i2);
            this.f697 = null;
            this.f694 = null;
            this.f695 = null;
            this.f3374 = true;
            this.f3373 = true;
            this.f695 = secretKey;
            this.f697 = bArr;
            this.f694 = bArr2;
            this.f698 = str;
            C0191.this.m4469(i);
            this.f696 = null;
        }

        @Override
        public void mo3119() throws Exception {
            throw new C0537(C0164.m3488(315, 29, 17));
        }

        public int m3658(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            String strM3488;
            String strM3489;
            if (this.f696 == null) {
                if (C0191.this.f691.equals(C0164.m3488(344, 7, 77))) {
                    strM3488 = C0164.m3488(351, 17, 63);
                    strM3489 = C0164.m3488(368, 34, 88);
                } else {
                    strM3488 = C0164.m3488(TypedValues.CycleType.TYPE_VISIBILITY, 17, 105);
                    strM3489 = C0164.m3488(419, 34, 88);
                }
                String str = this.f698;
                if (str == null) {
                    this.f696 = Cipher.getInstance(strM3488);
                } else {
                    this.f696 = Cipher.getInstance(strM3488, str);
                }
                this.f696.init(1, this.f695, (AlgorithmParameterSpec) Class.forName(strM3489).getConstructor(Integer.TYPE, byte[].class).newInstance(Integer.valueOf(C0191.this.f1951), this.f697));
                Cipher.class.getMethod(C0164.m3488(453, 9, 79), byte[].class).invoke(this.f696, this.f694);
            }
            return this.f696.update(bArr, i, i2, bArr2, i3);
        }

        @Override
        public void mo3659(byte[] bArr) {
        }

        @Override
        public void mo3660(byte[] bArr, byte[] bArr2, int i) throws C0537 {
            this.f697 = bArr;
            this.f694 = bArr2;
            C0191.this.m4469(i);
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            if (i + i2 <= bArr.length) {
                byte[] bArr2 = new byte[i2];
                int iM3658 = m3658(bArr, i, i2, bArr2, 0);
                C0191.this.f1949 = this.f696.doFinal();
                this.f696 = null;
                C0191 c0191 = C0191.this;
                byte[] bArr3 = c0191.f1949;
                int length = bArr3.length - (c0191.f1951 / 8);
                int i3 = i2 - iM3658;
                if (length != i3) {
                    throw new Exception(C0164.m3488(520, 17, 5));
                }
                if (iM3658 < i2) {
                    System.arraycopy(bArr3, 0, bArr2, iM3658, i3);
                    C0191 c0192 = C0191.this;
                    byte[] bArr4 = c0192.f1949;
                    c0192.f1949 = C0259.m3865(bArr4, i3, bArr4.length - i3);
                }
                return bArr2;
            }
            throw new Exception(C0164.m3488(462, 58, 112));
        }

        @Override
        public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            return m3658(bArr, i, i2, bArr2, i3);
        }

        @Override
        public byte[] mo3661() {
            return C0191.this.f1949;
        }
    }

    public class C0193 extends AbstractC0606 implements InterfaceC0614 {

        public byte[] f700;

        public SecretKey f701;

        public Cipher f702;

        public byte[] f703;

        public String f704;

        public C0193(SecretKey secretKey, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, String str) throws C0537 {
            super(bArr, 16, 16, 1, 1, i2);
            this.f703 = null;
            this.f700 = null;
            this.f701 = null;
            this.f3374 = true;
            this.f3373 = true;
            this.f701 = secretKey;
            this.f703 = bArr;
            this.f700 = bArr2;
            C0191.this.f1949 = bArr3;
            this.f704 = str;
            C0191.this.m4469(i);
            this.f702 = null;
        }

        @Override
        public void mo3123() throws Exception {
            throw new C0537(C0164.m3488(537, 29, 118));
        }

        public int m3662(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            String strM3488;
            String strM3489;
            if (this.f702 == null) {
                if (C0191.this.f691.equals(C0164.m3488(566, 7, 6))) {
                    strM3488 = C0164.m3488(573, 17, 107);
                    strM3489 = C0164.m3488(590, 34, 82);
                } else {
                    strM3488 = C0164.m3488(624, 17, 61);
                    strM3489 = C0164.m3488(641, 34, 52);
                }
                String str = this.f704;
                if (str == null) {
                    this.f702 = Cipher.getInstance(strM3488);
                } else {
                    this.f702 = Cipher.getInstance(strM3488, str);
                }
                this.f702.init(2, this.f701, (AlgorithmParameterSpec) Class.forName(strM3489).getConstructor(Integer.TYPE, byte[].class).newInstance(Integer.valueOf(C0191.this.f1951), this.f703));
                Cipher.class.getMethod(C0164.m3488(675, 9, 44), byte[].class).invoke(this.f702, this.f700);
            }
            return this.f702.update(bArr, i, i2, bArr2, i3);
        }

        @Override
        public void mo3663(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) throws C0537 {
            this.f703 = bArr;
            this.f700 = bArr2;
            C0191 c0191 = C0191.this;
            c0191.f1949 = bArr3;
            c0191.m4469(i);
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            if (i + i2 <= bArr.length) {
                C0191 c0191 = C0191.this;
                if (c0191.f1949.length <= 0 && c0191.f1951 != 0) {
                    throw new C0414(C0164.m3488(742, 22, 76));
                }
                String strM3488 = C0164.m3488(764, 38, 2);
                C0191 c0192 = C0191.this;
                if (c0192.f1951 / 8 == c0192.f1949.length) {
                    byte[] bArr2 = new byte[i2];
                    int iM3662 = m3662(bArr, i, i2, bArr2, 0);
                    byte[] bArrDoFinal = this.f702.doFinal(C0191.this.f1949);
                    this.f702 = null;
                    if (iM3662 == 0) {
                        return bArrDoFinal;
                    }
                    byte[] bArr3 = new byte[bArrDoFinal.length + iM3662];
                    System.arraycopy(bArr2, 0, bArr3, 0, iM3662);
                    System.arraycopy(bArrDoFinal, 0, bArr3, iM3662, bArrDoFinal.length);
                    return bArr3;
                }
                throw new C0414(2001, strM3488);
            }
            throw new Exception(C0164.m3488(684, 58, 32));
        }

        @Override
        public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            return m3662(bArr, i, i2, bArr2, i3);
        }

        @Override
        public byte[] mo3661() {
            return C0191.this.f1949;
        }

        @Override
        public void mo3659(byte[] bArr) {
            C0191.this.f1949 = bArr;
        }
    }

    @Override
    public InterfaceC0614 mo3657(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        SecretKeySpec secretKeySpec;
        m3655();
        if (!this.f691.equals(C0164.m3488(233, 6, 10)) && !this.f691.equals(C0164.m3488(239, 7, 88)) && !this.f691.equals(C0164.m3488(246, 7, 27))) {
            secretKeySpec = new SecretKeySpec(bArr, C0164.m3488(256, 6, 31));
        } else {
            secretKeySpec = new SecretKeySpec(bArr, C0164.m3488(253, 3, 9));
        }
        return new C0193(secretKeySpec, bArr2, bArr3, bArr4, this.f1951, this.f1685, this.f692);
    }
}
