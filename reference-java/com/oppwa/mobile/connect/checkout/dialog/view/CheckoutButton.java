package com.oppwa.mobile.connect.checkout.dialog.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import com.oppwa.mobile.connect.R;

public class CheckoutButton extends AppCompatButton {
    public CheckoutButton(Context context) {
        super(context);
    }

    private void a(Context context, AttributeSet attributeSet) {
        Typeface typefaceA = a.a(context, attributeSet, R.styleable.CheckoutView, R.styleable.CheckoutView_typeface);
        if (typefaceA != null) {
            setTypeface(typefaceA);
        }
    }

    public CheckoutButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public CheckoutButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }
}
