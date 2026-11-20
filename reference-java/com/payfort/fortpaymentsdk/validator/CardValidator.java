package com.payfort.fortpaymentsdk.validator;

import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.validator.rules.CardExpiryDateValidator;
import com.payfort.fortpaymentsdk.validator.rules.CardNumberLengthValidator;
import com.payfort.fortpaymentsdk.validator.rules.CardTypeValidator;
import com.payfort.fortpaymentsdk.validator.rules.CardYearValidator;
import com.payfort.fortpaymentsdk.validator.rules.CvcFormatValidator;
import com.payfort.fortpaymentsdk.validator.rules.CvcLengthValidator;
import com.payfort.fortpaymentsdk.validator.rules.EmptyValidator;
import com.payfort.fortpaymentsdk.validator.rules.HolderNameValidator;
import com.payfort.fortpaymentsdk.validator.rules.LuhnNumberValidator;
import com.payfort.fortpaymentsdk.validator.rules.MonthRangeValidator;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u0004\u0018\u00010\nR\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/CardValidator;", "", "builder", "Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;", "(Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;)V", "listOfCreditCards", "Ljava/util/ArrayList;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "Lkotlin/collections/ArrayList;", "execute", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "CardValidatorBuilder", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardValidator {
    private ArrayList<CreditCardValidator> listOfCreditCards;

    public CardValidator(CardValidatorBuilder cardValidatorBuilder, DefaultConstructorMarker defaultConstructorMarker) {
        this(cardValidatorBuilder);
    }

    private CardValidator(CardValidatorBuilder cardValidatorBuilder) {
        this.listOfCreditCards = cardValidatorBuilder.getListOfRules();
    }

    public final FortError execute() {
        Iterator<T> it = this.listOfCreditCards.iterator();
        while (it.hasNext()) {
            Pair<Boolean, FortError> pairValidate = ((CreditCardValidator) it.next()).validate();
            if (pairValidate.getFirst().booleanValue()) {
                return pairValidate.getSecond();
            }
        }
        return null;
    }

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J'\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J$\u0010\u0015\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u001d\u0010\u0019\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014J\u001a\u0010\u001d\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u0017J\u0018\u0010\u001f\u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\u00142\u0006\u0010!\u001a\u00020\"J\u0010\u0010#\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010\u0014J\u0010\u0010%\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0015\u0010&\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010'J\u0006\u0010(\u001a\u00020)R*\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006*"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;", "", "()V", "listOfRules", "Ljava/util/ArrayList;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "Lkotlin/collections/ArrayList;", "getListOfRules", "()Ljava/util/ArrayList;", "setListOfRules", "(Ljava/util/ArrayList;)V", "addCardExpiryDateRule", "calendar", "Ljava/util/Calendar;", "expiryMonth", "", "expiryYear", "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;", "addCardNumberLengthRule", "cardNumber", "", "addCardTypeRule", "defaultPaymentOption", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "serverCardBrand", "addCardYearRule", "(Ljava/util/Calendar;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;", "addCvcFormatRule", "cvcValue", "addCvcLengthRule", "cardBrand", "addEmptyRule", "strValue", "fortError", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "addHolderNameRule", "holderName", "addLuhnNumberRule", "addMonthRangeRule", "(Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;", "build", "Lcom/payfort/fortpaymentsdk/validator/CardValidator;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class CardValidatorBuilder {
        private ArrayList<CreditCardValidator> listOfRules = new ArrayList<>();

        public final ArrayList<CreditCardValidator> getListOfRules() {
            return this.listOfRules;
        }

        public final void setListOfRules(ArrayList<CreditCardValidator> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
            this.listOfRules = arrayList;
        }

        public final CardValidatorBuilder addMonthRangeRule(Integer expiryMonth) {
            this.listOfRules.add(new MonthRangeValidator(expiryMonth));
            return this;
        }

        public final CardValidatorBuilder addLuhnNumberRule(String cardNumber) {
            this.listOfRules.add(new LuhnNumberValidator(cardNumber));
            return this;
        }

        public final CardValidatorBuilder addHolderNameRule(String holderName) {
            this.listOfRules.add(new HolderNameValidator(holderName));
            return this;
        }

        public final CardValidatorBuilder addCvcLengthRule(String cvcValue, CardBrand cardBrand) {
            this.listOfRules.add(new CvcLengthValidator(cvcValue, cardBrand));
            return this;
        }

        public final CardValidatorBuilder addCvcFormatRule(String cvcValue) {
            this.listOfRules.add(new CvcFormatValidator(cvcValue));
            return this;
        }

        public final CardValidatorBuilder addCardYearRule(Calendar calendar, Integer expiryYear) {
            Intrinsics.checkNotNullParameter(calendar, "calendar");
            this.listOfRules.add(new CardYearValidator(calendar, expiryYear));
            return this;
        }

        public final CardValidatorBuilder addCardTypeRule(String cardNumber, CardBrand defaultPaymentOption, CardBrand serverCardBrand) {
            this.listOfRules.add(new CardTypeValidator(cardNumber, defaultPaymentOption, serverCardBrand));
            return this;
        }

        public final CardValidatorBuilder addCardNumberLengthRule(String cardNumber) {
            this.listOfRules.add(new CardNumberLengthValidator(cardNumber));
            return this;
        }

        public final CardValidatorBuilder addEmptyRule(String strValue, FortError fortError) {
            Intrinsics.checkNotNullParameter(fortError, "fortError");
            this.listOfRules.add(new EmptyValidator(strValue, fortError));
            return this;
        }

        public final CardValidatorBuilder addCardExpiryDateRule(Calendar calendar, Integer expiryMonth, Integer expiryYear) {
            Intrinsics.checkNotNullParameter(calendar, "calendar");
            this.listOfRules.add(new CardExpiryDateValidator(calendar, expiryMonth, expiryYear));
            return this;
        }

        public final CardValidator build() {
            return new CardValidator(this, null);
        }
    }
}
