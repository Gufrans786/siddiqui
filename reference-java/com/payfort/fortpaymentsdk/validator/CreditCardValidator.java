package com.payfort.fortpaymentsdk.validator;

import com.payfort.fortpaymentsdk.domain.model.FortError;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", "", "validate", "Lkotlin/Pair;", "", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface CreditCardValidator {
    Pair<Boolean, FortError> validate();
}
