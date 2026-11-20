package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\b\u001a\u00020\t2\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "cardNumber", "", "(Ljava/lang/String;)V", "getCardNumber", "()Ljava/lang/String;", "setCardNumber", "isValidCardLength", "", "cardBrand", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "validate", "Lkotlin/Pair;", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardNumberLengthValidator implements CreditCardValidator {
    private String cardNumber;

    public CardNumberLengthValidator(String str) {
        this.cardNumber = str;
    }

    public final String getCardNumber() {
        return this.cardNumber;
    }

    public final void setCardNumber(String str) {
        this.cardNumber = str;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        String str = this.cardNumber;
        this.cardNumber = str != null ? Utils.INSTANCE.normalize$fortpayment_release(str) : null;
        CardBrand cardBrandFromCardNumber = CardBrand.INSTANCE.fromCardNumber(this.cardNumber);
        String str2 = this.cardNumber;
        if (str2 != null) {
            Integer numValueOf = str2 != null ? Integer.valueOf(str2.length()) : null;
            Intrinsics.checkNotNull(numValueOf);
            if (numValueOf.intValue() < 4) {
                return new Pair<>(true, FortError.INVALID_CARD_NUMBER);
            }
        }
        String str3 = this.cardNumber;
        if (str3 != null) {
            Intrinsics.checkNotNull(str3);
            if (str3.length() >= 4) {
                String str4 = this.cardNumber;
                Intrinsics.checkNotNull(str4);
                if (str4.length() < cardBrandFromCardNumber.getDefaultMinLength() && cardBrandFromCardNumber == CardBrand.AMEX) {
                    return new Pair<>(true, FortError.INVALID_CARD_LENGTH_AMEX);
                }
            }
        }
        String str5 = this.cardNumber;
        if (str5 != null && !isValidCardLength(str5, cardBrandFromCardNumber)) {
            return new Pair<>(true, FortError.INVALID_CARD_LENGTH);
        }
        return new Pair<>(false, null);
    }

    private final boolean isValidCardLength(String cardNumber, CardBrand cardBrand) {
        int length;
        return cardNumber != null && (length = cardNumber.length()) <= cardBrand.getDefaultMaxLength() && length >= cardBrand.getDefaultMinLength();
    }
}
