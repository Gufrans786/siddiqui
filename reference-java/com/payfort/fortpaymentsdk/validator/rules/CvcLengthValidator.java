package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u000f\u001a\u00020\u00102\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0002J\u0016\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "cvcValue", "", "cardBrand", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V", "getCardBrand", "()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "setCardBrand", "(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V", "getCvcValue", "()Ljava/lang/String;", "setCvcValue", "(Ljava/lang/String;)V", "isValidCVCLength", "", "validLength", "", "validate", "Lkotlin/Pair;", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CvcLengthValidator implements CreditCardValidator {
    private CardBrand cardBrand;
    private String cvcValue;

    public CvcLengthValidator(String str, CardBrand cardBrand) {
        this.cvcValue = str;
        this.cardBrand = cardBrand;
    }

    public final CardBrand getCardBrand() {
        return this.cardBrand;
    }

    public final String getCvcValue() {
        return this.cvcValue;
    }

    public final void setCardBrand(CardBrand cardBrand) {
        this.cardBrand = cardBrand;
    }

    public final void setCvcValue(String str) {
        this.cvcValue = str;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        CardBrand cardBrand = this.cardBrand;
        if (cardBrand != null && cardBrand == CardBrand.AMEX) {
            String str = this.cvcValue;
            CardBrand cardBrand2 = this.cardBrand;
            Intrinsics.checkNotNull(cardBrand2);
            if (!isValidCVCLength(str, cardBrand2.getDefaultCvcLength())) {
                return new Pair<>(true, FortError.INVALID_CVC_LENGTH_AMEX);
            }
        }
        CardBrand cardBrand3 = this.cardBrand;
        if (cardBrand3 != null && cardBrand3 != CardBrand.AMEX && !isValidCVCLength$default(this, this.cvcValue, 0, 2, null)) {
            return new Pair<>(true, FortError.INVALID_CVC_LENGTH_OTHERS);
        }
        return new Pair<>(false, null);
    }

    static boolean isValidCVCLength$default(CvcLengthValidator cvcLengthValidator, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 3;
        }
        return cvcLengthValidator.isValidCVCLength(str, i);
    }

    private final boolean isValidCVCLength(String cvcValue, int validLength) {
        return cvcValue != null && cvcValue.length() == validLength;
    }
}
