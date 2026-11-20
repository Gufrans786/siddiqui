package nts;

import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;

public class C0118 extends C0315 {

    public static final String f236 = C0642.m5849(2170, 41, 82);

    @Override
    public AbstractC0313 mo3185(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(C0642.m5849(2503, 7, 2)) || lowerCase.equals(C0642.m5849(2510, 6, 5))) {
            return new C0191(lowerCase, null);
        }
        if (this.f1694.contains(str)) {
            return new C0097(lowerCase, null);
        }
        throw new C0537(C0663.m5885(2555, 16, 66, C0663.m5890(2516, 39, 51, new StringBuilder(), str)));
    }

    @Override
    public AbstractC0317 mo3186(String str) throws C0537 {
        return mo3189(str);
    }

    @Override
    public AbstractC0403 mo3187(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (this.f1696.contains(lowerCase)) {
            return new C0438(lowerCase);
        }
        throw new C0537(C0663.m5885(2418, 16, 29, C0663.m5890(2378, 40, 33, new StringBuilder(), str)));
    }

    @Override
    public AbstractC0264 mo3188(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(C0642.m5849(2434, 3, 7))) {
            lowerCase = C0642.m5849(2437, 7, 69);
        }
        if (this.f1693.contains(lowerCase)) {
            return new C0362(lowerCase);
        }
        throw new C0537(C0663.m5885(2487, 16, 116, C0663.m5890(2444, 43, 64, new StringBuilder(), str)));
    }

    @Override
    public AbstractC0317 mo3189(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (!this.f1695.contains(lowerCase)) {
            throw new C0537(C0663.m5885(2362, 16, 55, C0663.m5890(2328, 34, 68, new StringBuilder(), str)));
        }
        if (C0642.m5849(2276, 6, 36).equals(lowerCase)) {
            lowerCase = C0642.m5849(2282, 7, 125);
        } else if (C0642.m5849(2289, 6, 19).equals(lowerCase)) {
            lowerCase = C0642.m5849(2295, 7, 21);
        } else if (C0642.m5849(2302, 6, 117).equals(lowerCase)) {
            lowerCase = C0642.m5849(2308, 7, 23);
        } else if (C0642.m5849(2315, 6, 37).equals(lowerCase)) {
            lowerCase = C0642.m5849(2321, 7, 28);
        }
        return new C0338(lowerCase, null);
    }

    @Override
    public AbstractC0645 mo3191(String str) throws C0537 {
        if (this.f1697.contains(str) || str.equals(C0642.m5849(2211, 4, 75)) || str.equals(C0642.m5849(2215, 5, 62))) {
            return new C0367(str);
        }
        throw new C0537(C0663.m5885(2260, 16, 56, C0663.m5890(2220, 40, RNMBXStyleValue.InterpolationModeIdentity, new StringBuilder(), str)));
    }

    @Override
    public String mo3190() {
        return f236;
    }
}
