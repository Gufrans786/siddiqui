package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.payfort.fortpaymentsdk.R;

public final class ActivityInitSecureConnBinding implements ViewBinding {
    public final RelativeLayout initContainerRL;
    public final ProgressBar newtonCradleLoading;
    private final RelativeLayout rootView;

    private ActivityInitSecureConnBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, ProgressBar progressBar) {
        this.rootView = relativeLayout;
        this.initContainerRL = relativeLayout2;
        this.newtonCradleLoading = progressBar;
    }

    @Override
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityInitSecureConnBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityInitSecureConnBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_init_secure_conn, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityInitSecureConnBinding bind(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i = R.id.newton_cradle_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            return new ActivityInitSecureConnBinding(relativeLayout, relativeLayout, progressBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
