package com.payfort.fortpaymentsdk.views;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;
import ch.qos.logback.core.CoreConstants;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.utils.CreditCardUtils;
import com.payfort.fortpaymentsdk.views.model.FortViewTypes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;", "Lcom/payfort/fortpaymentsdk/views/FortView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "isValid", "", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardHolderNameView extends FortView {
    private static final int DEFAULT_MAX_LENGTH = 50;

    public CardHolderNameView(Context context, AttributeSet attributeSet) {
        super(context, FortViewTypes.CARD_HOLDER_NAME, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        TextInputLayout inputLayout$fortpayment_release = getInputLayout();
        if (inputLayout$fortpayment_release != null) {
            inputLayout$fortpayment_release.setErrorEnabled(false);
        }
        EditText etText$fortpayment_release = getEtText();
        if (etText$fortpayment_release != null) {
            etText$fortpayment_release.setInputType(1);
        }
        EditText etText$fortpayment_release2 = getEtText();
        if (etText$fortpayment_release2 == null) {
            return;
        }
        etText$fortpayment_release2.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(50)});
    }

    @Override
    public boolean isValid() {
        return CreditCardUtils.isValidCardHolderName(String.valueOf(getText$fortpayment_release())) == null;
    }
}
