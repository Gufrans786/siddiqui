package nts;

import com.google.common.base.Ascii;

public class C0135 extends AbstractC0444 {

    public static byte[][] f283 = {new byte[]{1, 1, 1, 1, 1, 1, 1, 1}, new byte[]{-2, -2, -2, -2, -2, -2, -2, -2}, new byte[]{Ascii.US, Ascii.US, Ascii.US, Ascii.US, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO}, new byte[]{-32, -32, -32, -32, -15, -15, -15, -15}};

    public static byte[][] f284 = {new byte[]{1, -2, 1, -2, 1, -2, 1, -2}, new byte[]{-2, 1, -2, 1, -2, 1, -2, 1}, new byte[]{Ascii.US, -32, Ascii.US, -32, Ascii.SO, -15, Ascii.SO, -15}, new byte[]{-32, Ascii.US, -32, Ascii.US, -15, Ascii.SO, -15, Ascii.SO}, new byte[]{1, -32, 1, -32, 1, -15, 1, -15}, new byte[]{-32, 1, -32, 1, -15, 1, -15, 1}, new byte[]{Ascii.US, -2, Ascii.US, -2, Ascii.SO, -2, Ascii.SO, -2}, new byte[]{-2, Ascii.US, -2, Ascii.US, -2, Ascii.SO, -2, Ascii.SO}, new byte[]{1, Ascii.US, 1, Ascii.US, 1, Ascii.SO, 1, Ascii.SO}, new byte[]{Ascii.US, 1, Ascii.US, 1, Ascii.SO, 1, Ascii.SO, 1}, new byte[]{-32, -2, -32, -2, -15, -2, -15, -2}, new byte[]{-2, -32, -2, -32, -2, -15, -2, -15}};

    public C0135() {
        this.f1687 = new C0509[]{new C0509(64, 64, 0)};
        this.f1684 = new C0509[]{new C0509(64, 64, 0)};
        this.f1689 = 64;
        this.f1685 = 64;
        this.f1691 = 64;
        this.f1690 = 1;
        this.f1686 = 1;
    }

    public static boolean m3262(byte[] bArr) {
        return m3265(bArr, 0);
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0308.m4227(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        if (C0320.f1715) {
            return new C0244(bArr, bArr2, this.f1690, this.f1686, this.f1685);
        }
        throw new C0537(C0642.m5853(18, 18, 25));
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        if (C0320.f1715) {
            return new C0327(bArr, bArr2, this.f1690, this.f1686, this.f1685);
        }
        throw new C0537(C0642.m5853(0, 18, 74));
    }

    public static void m3263(byte[] bArr) throws C0537 {
        if (m3265(bArr, 0) || m3266(bArr, 0)) {
            throw new C0537(C0642.m5853(36, 22, 16));
        }
    }

    public static boolean m3264(byte[] bArr) {
        return m3266(bArr, 0);
    }

    public static boolean m3266(byte[] bArr, int i) {
        for (int i2 = 0; i2 < f284.length; i2++) {
            int i3 = 0;
            while (i3 < 8 && f284[i2][i3] == bArr[i3 + i]) {
                i3++;
            }
            if (i3 == 8) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void mo3267(byte[] bArr) throws C0537 {
        m3263(bArr);
        super.mo3267(bArr);
    }

    public static boolean m3265(byte[] bArr, int i) {
        for (int i2 = 0; i2 < f283.length; i2++) {
            int i3 = 0;
            while (i3 < 8 && f283[i2][i3] == bArr[i3 + i]) {
                i3++;
            }
            if (i3 == 8) {
                return true;
            }
        }
        return false;
    }
}
