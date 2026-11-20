package nts;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;

public class C0234 {

    public static int f835;

    public static byte[] m3708(byte[] bArr, byte[] bArr2, int i) throws C0537 {
        if (C0320.f1718) {
            return m3709(bArr, bArr2, i, f835);
        }
        int length = bArr.length;
        int iCeil = (int) Math.ceil(((double) length) / 2.0d);
        byte[] bArr3 = new byte[iCeil];
        byte[] bArr4 = new byte[iCeil];
        System.arraycopy(bArr, 0, bArr3, 0, iCeil);
        System.arraycopy(bArr, length - iCeil, bArr4, 0, iCeil);
        C0297 c0297 = new C0297(bArr3);
        C0223 c0223 = new C0223(bArr4);
        byte[] bArrM3707 = m3707(c0297, bArr2, i);
        byte[] bArrM3708 = m3707(c0223, bArr2, i);
        int length2 = bArrM3707.length;
        byte[] bArr5 = new byte[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            bArr5[i2] = (byte) (bArrM3707[i2] ^ bArrM3708[i2]);
        }
        return bArr5;
    }

    public static byte[] m3707(AbstractC0403 abstractC0403, byte[] bArr, int i) throws C0537 {
        byte[] bArr2 = new byte[i];
        int i2 = abstractC0403.f1703 / 8;
        byte[] bArr3 = new byte[bArr.length + i2];
        System.arraycopy(bArr, 0, bArr3, i2, bArr.length);
        int i3 = 0;
        while (i > 0) {
            bArr = (byte[]) abstractC0403.m4300(bArr).clone();
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            byte[] bArr4 = (byte[]) abstractC0403.m4300(bArr3).clone();
            int iMin = Math.min(bArr4.length, i);
            System.arraycopy(bArr4, 0, bArr2, i3, iMin);
            i3 += iMin;
            i -= iMin;
        }
        return bArr2;
    }

    public static byte[] m3709(byte[] bArr, byte[] bArr2, int i, int i2) throws C0537 {
        Object objInvoke;
        Method method;
        byte[] bArr3 = new byte[i];
        try {
            Class<?> cls = Class.forName(C0465.m5120(64, 55, 26));
            Object objNewInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            Class<?> cls2 = Class.forName(C0465.m5120(119, 36, 38));
            Method declaredMethod = cls.getDeclaredMethod(C0465.m5120(205, 19, 96), Class.forName(C0465.m5120(ModuleDescriptor.MODULE_VERSION, 50, 42)));
            Object obj = new Object();
            if (i2 == f835) {
                obj = cls2.getDeclaredField(C0465.m5120(224, 6, 4)).get(null);
                method = Class.forName(C0465.m5120(230, 57, 29)).getMethod(C0465.m5120(287, 5, 43), byte[].class, String.class, byte[][].class);
            } else {
                Object obj2 = cls2.getDeclaredField(C0465.m5120(292, 6, 75)).get(null);
                Class<?> cls3 = Class.forName(C0465.m5120(298, 43, 22));
                Object[] enumConstants = cls3.getEnumConstants();
                Class<?> cls4 = Class.forName(C0465.m5120(341, 64, 81));
                Method method2 = cls4.getMethod(C0465.m5120(405, 7, 20), cls3);
                Method method3 = cls4.getMethod(C0465.m5120(412, 5, 87), byte[].class, String.class, byte[][].class);
                if (i2 == 1) {
                    objInvoke = method2.invoke(obj2, enumConstants[0]);
                } else {
                    if (i2 == 2) {
                        objInvoke = method2.invoke(obj2, enumConstants[1]);
                    }
                    method = method3;
                }
                obj = objInvoke;
                method = method3;
            }
            Class.forName(C0465.m5120(417, 37, 62)).getMethod(C0465.m5120(454, 13, 25), byte[].class).invoke(declaredMethod.invoke(objNewInstance, method.invoke(obj, bArr, "", new byte[][]{bArr2})), bArr3);
            return bArr3;
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }
}
