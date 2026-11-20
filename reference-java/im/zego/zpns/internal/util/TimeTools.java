package im.zego.zpns.internal.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTools {
    private static final SimpleDateFormat sFormat = new SimpleDateFormat("yyMMddHHmmssSSS");
    private static final SimpleDateFormat sLogFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");

    public static String longFormatTime(long j) {
        Date date = new Date();
        date.setTime(j);
        if (isThisYear(date)) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
            if (isToday(date)) {
                int iMinutesAgo = minutesAgo(j);
                if (iMinutesAgo >= 60) {
                    return simpleDateFormat.format(date);
                }
                if (iMinutesAgo <= 1) {
                    return "刚刚";
                }
                return iMinutesAgo + "分钟前";
            }
            if (isYestYesterday(date)) {
                return "昨天 " + simpleDateFormat.format(date);
            }
            if (isThisWeek(date)) {
                String str = date.getDay() == 1 ? "周一" : null;
                if (date.getDay() == 2) {
                    str = "周二";
                }
                if (date.getDay() == 3) {
                    str = "周三";
                }
                if (date.getDay() == 4) {
                    str = "周四";
                }
                if (date.getDay() == 5) {
                    str = "周五";
                }
                if (date.getDay() == 6) {
                    str = "周六";
                }
                if (date.getDay() == 0) {
                    str = "周日";
                }
                return str + " " + simpleDateFormat.format(date);
            }
            return new SimpleDateFormat("MM-dd HH:mm").format(date);
        }
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(date);
    }

    private static int minutesAgo(long j) {
        return (int) ((System.currentTimeMillis() - j) / 60000);
    }

    private static boolean isToday(Date date) {
        Date date2 = new Date();
        return date.getYear() == date2.getYear() && date.getMonth() == date2.getMonth() && date.getDate() == date2.getDate();
    }

    private static boolean isYestYesterday(Date date) {
        Date date2 = new Date();
        return date.getYear() == date2.getYear() && date.getMonth() == date2.getMonth() && date.getDate() + 1 == date2.getDate();
    }

    private static boolean isThisWeek(Date date) {
        Date date2 = new Date();
        return date.getYear() == date2.getYear() && date.getMonth() == date2.getMonth() && date2.getDay() - date.getDay() < date2.getDay() && date2.getDate() - date.getDate() > 0 && date2.getDate() - date.getDate() < 7;
    }

    private static boolean isThisYear(Date date) {
        return date.getYear() == new Date().getYear();
    }

    public static String getNowTimeStr() {
        return sFormat.format(new Date());
    }

    public static String getLogStr() {
        return sLogFormat.format(new Date());
    }
}
