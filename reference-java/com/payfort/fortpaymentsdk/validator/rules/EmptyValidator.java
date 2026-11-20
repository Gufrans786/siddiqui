package com.payfort.fortpaymentsdk.validator.rules;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.validator.CreditCardValidator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;", "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;", TypedValues.Custom.S_STRING, "", "fortError", "Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortError;)V", "getFortError", "()Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "getString", "()Ljava/lang/String;", "setString", "(Ljava/lang/String;)V", "validate", "Lkotlin/Pair;", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class EmptyValidator implements CreditCardValidator {
    private final FortError fortError;
    private String string;

    public EmptyValidator(String str, FortError fortError) {
        Intrinsics.checkNotNullParameter(fortError, "fortError");
        this.string = str;
        this.fortError = fortError;
    }

    public final FortError getFortError() {
        return this.fortError;
    }

    public final String getString() {
        return this.string;
    }

    public final void setString(String str) {
        this.string = str;
    }

    @Override
    public Pair<Boolean, FortError> validate() {
        String str = this.string;
        if (str == null || StringsKt.isBlank(str)) {
            return new Pair<>(true, this.fortError);
        }
        return new Pair<>(false, null);
    }
}
