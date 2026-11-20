package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0016\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "cardNumber", "", "defaultPaymentOption", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "serverCardBrand", "(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V", "getCardNumber", "()Ljava/lang/String;", "setCardNumber", "(Ljava/lang/String;)V", "validate", "Lkotlin/Pair;", "", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardTypeValidator implements CreditCardValidator {
    private String cardNumber;
    private final CardBrand defaultPaymentOption;
    private final CardBrand serverCardBrand;

    public CardTypeValidator(String str, CardBrand cardBrand, CardBrand cardBrand2) {
        this.cardNumber = str;
        this.defaultPaymentOption = cardBrand;
        this.serverCardBrand = cardBrand2;
    }

    public final String getCardNumber() {
        return this.cardNumber;
    }

    public final void setCardNumber(String str) {
        this.cardNumber = str;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        CardBrand cardBrand;
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
        if (this.cardNumber != null && cardBrandFromCardNumber == CardBrand.UNKNOWN) {
            return new Pair<>(true, FortError.CARD_UNSUPPORTED);
        }
        if (this.serverCardBrand != null && (cardBrand = this.defaultPaymentOption) != null && !Intrinsics.areEqual(cardBrand.getIssuerName(), this.serverCardBrand.getIssuerName())) {
            return new Pair<>(true, FortError.INVALID_PAYMENT_OPTION);
        }
        CardBrand cardBrand2 = this.defaultPaymentOption;
        if (cardBrand2 != null && !Intrinsics.areEqual(cardBrand2.getIssuerName(), cardBrandFromCardNumber.getIssuerName()) && this.defaultPaymentOption != CardBrand.MADA) {
            return new Pair<>(true, FortError.INVALID_PAYMENT_OPTION);
        }
        return new Pair<>(false, null);
    }
}
