package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.util.List;
import java.util.Vector;

public class C0303 extends AbstractC0116 {

    public static final String f1619 = C0642.m5849(2571, 42, 63);

    public static final String f1620 = C0642.m5849(2613, 6, 110);

    public List f1625 = new Vector();

    public List f1623 = new Vector();

    public List f1624 = new Vector();

    public List f1621 = new Vector();

    public List f1622 = new Vector();

    public C0303() {
        this.f1625.add(C0642.m5849(2619, 3, 124));
        this.f1625.add(C0642.m5849(2622, 5, 27));
        this.f1625.add(C0642.m5849(2627, 3, 51));
        this.f1623.add(C0642.m5849(2630, 4, 80));
        this.f1623.add(C0642.m5849(2634, 6, 99));
        this.f1623.add(C0642.m5849(2640, 7, 62));
        this.f1623.add(C0642.m5849(2647, 6, 102));
        this.f1623.add(C0642.m5849(2653, 7, 121));
        this.f1623.add(C0642.m5849(2660, 6, 90));
        this.f1623.add(C0642.m5849(2666, 7, 11));
        this.f1623.add(C0642.m5849(2673, 6, 102));
        this.f1623.add(C0642.m5849(2679, 7, 8));
        this.f1624.add(C0642.m5849(2686, 8, 6));
        this.f1624.add(C0642.m5849(2694, 10, 0));
        this.f1624.add(C0642.m5849(2704, 10, 71));
        this.f1624.add(C0642.m5849(2714, 10, 38));
        this.f1624.add(C0642.m5849(2724, 10, 115));
        this.f1621.add(C0642.m5849(2734, 7, 0));
        this.f1621.add(C0642.m5849(2741, 10, 79));
        this.f1622.add(C0642.m5849(2751, 3, 86));
        this.f1622.add(C0642.m5849(2754, 7, 90));
        this.f1622.add(C0642.m5849(2761, 4, 100));
        this.f1622.add(C0642.m5849(2765, 9, 122));
    }

    @Override
    public AbstractC0313 mo3185(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(C0642.m5849(3074, 3, 113)) || lowerCase.equals(C0642.m5849(3077, 4, 93)) || lowerCase.equals(C0642.m5849(3081, 9, 113))) {
            return new C0097(lowerCase, f1620);
        }
        if (lowerCase.equals(C0642.m5849(3090, 7, 2)) || lowerCase.equals(C0642.m5849(3097, 6, 15)) || lowerCase.equals(C0642.m5849(3103, 7, 3))) {
            return new C0191(lowerCase, f1620);
        }
        throw new C0537(C0663.m5885(3149, 16, 99, C0663.m5890(3110, 39, 19, new StringBuilder(), str)));
    }

    @Override
    public AbstractC0317 mo3186(String str) throws C0537 {
        return mo3189(str);
    }

    @Override
    public AbstractC0403 mo3187(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (this.f1624.contains(lowerCase)) {
            return new C0438(lowerCase);
        }
        throw new C0537(C0663.m5885(2989, 16, 81, C0663.m5890(2949, 40, 30, new StringBuilder(), str)));
    }

    @Override
    public AbstractC0264 mo3188(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(C0642.m5849(AuthApiStatusCodes.AUTH_URL_RESOLUTION, 3, 16))) {
            lowerCase = C0642.m5849(3008, 7, 34);
        }
        if (this.f1621.contains(lowerCase)) {
            return new C0362(lowerCase);
        }
        throw new C0537(C0663.m5885(3058, 16, SyslogConstants.LOG_CLOCK, C0663.m5890(3015, 43, 57, new StringBuilder(), str)));
    }

    @Override
    public AbstractC0317 mo3189(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (this.f1623.contains(lowerCase)) {
            return new C0338(lowerCase, f1620);
        }
        if (lowerCase.equals(C0642.m5849(2834, 3, 125)) || lowerCase.equals(C0642.m5849(2837, 3, 93))) {
            throw new C0537(C0663.m5885(2856, 43, 0, C0663.m5890(2840, 16, 52, new StringBuilder(), str)));
        }
        throw new C0537(C0663.m5885(2933, 16, 127, C0663.m5890(2899, 34, 4, new StringBuilder(), str)));
    }

    @Override
    public String mo3190() {
        return f1619;
    }

    @Override
    public AbstractC0645 mo3191(String str) throws C0537 {
        String lowerCase = str.toLowerCase();
        if (this.f1625.contains(lowerCase) || lowerCase.equals(C0642.m5849(2774, 4, 56))) {
            return new C0367(lowerCase);
        }
        throw new C0537(C0663.m5885(2818, 16, 118, C0663.m5890(2778, 40, 98, new StringBuilder(), str)));
    }
}
