package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;
import java.io.File;

public class C0212 {

    public static final String f789;

    public static final byte[] f791 = new byte[0];

    public static final byte[] f790 = {Ascii.CR, 10};

    static {
        String str = File.separator;
        String strM3689 = m3689();
        f789 = strM3689;
        C0259.m3858(strM3689);
        String property = System.getProperty(C0642.m5843(14, 12, 88), C0642.m5843(26, 3, 82));
        String str2 = C0642.m5843(29, 3, 38) + property.substring(property.indexOf(".") + 1);
    }

    public static String m3689() {
        return System.getProperty(C0642.m5843(0, 14, SyslogConstants.LOG_CLOCK), "\r\n");
    }
}
