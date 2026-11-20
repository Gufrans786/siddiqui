package com.payfort.fortpaymentsdk.views;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import ch.qos.logback.core.CoreConstants;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.CreditCardUtils;
import com.payfort.fortpaymentsdk.views.model.FortViewTypes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0017\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\b\u0010J\u0017\u0010\u0011\u001a\u00020\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0000¢\u0006\u0002\b\u0012J\r\u0010\u0013\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0014R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/CardCvvView;", "Lcom/payfort/fortpaymentsdk/views/FortView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "cardNumberView", "Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;", "defaultPaymentOption", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "getCardBrand", "isValid", "", "setCardNumberView", "", "setCardNumberView$fortpayment_release", "setUpPaymentOption", "setUpPaymentOption$fortpayment_release", "validateCvc", "validateCvc$fortpayment_release", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardCvvView extends FortView {
    private static final int DEFAULT_MAX_LENGTH = 3;
    private FortCardNumberView cardNumberView;
    private CardBrand defaultPaymentOption;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FortError.values().length];
            try {
                iArr[FortError.EMPTY_CARD_CVC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FortError.INVALID_CVC_FORMAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FortError.INVALID_CVC_LENGTH_OTHERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FortError.INVALID_CVC_LENGTH_AMEX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CardCvvView(Context context, AttributeSet attributeSet) {
        super(context, FortViewTypes.CARD_CVV, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        TextInputLayout inputLayout$fortpayment_release = getInputLayout();
        if (inputLayout$fortpayment_release != null) {
            inputLayout$fortpayment_release.setErrorEnabled(false);
        }
        EditText etText$fortpayment_release = getEtText();
        if (etText$fortpayment_release != null) {
            etText$fortpayment_release.setInputType(2);
        }
        EditText etText$fortpayment_release2 = getEtText();
        if (etText$fortpayment_release2 != null) {
            etText$fortpayment_release2.setFilters(new InputFilter[]{new InputFilter.LengthFilter(3)});
        }
        EditText etText$fortpayment_release3 = getEtText();
        if (etText$fortpayment_release3 != null) {
            etText$fortpayment_release3.setKeyListener(DigitsKeyListener.getInstance("1234567890"));
        }
        EditText etText$fortpayment_release4 = getEtText();
        if (etText$fortpayment_release4 != null) {
            etText$fortpayment_release4.addTextChangedListener(new TextWatcher() {
                @Override
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }

                @Override
                public void afterTextChanged(Editable s) {
                    this.this$0.setError(null);
                }
            });
        }
        setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                CardCvvView._init_$lambda$1(this.f$0, view, z);
            }
        });
    }

    public static final void _init_$lambda$1(CardCvvView this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            this$0.validateCvc$fortpayment_release();
        } else {
            this$0.setError(null);
        }
    }

    public final void setCardNumberView$fortpayment_release(FortCardNumberView cardNumberView) {
        this.cardNumberView = cardNumberView;
        if (cardNumberView != null) {
            cardNumberView.onValueChanged$fortpayment_release(new Function1<Boolean, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z) {
                    EditText etText$fortpayment_release;
                    CardBrand cardBrand = this.this$0.getCardBrand();
                    if (cardBrand == null || (etText$fortpayment_release = this.this$0.getEtText()) == null) {
                        return;
                    }
                    etText$fortpayment_release.setFilters(new InputFilter[]{new InputFilter.LengthFilter(cardBrand.getDefaultCvcLength())});
                }
            });
        }
    }

    public final void validateCvc$fortpayment_release() {
        FortError fortErrorIsValidCardCvc = CreditCardUtils.isValidCardCvc(String.valueOf(getText$fortpayment_release()), getCardBrand());
        int i = fortErrorIsValidCardCvc == null ? -1 : WhenMappings.$EnumSwitchMapping$0[fortErrorIsValidCardCvc.ordinal()];
        if (i == -1) {
            setError(null);
            return;
        }
        if (i == 1) {
            setError(getResources().getString(R.string.pf_cancel_required_field));
            return;
        }
        if (i == 2 || i == 3) {
            setError(getResources().getString(R.string.pf_cancel_cvv_length));
        } else {
            if (i != 4) {
                return;
            }
            setError(getResources().getString(R.string.pf_cancel_cvv_amex_length));
        }
    }

    @Override
    public boolean isValid() {
        return CreditCardUtils.isValidCardCvc(String.valueOf(getText$fortpayment_release()), getCardBrand()) == null;
    }

    public final CardBrand getCardBrand() {
        CardBrand.Companion companion = CardBrand.INSTANCE;
        FortCardNumberView fortCardNumberView = this.cardNumberView;
        String text$fortpayment_release = fortCardNumberView != null ? fortCardNumberView.getText$fortpayment_release() : null;
        if (text$fortpayment_release == null) {
            text$fortpayment_release = "";
        }
        CardBrand cardBrandFromCardNumberOrNull = companion.fromCardNumberOrNull(text$fortpayment_release);
        FortCardNumberView fortCardNumberView2 = this.cardNumberView;
        String text$fortpayment_release2 = fortCardNumberView2 != null ? fortCardNumberView2.getText$fortpayment_release() : null;
        if (StringsKt.contains$default((CharSequence) (text$fortpayment_release2 != null ? text$fortpayment_release2 : ""), (CharSequence) "*", false, 2, (Object) null)) {
            return this.defaultPaymentOption;
        }
        return cardBrandFromCardNumberOrNull == null ? this.defaultPaymentOption : cardBrandFromCardNumberOrNull;
    }

    public final void setUpPaymentOption$fortpayment_release(CardBrand defaultPaymentOption) {
        this.defaultPaymentOption = defaultPaymentOption;
        EditText etText$fortpayment_release = getEtText();
        if (etText$fortpayment_release == null) {
            return;
        }
        InputFilter[] inputFilterArr = new InputFilter[1];
        Integer numValueOf = defaultPaymentOption != null ? Integer.valueOf(defaultPaymentOption.getDefaultCvcLength()) : null;
        Intrinsics.checkNotNull(numValueOf);
        inputFilterArr[0] = new InputFilter.LengthFilter(numValueOf.intValue());
        etText$fortpayment_release.setFilters(inputFilterArr);
    }
}
