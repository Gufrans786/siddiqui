package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.ValidationUtils;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0016\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0014H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u0017"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "calendar", "Ljava/util/Calendar;", "expiryMonth", "", "expiryYear", "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCalendar", "()Ljava/util/Calendar;", "setCalendar", "(Ljava/util/Calendar;)V", "getExpiryMonth", "()Ljava/lang/Integer;", "setExpiryMonth", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getExpiryYear", "setExpiryYear", "validate", "Lkotlin/Pair;", "", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardExpiryDateValidator implements CreditCardValidator {
    private Calendar calendar;
    private Integer expiryMonth;
    private Integer expiryYear;

    public CardExpiryDateValidator(Calendar calendar, Integer num, Integer num2) {
        Intrinsics.checkNotNullParameter(calendar, "calendar");
        this.calendar = calendar;
        this.expiryMonth = num;
        this.expiryYear = num2;
    }

    public final Calendar getCalendar() {
        return this.calendar;
    }

    public final Integer getExpiryMonth() {
        return this.expiryMonth;
    }

    public final Integer getExpiryYear() {
        return this.expiryYear;
    }

    public final void setCalendar(Calendar calendar) {
        Intrinsics.checkNotNullParameter(calendar, "<set-?>");
        this.calendar = calendar;
    }

    public final void setExpiryMonth(Integer num) {
        this.expiryMonth = num;
    }

    public final void setExpiryYear(Integer num) {
        this.expiryYear = num;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        Integer num;
        Integer num2 = this.expiryMonth;
        Intrinsics.checkNotNull(num2);
        if (num2.intValue() > 0 && (num = this.expiryYear) != null && num.intValue() == -1) {
            return new Pair<>(true, FortError.INVALID_CARD_EXPIRY_FORMAT);
        }
        new StringBuilder().append(this.expiryMonth).append(this.expiryYear).toString();
        Pair<Boolean, FortError> pairValidate = new MonthRangeValidator(this.expiryMonth).validate();
        Pair<Boolean, FortError> pairValidate2 = new CardYearValidator(this.calendar, this.expiryYear).validate();
        if (pairValidate.getFirst().booleanValue()) {
            return pairValidate;
        }
        if (pairValidate2.getFirst().booleanValue()) {
            return pairValidate2;
        }
        ValidationUtils validationUtils = ValidationUtils.INSTANCE;
        Integer num3 = this.expiryYear;
        Intrinsics.checkNotNull(num3);
        int iIntValue = num3.intValue();
        Integer num4 = this.expiryMonth;
        Intrinsics.checkNotNull(num4);
        if (!validationUtils.hasMonthPassed(iIntValue, num4.intValue(), this.calendar)) {
            new Pair(true, FortError.INVALID_CARD_EXPIRY_DATE);
        }
        return new Pair<>(false, null);
    }
}
