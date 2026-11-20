package com.payfort.fortpaymentsdk.utils;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0011\u0010\u000f\u001a\u00020\u0004*\u00020\rH\u0000¢\u0006\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;", "", "()V", "hasMonthPassed", "", "year", "", "month", "now", "Ljava/util/Calendar;", "hasYearPassed", "isWholePositiveNumber", "value", "", "normalizeYear", "isDigitsOnlyKotlin", "isDigitsOnlyKotlin$fortpayment_release", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ValidationUtils {
    public static final ValidationUtils INSTANCE = new ValidationUtils();

    private ValidationUtils() {
    }

    public final boolean hasMonthPassed(int year, int month, Calendar now) {
        Intrinsics.checkNotNullParameter(now, "now");
        if (hasYearPassed(year, now)) {
            return true;
        }
        return normalizeYear(year, now) == now.get(1) && month < now.get(2) + 1;
    }

    public final boolean hasYearPassed(int year, Calendar now) {
        Intrinsics.checkNotNullParameter(now, "now");
        return normalizeYear(year, now) < now.get(1);
    }

    public final int normalizeYear(int year, Calendar now) {
        Intrinsics.checkNotNullParameter(now, "now");
        if (year >= 100 || year < 0) {
            return year;
        }
        String strValueOf = String.valueOf(now.get(1));
        String strSubstring = strValueOf.substring(0, strValueOf.length() - 2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.US, "%s%02d", Arrays.copyOf(new Object[]{strSubstring, Integer.valueOf(year)}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(locale, format, *args)");
        return Integer.parseInt(str);
    }

    public final boolean isWholePositiveNumber(String value) {
        return value != null && isDigitsOnlyKotlin$fortpayment_release(value);
    }

    public final boolean isDigitsOnlyKotlin$fortpayment_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String str2 = str;
        for (int i = 0; i < str2.length(); i++) {
            if (Character.isDigit(str2.charAt(i))) {
            }
        }
        return str2.length() > 0;
    }
}
