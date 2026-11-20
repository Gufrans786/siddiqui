package com.oppwa.mobile.connect.checkout.dialog.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;

class a {
    static Typeface a(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        Typeface typefaceB = b.b(context, typedArrayObtainStyledAttributes.getString(i));
        typedArrayObtainStyledAttributes.recycle();
        return typefaceB;
    }
}
