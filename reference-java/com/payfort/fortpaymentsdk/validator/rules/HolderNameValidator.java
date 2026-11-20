package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.Regex;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "holderName", "", "(Ljava/lang/String;)V", "EXPRESSION_HOLDER_NAME", "getHolderName", "()Ljava/lang/String;", "setHolderName", "isValidName", "", "txt", "validate", "Lkotlin/Pair;", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HolderNameValidator implements CreditCardValidator {
    private final String EXPRESSION_HOLDER_NAME = "^[a-zA-Z ']{0,50}";
    private String holderName;

    public HolderNameValidator(String str) {
        this.holderName = str;
    }

    public final String getHolderName() {
        return this.holderName;
    }

    public final void setHolderName(String str) {
        this.holderName = str;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        return !isValidName(this.holderName) ? new Pair<>(true, FortError.INVALID_CARD_HOLDER_NAME) : new Pair<>(false, null);
    }

    private final boolean isValidName(String txt) {
        if (txt != null) {
            return new Regex(this.EXPRESSION_HOLDER_NAME).matches(txt);
        }
        return false;
    }
}
