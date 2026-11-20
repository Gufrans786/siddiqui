package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.payfort.fortpaymentsdk.R;

public final class ActivityCcResponseBinding implements ViewBinding {
    public final RelativeLayout responseContainerRL;
    public final TextView responseInfo1TV;
    public final TextView responseInfo2TV;
    public final TextView responseStatusHintTV;
    public final TextView responseStatusIconIV;
    private final RelativeLayout rootView;

    private ActivityCcResponseBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.responseContainerRL = relativeLayout2;
        this.responseInfo1TV = textView;
        this.responseInfo2TV = textView2;
        this.responseStatusHintTV = textView3;
        this.responseStatusIconIV = textView4;
    }

    @Override
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCcResponseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCcResponseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_cc_response, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCcResponseBinding bind(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i = R.id.responseInfo1TV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.responseInfo2TV;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.responseStatusHintTV;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView3 != null) {
                    i = R.id.responseStatusIconIV;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView4 != null) {
                        return new ActivityCcResponseBinding(relativeLayout, relativeLayout, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
