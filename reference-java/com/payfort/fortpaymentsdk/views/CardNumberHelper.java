package com.payfort.fortpaymentsdk.views;

import android.text.Editable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/CardNumberHelper;", "", "()V", "DEFAULT_MAX_LENGTH", "", "DIVIDER", "", "DIVIDER_MODULO", "DIVIDER_POSITION", "TOTAL_DIGITS", "TOTAL_SYMBOLS", "buildCorrectString", "", "digits", "", "dividerPosition", "divider", "getDigitArray", "s", "Landroid/text/Editable;", "size", "isInputCorrect", "", "totalSymbols", "dividerModulo", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardNumberHelper {
    public static final int DEFAULT_MAX_LENGTH = 19;
    public static final char DIVIDER = ' ';
    public static final int DIVIDER_MODULO = 5;
    public static final int DIVIDER_POSITION = 4;
    public static final CardNumberHelper INSTANCE = new CardNumberHelper();
    public static final int TOTAL_DIGITS = 19;
    public static final int TOTAL_SYMBOLS = 21;

    private CardNumberHelper() {
    }

    public final boolean isInputCorrect(Editable s, int totalSymbols, int dividerModulo, char divider) {
        boolean zIsDigit;
        Intrinsics.checkNotNullParameter(s, "s");
        boolean z = s.length() <= totalSymbols;
        int length = s.length();
        for (int i = 0; i < length; i++) {
            if (i > 0 && (i + 1) % dividerModulo == 0) {
                zIsDigit = divider == s.charAt(i);
            } else {
                zIsDigit = Character.isDigit(s.charAt(i));
            }
            z &= zIsDigit;
        }
        return z;
    }

    public final String buildCorrectString(char[] digits, int dividerPosition, char divider) {
        Intrinsics.checkNotNullParameter(digits, "digits");
        StringBuilder sb = new StringBuilder();
        int length = digits.length;
        for (int i = 0; i < length; i++) {
            char c = digits[i];
            if (c != 0) {
                sb.append(c);
                if (i > 0 && i < digits.length - 1 && (i + 1) % dividerPosition == 0) {
                    sb.append(divider);
                }
            }
        }
        return sb.toString();
    }

    public final char[] getDigitArray(Editable s, int size) {
        Intrinsics.checkNotNullParameter(s, "s");
        char[] cArr = new char[size];
        int i = 0;
        for (int i2 = 0; i2 < s.length() && i < size; i2++) {
            char cCharAt = s.charAt(i2);
            if (Character.isDigit(cCharAt)) {
                cArr[i] = cCharAt;
                i++;
            }
        }
        return cArr;
    }
}
