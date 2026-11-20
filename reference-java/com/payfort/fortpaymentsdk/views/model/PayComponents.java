package com.payfort.fortpaymentsdk.views.model;

import com.payfort.fortpaymentsdk.views.CardCvvView;
import com.payfort.fortpaymentsdk.views.CardExpiryView;
import com.payfort.fortpaymentsdk.views.CardHolderNameView;
import com.payfort.fortpaymentsdk.views.FortCardNumberView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0013\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b\u0014J\u000e\u0010\u0015\u001a\u00020\u0005HÀ\u0003¢\u0006\u0002\b\u0016J\u000e\u0010\u0017\u001a\u00020\u0007HÀ\u0003¢\u0006\u0002\b\u0018J\u000e\u0010\u0019\u001a\u00020\tHÀ\u0003¢\u0006\u0002\b\u001aJ1\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006#"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/model/PayComponents;", "", "cardNumberView", "Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;", "cvvView", "Lcom/payfort/fortpaymentsdk/views/CardCvvView;", "cardExpiryView", "Lcom/payfort/fortpaymentsdk/views/CardExpiryView;", "holderNameView", "Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;", "(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/views/CardCvvView;Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;)V", "getCardExpiryView$fortpayment_release", "()Lcom/payfort/fortpaymentsdk/views/CardExpiryView;", "getCardNumberView$fortpayment_release", "()Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;", "getCvvView$fortpayment_release", "()Lcom/payfort/fortpaymentsdk/views/CardCvvView;", "getHolderNameView$fortpayment_release", "()Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;", "component1", "component1$fortpayment_release", "component2", "component2$fortpayment_release", "component3", "component3$fortpayment_release", "component4", "component4$fortpayment_release", "copy", "equals", "", "other", "hashCode", "", "toString", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PayComponents {
    private final CardExpiryView cardExpiryView;
    private final FortCardNumberView cardNumberView;
    private final CardCvvView cvvView;
    private final CardHolderNameView holderNameView;

    public static PayComponents copy$default(PayComponents payComponents, FortCardNumberView fortCardNumberView, CardCvvView cardCvvView, CardExpiryView cardExpiryView, CardHolderNameView cardHolderNameView, int i, Object obj) {
        if ((i & 1) != 0) {
            fortCardNumberView = payComponents.cardNumberView;
        }
        if ((i & 2) != 0) {
            cardCvvView = payComponents.cvvView;
        }
        if ((i & 4) != 0) {
            cardExpiryView = payComponents.cardExpiryView;
        }
        if ((i & 8) != 0) {
            cardHolderNameView = payComponents.holderNameView;
        }
        return payComponents.copy(fortCardNumberView, cardCvvView, cardExpiryView, cardHolderNameView);
    }

    public final FortCardNumberView getCardNumberView() {
        return this.cardNumberView;
    }

    public final CardCvvView getCvvView() {
        return this.cvvView;
    }

    public final CardExpiryView getCardExpiryView() {
        return this.cardExpiryView;
    }

    public final CardHolderNameView getHolderNameView() {
        return this.holderNameView;
    }

    public final PayComponents copy(FortCardNumberView cardNumberView, CardCvvView cvvView, CardExpiryView cardExpiryView, CardHolderNameView holderNameView) {
        Intrinsics.checkNotNullParameter(cardNumberView, "cardNumberView");
        Intrinsics.checkNotNullParameter(cvvView, "cvvView");
        Intrinsics.checkNotNullParameter(cardExpiryView, "cardExpiryView");
        Intrinsics.checkNotNullParameter(holderNameView, "holderNameView");
        return new PayComponents(cardNumberView, cvvView, cardExpiryView, holderNameView);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PayComponents)) {
            return false;
        }
        PayComponents payComponents = (PayComponents) other;
        return Intrinsics.areEqual(this.cardNumberView, payComponents.cardNumberView) && Intrinsics.areEqual(this.cvvView, payComponents.cvvView) && Intrinsics.areEqual(this.cardExpiryView, payComponents.cardExpiryView) && Intrinsics.areEqual(this.holderNameView, payComponents.holderNameView);
    }

    public int hashCode() {
        return (((((this.cardNumberView.hashCode() * 31) + this.cvvView.hashCode()) * 31) + this.cardExpiryView.hashCode()) * 31) + this.holderNameView.hashCode();
    }

    public String toString() {
        return "PayComponents(cardNumberView=" + this.cardNumberView + ", cvvView=" + this.cvvView + ", cardExpiryView=" + this.cardExpiryView + ", holderNameView=" + this.holderNameView + ")";
    }

    public PayComponents(FortCardNumberView cardNumberView, CardCvvView cvvView, CardExpiryView cardExpiryView, CardHolderNameView holderNameView) {
        Intrinsics.checkNotNullParameter(cardNumberView, "cardNumberView");
        Intrinsics.checkNotNullParameter(cvvView, "cvvView");
        Intrinsics.checkNotNullParameter(cardExpiryView, "cardExpiryView");
        Intrinsics.checkNotNullParameter(holderNameView, "holderNameView");
        this.cardNumberView = cardNumberView;
        this.cvvView = cvvView;
        this.cardExpiryView = cardExpiryView;
        this.holderNameView = holderNameView;
    }

    public final FortCardNumberView getCardNumberView$fortpayment_release() {
        return this.cardNumberView;
    }

    public final CardCvvView getCvvView$fortpayment_release() {
        return this.cvvView;
    }

    public final CardExpiryView getCardExpiryView$fortpayment_release() {
        return this.cardExpiryView;
    }

    public final CardHolderNameView getHolderNameView$fortpayment_release() {
        return this.holderNameView;
    }
}
