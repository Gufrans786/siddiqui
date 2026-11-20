package com.nsoftware.ipworks3ds.sdk.core;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
import nts.C0558;

public class SDKScrollView extends ScrollView {
    public SDKScrollView(Context context) {
        super(context);
    }

    @Override
    public boolean onFilterTouchEventForSecurity(MotionEvent motionEvent) {
        if ((motionEvent.getFlags() & 1) != 1) {
            return super.onFilterTouchEventForSecurity(motionEvent);
        }
        C0558.m5488();
        return false;
    }

    public SDKScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SDKScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SDKScrollView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
