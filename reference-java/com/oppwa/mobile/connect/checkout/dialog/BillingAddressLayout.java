package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.widget.TextViewCompat;
import com.oppwa.mobile.connect.R;

public class BillingAddressLayout extends RelativeLayout {
    private TextView a;

    public BillingAddressLayout(Context context) {
        this(context, null);
    }

    private void a() {
        this.a = (TextView) findViewById(R.id.billing_address_text_view);
    }

    public void changeStyleOfBillingAddress(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{i});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        TextViewCompat.setTextAppearance(this.a, resourceId);
    }

    public void showBillingAddress(String str) {
        this.a.setText(str);
    }

    public BillingAddressLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (layoutInflater != null) {
            layoutInflater.inflate(R.layout.opp_layout_billing_address, (ViewGroup) this, true);
            a();
        }
    }
}
