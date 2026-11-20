package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.ValidationUtils;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001f\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0002\u0010\u000fJ\u0016\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "calendar", "Ljava/util/Calendar;", "expiryYear", "", "(Ljava/util/Calendar;Ljava/lang/Integer;)V", "getCalendar", "()Ljava/util/Calendar;", "getExpiryYear", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "isValidYear", "", "now", "(Ljava/util/Calendar;Ljava/lang/Integer;)Z", "validate", "Lkotlin/Pair;", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardYearValidator implements CreditCardValidator {
    private final Calendar calendar;
    private final Integer expiryYear;

    public CardYearValidator(Calendar calendar, Integer num) {
        Intrinsics.checkNotNullParameter(calendar, "calendar");
        this.calendar = calendar;
        this.expiryYear = num;
    }

    public final Calendar getCalendar() {
        return this.calendar;
    }

    public final Integer getExpiryYear() {
        return this.expiryYear;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        return !isValidYear(this.calendar, this.expiryYear) ? new Pair<>(true, FortError.INVALID_CARD_EXPIRY_YEAR) : new Pair<>(false, null);
    }

    private final boolean isValidYear(Calendar now, Integer expiryYear) {
        return (expiryYear == null || ValidationUtils.INSTANCE.hasYearPassed(expiryYear.intValue(), now)) ? false : true;
    }
}
