package nts;

import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;

public class C0162 extends AbstractC0116 {

    public Object f513;

    public String f514;

    public C0162(String str) throws Exception {
        this.f514 = "";
        this.f513 = null;
        this.f513 = Class.forName(str).newInstance();
        this.f514 = str;
    }

    public static Object m3471(Object obj, String str, Object[] objArr) throws C0537 {
        try {
            Class<?>[] clsArr = new Class[0];
            if (objArr != null) {
                clsArr = new Class[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    clsArr[i] = objArr[i].getClass();
                }
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception unused) {
            throw new C0537(C0663.m5885(3188, 25, 124, C0663.m5890(3165, 23, 81, new StringBuilder(), str)));
        }
    }

    @Override
    public AbstractC0313 mo3185(String str) throws C0537 {
        return (AbstractC0313) m3470(this.f513, C0642.m5849(3567, 21, 14), str, C0642.m5849(3588, 19, 26));
    }

    @Override
    public AbstractC0317 mo3186(String str) throws C0537 {
        try {
            return (AbstractC0317) m3470(this.f513, C0642.m5849(3445, 16, 40), str, C0642.m5849(3461, 18, RNMBXStyleValue.InterpolationModeIdentity));
        } catch (C0537 unused) {
            return mo3189(str);
        }
    }

    @Override
    public AbstractC0403 mo3187(String str) throws C0537 {
        return (AbstractC0403) m3470(this.f513, C0642.m5849(3479, 21, 44), str, C0642.m5849(3500, 20, 10));
    }

    @Override
    public AbstractC0264 mo3188(String str) throws C0537 {
        return (AbstractC0264) m3470(this.f513, C0642.m5849(3520, 24, 50), str, C0642.m5849(3544, 23, RNMBXStyleValue.InterpolationModeIdentity));
    }

    @Override
    public AbstractC0317 mo3189(String str) throws C0537 {
        return (AbstractC0317) m3470(this.f513, C0642.m5849(3415, 16, 71), str, C0642.m5849(3431, 14, 25));
    }

    public static Object m3470(Object obj, String str, String str2, String str3) throws C0537 {
        try {
            return m3471(obj, str, new Object[]{str2});
        } catch (Exception e) {
            throw new C0537(C0642.m5849(3213, 29, 110) + str3 + " \"" + str2 + C0642.m5849(3242, 3, 99) + C0414.m4672(e));
        }
    }

    @Override
    public String mo3190() {
        return this.f514;
    }

    @Override
    public AbstractC0645 mo3191(String str) throws C0537 {
        return (AbstractC0645) m3470(this.f513, C0642.m5849(3374, 22, 119), str, C0642.m5849(3396, 19, 62));
    }
}
