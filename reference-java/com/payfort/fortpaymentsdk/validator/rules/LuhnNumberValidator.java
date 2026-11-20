package com.payfort.fortpaymentsdk.validator.rules;

import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\b\u001a\u00020\t2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\r"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "cardNumber", "", "(Ljava/lang/String;)V", "getCardNumber", "()Ljava/lang/String;", "setCardNumber", "isValidLuhnNumber", "", "validate", "Lkotlin/Pair;", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LuhnNumberValidator implements CreditCardValidator {
    private String cardNumber;

    public LuhnNumberValidator(String str) {
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
        String strNormalize$fortpayment_release = str != null ? Utils.INSTANCE.normalize$fortpayment_release(str) : null;
        this.cardNumber = strNormalize$fortpayment_release;
        return !isValidLuhnNumber(strNormalize$fortpayment_release) ? new Pair<>(true, FortError.INVALID_CARD_NUMBER) : new Pair<>(false, null);
    }

    private final boolean isValidLuhnNumber(String cardNumber) {
        if (cardNumber == null) {
            return false;
        }
        int length = cardNumber.length() - 1;
        int i = 0;
        boolean z = true;
        while (-1 < length) {
            char cCharAt = cardNumber.charAt(length);
            if (!Character.isDigit(cCharAt)) {
                return false;
            }
            int numericValue = Character.getNumericValue(cCharAt);
            boolean z2 = !z;
            if (!z) {
                numericValue *= 2;
            }
            if (numericValue > 9) {
                numericValue -= 9;
            }
            i += numericValue;
            length--;
            z = z2;
        }
        return i % 10 == 0;
    }
}
