package com.payfort.fortpaymentsdk.utils;

import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.validator.CardValidator;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0002\u0010\u0011J5\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0013J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u0007J(\u0010\u0016\u001a\u0004\u0018\u00010\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\u0019"}, d2 = {"Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;", "", "()V", "getPossibleCardType", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "cardNumber", "", "isValidCardCvc", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "cvc", "cardBrand", "isValidCardExpiryDate", "calendar", "Ljava/util/Calendar;", "expiryMonth", "", "expiryYear", "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "expiry", "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "isValidCardHolderName", "holderName", "isValidCardNumber", "defaultPaymentOption", "serverCardBrand", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CreditCardUtils {
    public static final CreditCardUtils INSTANCE = new CreditCardUtils();

    private CreditCardUtils() {
    }

    @JvmStatic
    public static final FortError isValidCardNumber(String cardNumber, CardBrand defaultPaymentOption, CardBrand serverCardBrand) {
        String str = cardNumber;
        if (str == null || str.length() == 0 || !StringsKt.contains$default((CharSequence) str, (CharSequence) "*", false, 2, (Object) null)) {
            return new CardValidator.CardValidatorBuilder().addEmptyRule(cardNumber, FortError.EMPTY_CARD_NUMBER).addCardTypeRule(cardNumber, defaultPaymentOption, serverCardBrand).addCardNumberLengthRule(cardNumber).addLuhnNumberRule(cardNumber).build().execute();
        }
        return null;
    }

    @JvmStatic
    public static final FortError isValidCardCvc(String cvc, CardBrand cardBrand) {
        return new CardValidator.CardValidatorBuilder().addEmptyRule(cvc, FortError.EMPTY_CARD_CVC).addCvcLengthRule(cvc, cardBrand).addCvcFormatRule(cvc).build().execute();
    }

    @JvmStatic
    public static final FortError isValidCardExpiryDate(Calendar calendar, Integer expiryMonth, Integer expiryYear) {
        Intrinsics.checkNotNullParameter(calendar, "calendar");
        Intrinsics.checkNotNull(expiryMonth);
        int iIntValue = expiryMonth.intValue();
        Intrinsics.checkNotNull(expiryYear);
        int iIntValue2 = iIntValue + expiryYear.intValue();
        if (iIntValue2 == -2) {
            return FortError.INVALID_CARD_EXPIRY_FORMAT;
        }
        if (iIntValue2 < 0) {
            return FortError.EMPTY_CARD_DATE;
        }
        return new CardValidator.CardValidatorBuilder().addCardExpiryDateRule(calendar, expiryMonth, expiryYear).build().execute();
    }

    @JvmStatic
    public static final FortError isValidCardExpiryDate(Calendar calendar, Integer expiryMonth, Integer expiryYear, String expiry) {
        Intrinsics.checkNotNullParameter(calendar, "calendar");
        String str = expiry;
        if (str == null || str.length() == 0) {
            return FortError.EMPTY_CARD_DATE;
        }
        if (str != null && str.length() != 0 && expiry.length() == 1) {
            return FortError.INVALID_CARD_EXPIRY_FORMAT;
        }
        return new CardValidator.CardValidatorBuilder().addCardExpiryDateRule(calendar, expiryMonth, expiryYear).build().execute();
    }

    @JvmStatic
    public static final FortError isValidCardHolderName(String holderName) {
        return new CardValidator.CardValidatorBuilder().addHolderNameRule(holderName).build().execute();
    }

    @JvmStatic
    public static final CardBrand getPossibleCardType(String cardNumber) {
        return CardBrand.INSTANCE.fromCardNumber(cardNumber);
    }
}
