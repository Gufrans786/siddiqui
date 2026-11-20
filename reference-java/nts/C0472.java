package nts;

import ch.qos.logback.core.CoreConstants;
import com.facebook.imageutils.JfifUtil;

public class C0472 extends C0418 {

    public String f2701;

    public C0472() {
        this.f2150 = 6;
    }

    @Override
    public void mo3155() {
        int i;
        int[] iArr = new int[255];
        int i2 = this.f2146;
        if (i2 == 0) {
            throw new C0414(446, C0164.m3506(162, 15, 82));
        }
        int i3 = 0;
        int i4 = 1;
        while (i2 > 0) {
            int i5 = 0;
            while (true) {
                i = i3 + 1;
                byte b = this.f2148[i3];
                if (((-33554432) & i5) != 0) {
                    throw new C0414(446, C0164.m3506(177, 40, 39));
                }
                i5 = (i5 << 7) + (b & 127);
                i2--;
                if ((b & 128) == 0) {
                    break;
                } else {
                    i3 = i;
                }
            }
            if (i4 == 255) {
                throw new C0414(446, C0164.m3506(JfifUtil.MARKER_EOI, 32, 68) + 255 + C0164.m3506(249, 19, 102));
            }
            iArr[i4] = i5;
            i4++;
            i3 = i;
        }
        int[] iArr2 = new int[i4];
        System.arraycopy(iArr, 0, iArr2, 0, i4);
        int i6 = iArr2[1];
        iArr2[0] = i6 / 40;
        iArr2[1] = i6 % 40;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i7 = 0; i7 < i4; i7++) {
            stringBuffer.append(((long) iArr2[i7]) & 4294967295L);
            if (i7 < i4 - 1) {
                stringBuffer.append(CoreConstants.DOT);
            }
        }
        this.f2701 = stringBuffer.toString();
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        c0530.m5384(this.f2701);
    }
}
