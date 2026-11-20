package com.nsoftware.ipworks3ds.sdk.core;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.nsoftware.ipworks3ds.sdk.R;

public class SDKToolbarLayout extends AppBarLayout {

    public static Button f35;

    public final TextView f36;

    public SDKToolbarLayout(Context context) {
        this(context, null);
    }

    public static Button getCancelButton() {
        return f35;
    }

    public void setActionBarHeight(int i) {
        this.f36.setHeight(TypedValue.complexToDimensionPixelSize(i, getResources().getDisplayMetrics()));
    }

    public void setCancelButtonText(String str) {
        f35.setText(str);
    }

    public void setCancelButtonTextColor(int i) {
        f35.setTextColor(i);
    }

    public void setCancelButtonTextTypeface(Typeface typeface) {
        f35.setTypeface(typeface);
    }

    public void setTitle(String str) {
        this.f36.setText(str);
    }

    public void setTitleFontSize(Integer num) {
        this.f36.setTextSize(num.intValue());
    }

    public void setTitleTextColor(int i) {
        this.f36.setTextColor(i);
    }

    public void setTitleTypeface(Typeface typeface) {
        this.f36.setTypeface(typeface);
    }

    public void m1178(int i, int i2, int i3, int i4) {
        TypedValue typedValue = new TypedValue();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        if (getContext().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            int iComplexToDimensionPixelSize = (TypedValue.complexToDimensionPixelSize(typedValue.data, displayMetrics) / 3) * 2;
            if (i2 > iComplexToDimensionPixelSize) {
                i2 = iComplexToDimensionPixelSize;
            }
            if (i4 > iComplexToDimensionPixelSize) {
                i4 = iComplexToDimensionPixelSize;
            }
            if (i2 + i4 > iComplexToDimensionPixelSize) {
                i2 = 0;
                i4 = 0;
            }
        }
        int i5 = (displayMetrics.widthPixels / 5) * 4;
        if (i3 > i5) {
            i3 = i5;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) f35.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.bottomMargin = i4;
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i3;
    }

    public SDKToolbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AppBarLayout.inflate(context, R.layout.nsoftware_toolbar, this);
        f35 = (Button) findViewById(R.id.cancel);
        this.f36 = (TextView) findViewById(R.id.toolbar_title);
        TypedValue typedValue = new TypedValue();
        TypedValue typedValue2 = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true)) {
            setBackgroundColor(typedValue.data);
        }
        if (context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue2, true)) {
            setActionBarHeight(typedValue2.data);
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.toolbar_layout);
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.height = TypedValue.complexToDimensionPixelSize(typedValue2.data, getResources().getDisplayMetrics());
            linearLayout.setLayoutParams(layoutParams);
        }
    }
}
