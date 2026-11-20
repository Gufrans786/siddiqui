package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.ValidationUtils;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "cvcValue", "", "(Ljava/lang/String;)V", "getCvcValue", "()Ljava/lang/String;", "setCvcValue", "validate", "Lkotlin/Pair;", "", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CvcFormatValidator implements CreditCardValidator {
    private String cvcValue;

    public CvcFormatValidator(String str) {
        this.cvcValue = str;
    }

    public final String getCvcValue() {
        return this.cvcValue;
    }

    public final void setCvcValue(String str) {
        this.cvcValue = str;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        String str = this.cvcValue;
        if (str != null) {
            Intrinsics.checkNotNull(str);
            if (!StringsKt.isBlank(str) && !ValidationUtils.INSTANCE.isWholePositiveNumber(this.cvcValue)) {
                return new Pair<>(true, FortError.INVALID_CVC_FORMAT);
            }
        }
        return new Pair<>(false, null);
    }
}
