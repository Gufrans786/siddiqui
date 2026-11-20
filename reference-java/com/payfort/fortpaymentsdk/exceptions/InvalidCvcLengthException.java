package com.payfort.fortpaymentsdk.exceptions;

import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/payfort/fortpaymentsdk/exceptions/InvalidCvcLengthException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "cardBrand", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V", "getCardBrand", "()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "message", "", "getMessage", "()Ljava/lang/String;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class InvalidCvcLengthException extends Exception {
    private final CardBrand cardBrand;

    public InvalidCvcLengthException(CardBrand cardBrand) {
        this.cardBrand = cardBrand;
    }

    public final CardBrand getCardBrand() {
        return this.cardBrand;
    }

    @Override
    public String getMessage() {
        CardBrand cardBrand = this.cardBrand;
        return "Invalid Cvc Length Exception " + (cardBrand != null ? cardBrand.getIssuerName() : null);
    }
}
