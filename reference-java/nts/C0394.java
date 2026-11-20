package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Vector;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0394 {

    public static final String f2054;

    public static final String f2055;

    public static final String f2056;

    public static Locale f2057;

    public static final String f2058;

    public static final String f2059;

    public static final String f2060;

    public static final String[] f2061;

    public Calendar f2062;

    static {
        String strM3501 = C0164.m3501(0, 19, 61);
        f2060 = strM3501;
        String strM3502 = C0164.m3501(19, 24, 34);
        f2056 = strM3502;
        String strM3503 = C0164.m3501(43, 26, 80);
        f2059 = strM3503;
        String strM3504 = C0164.m3501(69, 19, 18);
        f2054 = strM3504;
        String strM3505 = C0164.m3501(88, 21, 3);
        f2055 = strM3505;
        String strM3506 = C0164.m3501(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 20, 65);
        f2058 = strM3506;
        C0164.m3501(129, 18, 75);
        C0164.m3501(CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 24, 24);
        f2061 = new String[]{strM3502, strM3503, strM3504, strM3505, strM3501, C0164.m3501(171, 29, 70), C0164.m3501(200, 29, 104), C0164.m3501(229, 30, 32), C0164.m3501(259, 19, 91), C0164.m3501(278, 16, 104), C0164.m3501(294, 29, 91), C0164.m3501(323, 25, 89), C0164.m3501(348, 13, 123), C0164.m3501(361, 15, 96), C0164.m3501(376, 17, 88), C0164.m3501(393, 15, 64), C0164.m3501(TSLocationManager.LOCATION_ERROR_TIMEOUT, 16, 79), C0164.m3501(TypedValues.CycleType.TYPE_WAVE_OFFSET, 18, 40), C0164.m3501(442, 18, 81), strM3506};
        f2057 = Locale.US;
    }

    public C0394() {
        Date date = new Date();
        this.f2062 = null;
        Calendar calendar = Calendar.getInstance();
        this.f2062 = calendar;
        calendar.setTime(date);
    }

    public static Date m4629(String str) {
        return m4631(str, f2061);
    }

    public static Date m4632(Vector vector, Vector vector2, String str) {
        if (vector.size() == 0) {
            return null;
        }
        int size = vector.size();
        while (true) {
            size--;
            if (size < 0) {
                return (Date) vector2.get(0);
            }
            String str2 = (String) vector.get(size);
            if (str2.endsWith(C0164.m3501(466, 3, 81)) && str.endsWith("Z")) {
                if (str2.substring(0, str2.length() - 3).length() == str.substring(0, str.length() - 1).length()) {
                    return (Date) vector2.get(size);
                }
            }
        }
    }

    public String toString() {
        return m4630(this.f2062.getTime(), f2060);
    }

    public static Date m4631(String str, String[] strArr) {
        Date date;
        try {
            Vector vector = new Vector();
            Vector vector2 = new Vector();
            for (int i = 0; i < strArr.length; i++) {
                String str2 = strArr[i];
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2, f2057);
                    if (str2.endsWith(C0164.m3501(460, 3, 52))) {
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(C0164.m3501(463, 3, 104)));
                    }
                    date = simpleDateFormat.parse(str);
                } catch (Exception unused) {
                    date = null;
                }
                if (date != null) {
                    vector.add(strArr[i]);
                    vector2.add(date);
                }
            }
            Date dateM4632 = m4632(vector, vector2, str);
            if (dateM4632 != null) {
                return dateM4632;
            }
        } catch (Exception unused2) {
        }
        throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3501(469, 36, 71));
    }

    public C0394(long j) {
        this.f2062 = null;
        Calendar calendar = Calendar.getInstance();
        this.f2062 = calendar;
        TimeZone timeZone = calendar.getTimeZone();
        this.f2062.setTimeZone(TimeZone.getTimeZone(C0164.m3501(545, 3, 55)));
        this.f2062.setTime(new Date(j));
        this.f2062.setTimeZone(timeZone);
    }

    public static String m4630(Date date, String str) {
        try {
            return new SimpleDateFormat(str, f2057).format(date);
        } catch (Exception unused) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3501(TypedValues.PositionType.TYPE_SIZE_PERCENT, 40, 88));
        }
    }

    public String m4633(String str) {
        return m4630(this.f2062.getTime(), str);
    }
}
