package ch.qos.logback.core.util;

import androidx.appcompat.app.AppCompatDelegate;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.yalantis.ucrop.UCrop;
import java.text.DateFormatSymbols;
import sa.lg.android.locate.BuildConfig;

class CharSequenceToRegexMapper {
    DateFormatSymbols symbols = DateFormatSymbols.getInstance();

    CharSequenceToRegexMapper() {
    }

    static int[] findMinMaxLengthsInSymbols(String[] strArr) {
        int iMin = Integer.MAX_VALUE;
        int iMax = 0;
        for (String str : strArr) {
            int length = str.length();
            if (length != 0) {
                iMin = Math.min(iMin, length);
                iMax = Math.max(iMax, length);
            }
        }
        return new int[]{iMin, iMax};
    }

    private String getRegexForAmPms() {
        return symbolArrayToRegex(this.symbols.getAmPmStrings());
    }

    private String getRegexForLongDaysOfTheWeek() {
        return symbolArrayToRegex(this.symbols.getWeekdays());
    }

    private String getRegexForLongMonths() {
        return symbolArrayToRegex(this.symbols.getMonths());
    }

    private String getRegexForShortDaysOfTheWeek() {
        return symbolArrayToRegex(this.symbols.getShortWeekdays());
    }

    private String number(int i) {
        return "\\d{" + i + "}";
    }

    private String symbolArrayToRegex(String[] strArr) {
        int[] iArrFindMinMaxLengthsInSymbols = findMinMaxLengthsInSymbols(strArr);
        return ".{" + iArrFindMinMaxLengthsInSymbols[0] + "," + iArrFindMinMaxLengthsInSymbols[1] + "}";
    }

    String getRegexForShortMonths() {
        return symbolArrayToRegex(this.symbols.getShortMonths());
    }

    String toRegex(CharSequenceState charSequenceState) {
        StringBuilder sb;
        StringBuilder sbAppend;
        int i = charSequenceState.occurrences;
        char c = charSequenceState.c;
        char c2 = charSequenceState.c;
        if (c2 != 'y') {
            if (c2 == 'z') {
                return ".*";
            }
            switch (c2) {
                case '\'':
                    if (i == 1) {
                        return "";
                    }
                    throw new IllegalStateException("Too many single quotes");
                case '.':
                    return "\\.";
                case 'K':
                case 'S':
                case 'W':
                case 'd':
                case 'h':
                case 'k':
                case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY:
                case 's':
                case 'w':
                    break;
                case 'M':
                    if (i <= 2) {
                        return number(i);
                    }
                    return i == 3 ? getRegexForShortMonths() : getRegexForLongMonths();
                case 'Z':
                    return "(\\+|-)\\d{4}";
                case '\\':
                    throw new IllegalStateException("Forward slashes are not allowed");
                case TSGeofenceManager.MAX_GEOFENCES:
                    return getRegexForAmPms();
                default:
                    switch (c2) {
                        case BuildConfig.VERSION_CODE:
                        case CoreConstants.OOS_RESET_FREQUENCY:
                        case SyslogConstants.LOG_CRON:
                            break;
                        case UCrop.REQUEST_CROP:
                            return i >= 4 ? getRegexForLongDaysOfTheWeek() : getRegexForShortDaysOfTheWeek();
                        case 'G':
                            return ".*";
                        default:
                            if (i == 1) {
                                sb = new StringBuilder("");
                                sbAppend = sb.append(c);
                            } else {
                                sb = new StringBuilder();
                                sbAppend = sb.append(c).append("{").append(i).append("}");
                            }
                            return sbAppend.toString();
                    }
                    break;
            }
        }
        return number(i);
    }
}
