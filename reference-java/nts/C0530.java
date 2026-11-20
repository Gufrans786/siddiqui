package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Vector;

public class C0530 {

    public int f3083;

    public int f3084;

    public int f3085;

    public boolean f3086;

    public boolean f3087;

    public int f3088;

    public Vector f3089;

    public boolean f3090;

    public int f3091;

    public int f3092;

    public int f3093;

    public int f3094;

    public ByteArrayOutputStream f3095;

    public C0530 f3096;

    public Vector f3097;

    public boolean f3098;

    public byte[] f3099;

    public C0530(byte[] bArr, int i, C0530 c0530) {
        this.f3099 = C0320.f1706;
        this.f3094 = 0;
        this.f3085 = 0;
        this.f3092 = 0;
        this.f3083 = 0;
        this.f3084 = 0;
        this.f3088 = 0;
        this.f3098 = false;
        this.f3086 = false;
        this.f3087 = false;
        this.f3091 = 0;
        this.f3095 = null;
        this.f3096 = null;
        this.f3090 = true;
        this.f3093 = 0;
        this.f3097 = new Vector();
        this.f3089 = null;
        this.f3099 = bArr;
        this.f3091 = i;
        this.f3086 = c0530.f3098;
        this.f3083 = bArr.length;
        this.f3096 = c0530;
    }

    public static int[] m5356(String str) {
        int[] iArr = new int[255];
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            while (i < length && !Character.isDigit(str.charAt(i))) {
                i++;
            }
            i = i;
            while (i < length && Character.isDigit(str.charAt(i))) {
                i++;
            }
            if (i != i) {
                iArr[i2] = (int) Long.parseLong(str.substring(i, i));
                i2++;
            }
        }
        int[] iArr2 = new int[i2];
        System.arraycopy(iArr, 0, iArr2, 0, i2);
        return iArr2;
    }

    public C0530 m5361(int i) throws C0414 {
        m5372(i);
        return new C0530(m5373(), this.f3084);
    }

    public byte[] m5364(int i) throws C0414 {
        m5372(i);
        return m5373();
    }

    public boolean m5369() throws C0414 {
        return !m5392();
    }

    public void m5370() throws C0414 {
        this.f3091 = 48;
    }

    public int m5371() throws C0414 {
        int i = this.f3094;
        if (i >= this.f3083) {
            throw new C0414(447, C0164.m3492(315, 13, 21));
        }
        byte[] bArr = this.f3099;
        this.f3094 = i + 1;
        return bArr[i] & 255;
    }

    public byte[] m5373() throws C0414 {
        m5387();
        if (!this.f3098) {
            int i = this.f3094;
            int i2 = this.f3088;
            int i3 = i + i2;
            byte[] bArr = this.f3099;
            if (i3 > bArr.length) {
                throw new C0414(447, C0164.m3492(73, 13, 2));
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            this.f3094 += this.f3088;
            return bArr2;
        }
        if ((this.f3084 | 32) == 0) {
            throw new C0414(446, C0164.m3492(86, 15, 12));
        }
        this.f3094 -= 2;
        m5387();
        C0530 c0530 = new C0530(this.f3099, this.f3084, this);
        c0530.f3094 = this.f3094;
        if (!this.f3098) {
            c0530.f3083 = this.f3094 + this.f3088;
        }
        C0301 c0301 = new C0301();
        while (!c0530.m5369()) {
            c0301.m4180(c0530.m5373());
        }
        if (!c0530.m5369()) {
            throw new C0414(446, C0164.m3492(58, 15, 122));
        }
        if (c0530.f3086) {
            c0530.f3094 += 2;
        }
        C0530 c0531 = c0530.f3096;
        if (c0531 != null) {
            c0531.f3094 = c0530.f3094;
        }
        return c0301.m4182();
    }

    public int[] m5374() throws C0414 {
        int iM5371;
        int[] iArr = new int[255];
        m5387();
        int i = this.f3088;
        if (i == 0) {
            return new int[]{0};
        }
        int i2 = 1;
        while (i > 0) {
            int i3 = 0;
            do {
                iM5371 = m5371();
                if (((-33554432) & i3) != 0) {
                    throw new C0414(446, C0164.m3492(131, 39, 5));
                }
                i3 = (i3 << 7) + (iM5371 & (-129));
                i--;
            } while ((iM5371 & 128) != 0);
            if (i2 == 255) {
                throw new C0414(446, C0164.m3492(170, 32, 68) + 255 + C0164.m3492(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, 19, 77));
            }
            iArr[i2] = i3;
            i2++;
        }
        int[] iArr2 = new int[i2];
        System.arraycopy(iArr, 0, iArr2, 0, i2);
        int i4 = iArr2[1];
        iArr2[0] = i4 / 40;
        iArr2[1] = i4 % 40;
        return iArr2;
    }

    public byte[] m5375() throws C0414 {
        byte[] bArrM5373 = m5373();
        if (this.f3088 == 0 || bArrM5373[0] > 7) {
            throw new C0414(446, C0164.m3492(116, 15, 17));
        }
        if (bArrM5373.length == 1) {
            return C0320.f1706;
        }
        int length = bArrM5373.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(bArrM5373, 1, bArr, 0, length);
        return bArr;
    }

    public byte[] m5376() {
        return m5388().f1974;
    }

    public void m5379(byte[] bArr, int i) throws C0414 {
        if (bArr == null) {
            throw new C0414(445, C0164.m3492(328, 15, 40));
        }
        try {
            m5358(this.f3095, i, bArr.length);
            this.f3095.write(bArr);
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public String m5380() throws C0414 {
        int[] iArrM5374 = m5374();
        StringBuffer stringBuffer = new StringBuffer();
        int length = iArrM5374.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(((long) iArrM5374[i]) & 4294967295L);
            if (i < length - 1) {
                stringBuffer.append(CoreConstants.DOT);
            }
        }
        return stringBuffer.toString();
    }

    public void m5381() throws C0414 {
        m5387();
        int i = this.f3094;
        int i2 = this.f3088;
        int i3 = i + i2;
        byte[] bArr = this.f3099;
        if (i3 > bArr.length) {
            throw new C0414(447, C0164.m3492(0, 13, 64));
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f3099 = bArr2;
        this.f3083 = this.f3088;
        this.f3092 = 0;
        this.f3085 = 0;
        this.f3094 = 0;
    }

    public void m5384(String str) throws C0414 {
        m5402(m5356(str), 6);
    }

    public void m5387() throws C0414 {
        int iM5371 = m5371();
        this.f3084 = iM5371;
        if ((iM5371 & 31) == 31) {
            throw new C0414(305, C0164.m3492(252, 20, 29));
        }
        int iM5372 = m5371();
        boolean z = (this.f3084 & (-33)) == 0 && (iM5372 & (-33)) == 0;
        this.f3087 = z;
        if (z) {
            return;
        }
        if ((iM5372 & 128) > 0) {
            byte b = (byte) (iM5372 & (-129));
            boolean z2 = b == 0;
            this.f3098 = z2;
            if (z2) {
                return;
            }
            if (b > 4) {
                throw new C0414(446, C0164.m3492(272, 15, 59));
            }
            this.f3088 = 0;
            for (int i = 0; i < b; i++) {
                this.f3088 = (this.f3088 << 8) | m5371();
            }
        } else {
            this.f3088 = iM5372;
        }
        if (this.f3088 < 0) {
            throw new C0414(446, C0164.m3492(287, 15, 99));
        }
    }

    public C0383 m5388() throws C0414 {
        C0383 c0383 = new C0383();
        if (this.f3091 == 0) {
            c0383.f1974 = this.f3095.toByteArray();
            c0383.f1973 = this.f3093;
            return c0383;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (this.f3093 > 0 || !this.f3090) {
                byteArrayOutputStream.write(this.f3091);
                byteArrayOutputStream.write(128);
                c0383.f1973 = this.f3093 + 2;
            } else {
                m5358(byteArrayOutputStream, this.f3091, this.f3095.size());
            }
            byteArrayOutputStream.write(this.f3095.toByteArray());
            if (c0383.f1973 != 0) {
                byteArrayOutputStream.write(new byte[2]);
            }
            c0383.f1974 = byteArrayOutputStream.toByteArray();
            return c0383;
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public int m5389() throws C0414 {
        m5387();
        if (this.f3088 > 4) {
            for (int i = 0; i < this.f3088 - 4; i++) {
                if (m5371() != 0) {
                    throw new C0414(446, C0164.m3492(13, 15, 111));
                }
            }
        }
        int i2 = this.f3094;
        if (i2 >= this.f3083) {
            throw new C0414(447, C0164.m3492(302, 13, 33));
        }
        int iM5371 = (this.f3099[i2] & 128) != 0 ? -1 : 0;
        for (int i3 = 0; i3 < this.f3088; i3++) {
            iM5371 = (iM5371 << 8) | m5371();
        }
        return iM5371;
    }

    public C0530 m5390() throws C0414 {
        return new C0530(m5373(), this.f3084);
    }

    public void m5391() {
        this.f3095 = new ByteArrayOutputStream();
        this.f3099 = C0320.f1706;
        this.f3091 = 0;
        this.f3096 = null;
        this.f3094 = 0;
        this.f3085 = 0;
        this.f3092 = 0;
        this.f3083 = 0;
        this.f3084 = 0;
        this.f3088 = 0;
        this.f3097.clear();
    }

    public boolean m5392() throws C0414 {
        boolean z;
        int i = this.f3094;
        int i2 = this.f3088;
        int i3 = this.f3084;
        try {
            if (i < this.f3083) {
                m5387();
                if (!this.f3087) {
                    z = true;
                    if (!this.f3086 && (this.f3094 + this.f3088) - 1 >= this.f3099.length) {
                    }
                }
                z = false;
            } else {
                z = false;
            }
        } catch (C0414 e) {
            if (e.f2136 != 447) {
                throw e;
            }
        }
        this.f3094 = i;
        this.f3088 = i2;
        this.f3084 = i3;
        return z;
    }

    public void m5397(C0383 c0383) throws C0414 {
        int i = c0383.f1973;
        if (i > 0) {
            this.f3093 = this.f3095.size() + i;
        }
        try {
            this.f3095.write(c0383.f1974);
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public void m5385(byte[] bArr) throws C0414 {
        m5401(bArr, 2);
    }

    public void m5363() {
        m5399(false);
    }

    public void m5386(byte[] bArr, int i) throws C0414 {
        if (bArr != null && bArr.length != 0) {
            byte[] bArr2 = new byte[bArr.length + 1];
            bArr2[0] = 0;
            System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
            m5379(bArr2, i);
            return;
        }
        throw new C0414(445, C0164.m3492(358, 15, 119));
    }

    public void m5362() {
        m5399(false);
    }

    public void m5372(int i) throws C0414 {
        if (i < this.f3092) {
            this.f3085 = 0;
            this.f3092 = 0;
        }
        this.f3094 = this.f3085;
        while (this.f3092 < i) {
            m5387();
            this.f3094 += this.f3088;
            this.f3092++;
        }
        this.f3085 = this.f3094;
    }

    public static boolean m5357(byte[] bArr) {
        return m5360(bArr, false);
    }

    public void m5378() {
        m5366();
        for (int i = 0; i < m5382(); i++) {
            m5365(i).m5378();
        }
    }

    public void m5400(byte[] bArr) throws C0414 {
        try {
            this.f3095.write(bArr);
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public C0530 m5377(int i) {
        for (int i2 = 0; i2 < m5382(); i2++) {
            if (m5365(i2).f3084 == i) {
                return m5365(i2);
            }
        }
        return null;
    }

    public int m5382() {
        Vector vector = this.f3089;
        if (vector == null) {
            return 0;
        }
        return vector.size();
    }

    public void m5394(int i) throws C0414 {
        m5395(i, 2);
    }

    public void m5383(int i) {
        this.f3097.add(Integer.valueOf(this.f3095.size()));
        try {
            this.f3095.write(new byte[]{(byte) i, -128});
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public void m5396(String str) throws C0414 {
        m5402(m5356(str), 6);
    }

    public void m5395(int i, int i2) throws C0414 {
        int i3 = 4;
        while (true) {
            int i4 = i & (-8388608);
            if ((i4 == 0 || i4 == -8388608) && i3 > 1) {
                i3--;
                i <<= 8;
            }
        }
        try {
            m5358(this.f3095, i2, i3);
            while (i3 > 0) {
                this.f3095.write((byte) (((-16777216) & i) >>> 24));
                i <<= 8;
                i3--;
            }
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public void m5367(byte[] bArr) throws C0414 {
        m5379(bArr, 4);
    }

    public void m5368(byte[] bArr, int i) throws C0414 {
        if (bArr != null && bArr.length != 0 && bArr[0] <= 7) {
            m5379(bArr, i);
            return;
        }
        throw new C0414(445, C0164.m3492(373, 15, 91));
    }

    public void m5366() {
        int[] iArr = {0};
        int[] iArr2 = {0};
        int[] iArr3 = {0};
        int[] iArr4 = {0};
        int[] iArr5 = {0};
        if (m5403(this.f3094, this.f3083, iArr, iArr2, iArr3, iArr4, iArr5)) {
            if (iArr5[0] == this.f3083) {
                int i = iArr[0];
                this.f3084 = i;
                if ((i & 32) == 32) {
                    this.f3089 = new Vector();
                    int i2 = iArr3[0];
                    for (int i3 = iArr2[0]; i3 < i2; i3 = iArr5[0]) {
                        if (m5403(i3, i2, iArr, iArr2, iArr3, iArr4, iArr5)) {
                            byte[] bArr = this.f3099;
                            int i4 = iArr4[0];
                            C0530 c0530 = new C0530(C0259.m3865(bArr, i4, iArr5[0] - i4));
                            c0530.f3084 = iArr[0];
                            this.f3089.add(c0530);
                        } else {
                            throw new C0414(446, C0164.m3492(451, 13, 19));
                        }
                    }
                    return;
                }
                return;
            }
            throw new C0414(446, C0164.m3492(437, 14, 66));
        }
        throw new C0414(446, C0164.m3492(TypedValues.CycleType.TYPE_WAVE_OFFSET, 13, 70));
    }

    public void m5401(byte[] bArr, int i) throws C0414 {
        if (bArr != null) {
            int i2 = (bArr.length <= 1 || (bArr[0] & 255) < 128) ? 0 : 1;
            try {
                m5358(this.f3095, i, bArr.length + i2);
                if (i2 != 0) {
                    this.f3095.write(0);
                }
                this.f3095.write(bArr);
                return;
            } catch (IOException e) {
                throw new C0414(e);
            }
        }
        throw new C0414(445, C0164.m3492(343, 15, 104));
    }

    public final void m5402(int[] r12, int r13) throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0530.m5402(int[], int):void");
    }

    public C0530(byte[] bArr, int i) {
        this.f3099 = C0320.f1706;
        this.f3094 = 0;
        this.f3085 = 0;
        this.f3092 = 0;
        this.f3083 = 0;
        this.f3084 = 0;
        this.f3088 = 0;
        this.f3098 = false;
        this.f3086 = false;
        this.f3087 = false;
        this.f3091 = 0;
        this.f3095 = null;
        this.f3096 = null;
        this.f3090 = true;
        this.f3093 = 0;
        this.f3097 = new Vector();
        this.f3089 = null;
        this.f3099 = bArr;
        this.f3091 = i;
        this.f3083 = bArr.length;
    }

    public C0530 m5365(int i) {
        return (C0530) this.f3089.get(i);
    }

    public C0530(byte[] bArr) {
        this.f3099 = C0320.f1706;
        this.f3094 = 0;
        this.f3085 = 0;
        this.f3092 = 0;
        this.f3083 = 0;
        this.f3084 = 0;
        this.f3088 = 0;
        this.f3098 = false;
        this.f3086 = false;
        this.f3087 = false;
        this.f3091 = 0;
        this.f3095 = null;
        this.f3096 = null;
        this.f3090 = true;
        this.f3093 = 0;
        this.f3097 = new Vector();
        this.f3089 = null;
        this.f3099 = bArr;
        this.f3083 = bArr.length;
    }

    public void m5398(C0530 c0530) throws C0414 {
        try {
            int i = c0530.f3091;
            if (i != 0) {
                m5358(this.f3095, i, c0530.f3095.size());
            }
            this.f3095.write(c0530.f3095.toByteArray());
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public static void m5358(ByteArrayOutputStream byteArrayOutputStream, int i, int i2) throws IOException {
        byteArrayOutputStream.write(i);
        if (i2 < 128) {
            byteArrayOutputStream.write(i2);
            return;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            if ((i2 >>> (i4 * 8)) != 0) {
                i3 = i4 + 1;
            }
        }
        byteArrayOutputStream.write(i3 | 128);
        while (i3 > 0) {
            byteArrayOutputStream.write((i2 >>> ((i3 * 8) - 8)) & 255);
            i3--;
        }
    }

    public static boolean m5360(byte[] bArr, boolean z) {
        int length = bArr.length;
        int[] iArr = {0};
        int[] iArr2 = {0};
        if (!m5359(bArr, 0, length, new int[]{0}, new int[]{0}, new int[]{0}, iArr, iArr2)) {
            return false;
        }
        if (z) {
            return iArr[0] == 0 && iArr2[0] <= length;
        }
        return iArr[0] == 0 && iArr2[0] == length;
    }

    public static boolean m5359(byte[] bArr, int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        boolean z;
        iArr4[0] = i;
        int i3 = bArr[i] & 255;
        iArr[0] = i3;
        int i4 = i + 2;
        int i5 = bArr[i + 1];
        int i6 = i5 & 255;
        if (i3 == 0 && i6 == 0) {
            iArr2[0] = i4;
            iArr3[0] = i4;
            iArr5[0] = i4;
            return true;
        }
        if ((i5 & 128) <= 0) {
            z = false;
        } else {
            char c = (char) (i5 & 127);
            if (c > 4) {
                return false;
            }
            if (c == 0) {
                i6 = 0;
                z = true;
            } else {
                int i7 = 0;
                i6 = 0;
                while (i7 < c) {
                    i6 = (i6 << 8) | (bArr[i4] & 255);
                    i7++;
                    i4++;
                }
                z = false;
            }
        }
        if (i6 < 0) {
            return false;
        }
        iArr2[0] = i4;
        if (!z) {
            int i8 = i4 + i6;
            if (i8 > i2) {
                return false;
            }
            iArr3[0] = i8;
            iArr5[0] = i8;
            return true;
        }
        if ((iArr[0] & 32) != 32) {
            while (i4 < i2 - 1) {
                byte b = bArr[i4];
                int i9 = i4 + 1;
                byte b2 = bArr[i9];
                if ((b & (-33)) == 0 && (b2 & (-33)) == 0) {
                    iArr3[0] = i4;
                    iArr5[0] = i4 + 2;
                    return true;
                }
                i4 = i9;
            }
            return false;
        }
        int i10 = i4;
        int[] iArr6 = {0};
        int[] iArr7 = {0};
        int[] iArr8 = {0};
        int[] iArr9 = {0};
        int[] iArr10 = {0};
        for (int i11 = i10; i11 < i2 && m5359(bArr, i11, i2, iArr6, iArr7, iArr8, iArr9, iArr10); i11 = iArr10[0]) {
            if (iArr6[0] == 0) {
                int i12 = iArr10[0];
                if (i12 - iArr9[0] == 2) {
                    iArr3[0] = i12 - 2;
                    iArr5[0] = iArr10[0];
                    return true;
                }
            }
        }
        return false;
    }

    public C0530() {
        this.f3099 = C0320.f1706;
        this.f3094 = 0;
        this.f3085 = 0;
        this.f3092 = 0;
        this.f3083 = 0;
        this.f3084 = 0;
        this.f3088 = 0;
        this.f3098 = false;
        this.f3086 = false;
        this.f3087 = false;
        this.f3091 = 0;
        this.f3095 = null;
        this.f3096 = null;
        this.f3090 = true;
        this.f3093 = 0;
        this.f3097 = new Vector();
        this.f3089 = null;
        this.f3095 = new ByteArrayOutputStream();
    }

    public final boolean m5403(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        boolean z;
        iArr4[0] = i;
        byte[] bArr = this.f3099;
        int i3 = bArr[i] & 255;
        iArr[0] = i3;
        int i4 = i + 2;
        byte b = bArr[i + 1];
        int i5 = b & 255;
        if (i3 == 0 && i5 == 0) {
            iArr2[0] = i4;
            iArr3[0] = i4;
            iArr5[0] = i4;
            return true;
        }
        if ((b & 128) <= 0) {
            z = false;
        } else {
            byte b2 = (byte) (b & 127);
            if (b2 > 4) {
                throw new C0414(446, C0164.m3492(464, 15, 7));
            }
            i5 = 0;
            if (b2 == 0) {
                z = true;
            } else {
                int i6 = 0;
                while (i6 < b2) {
                    i5 = (i5 << 8) | (this.f3099[i4] & 255);
                    i6++;
                    i4++;
                }
                z = false;
            }
        }
        if (i5 >= 0) {
            iArr2[0] = i4;
            if (!z) {
                int i7 = i4 + i5;
                if (i7 > i2) {
                    return false;
                }
                iArr3[0] = i7;
                iArr5[0] = i7;
                return true;
            }
            if ((iArr[0] & 32) != 32) {
                while (i4 < i2 - 1) {
                    byte[] bArr2 = this.f3099;
                    byte b3 = bArr2[i4];
                    int i8 = i4 + 1;
                    byte b4 = bArr2[i8];
                    if ((b3 & (-33)) == 0 && (b4 & (-33)) == 0) {
                        iArr3[0] = i4;
                        iArr5[0] = i4 + 2;
                        return true;
                    }
                    i4 = i8;
                }
                return false;
            }
            int[] iArr6 = {0};
            int[] iArr7 = {0};
            int[] iArr8 = {0};
            int[] iArr9 = {0};
            int[] iArr10 = {0};
            for (int i9 = i4; i9 < i2 && m5403(i9, i2, iArr6, iArr7, iArr8, iArr9, iArr10); i9 = iArr10[0]) {
                if (iArr6[0] == 0) {
                    int i10 = iArr10[0];
                    if (i10 - iArr9[0] == 2) {
                        iArr3[0] = i10 - 2;
                        iArr5[0] = iArr10[0];
                        return true;
                    }
                }
            }
            return false;
        }
        throw new C0414(446, C0164.m3492(479, 15, 9));
    }

    public void m5393() {
        m5383(48);
    }

    public void m5399(boolean z) {
        if (this.f3097.size() > 0) {
            int iIntValue = ((Integer) this.f3097.lastElement()).intValue();
            Vector vector = this.f3097;
            vector.removeElementAt(vector.size() - 1);
            if (z) {
                try {
                    this.f3095.write(new byte[]{0, 0});
                    return;
                } catch (Exception e) {
                    throw new C0414(e);
                }
            }
            int i = iIntValue + 2;
            int size = this.f3095.size() - i;
            byte[] byteArray = this.f3095.toByteArray();
            if (size < 128) {
                byteArray[iIntValue + 1] = (byte) size;
            } else {
                byte[] bArr = new byte[4];
                int i2 = 0;
                while (size > 0) {
                    bArr[3 - i2] = (byte) (size & 255);
                    size >>= 8;
                    i2++;
                }
                byteArray[iIntValue + 1] = (byte) (i2 | 128);
                byte[] bArr2 = new byte[byteArray.length + i2];
                System.arraycopy(byteArray, 0, bArr2, 0, i);
                System.arraycopy(bArr, 4 - i2, bArr2, i, i2);
                System.arraycopy(byteArray, i, bArr2, i2 + i, (byteArray.length - iIntValue) - 2);
                byteArray = bArr2;
            }
            this.f3095.reset();
            try {
                this.f3095.write(byteArray);
                return;
            } catch (Exception e2) {
                throw new C0414(e2);
            }
        }
        throw new C0414(445, C0164.m3492(494, 19, 40));
    }
}
