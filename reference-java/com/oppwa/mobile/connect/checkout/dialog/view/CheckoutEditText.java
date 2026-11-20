package com.oppwa.mobile.connect.checkout.dialog.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import com.google.android.material.textfield.TextInputEditText;
import com.oppwa.mobile.connect.R;

public class CheckoutEditText extends TextInputEditText {
    private static final int[] b = {R.attr.state_error};
    private boolean a;

    public CheckoutEditText(Context context) {
        super(context);
    }

    private void a(Context context, AttributeSet attributeSet) {
        Typeface typefaceA = a.a(context, attributeSet, R.styleable.CheckoutView, R.styleable.CheckoutView_typeface);
        if (typefaceA != null) {
            setTypeface(typefaceA);
        }
    }

    @Override
    protected int[] onCreateDrawableState(int i) {
        if (!this.a) {
            return super.onCreateDrawableState(i);
        }
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        TextInputEditText.mergeDrawableStates(iArrOnCreateDrawableState, b);
        return iArrOnCreateDrawableState;
    }

    public void setErrorState(boolean z) {
        if (this.a != z) {
            this.a = z;
            refreshDrawableState();
        }
    }

    public CheckoutEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public CheckoutEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }
}
