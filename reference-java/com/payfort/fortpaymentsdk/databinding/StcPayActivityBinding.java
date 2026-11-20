package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.payfort.fortpaymentsdk.R;

public final class StcPayActivityBinding implements ViewBinding {
    public final FragmentContainerView navHostFragmentContent;
    private final ConstraintLayout rootView;

    private StcPayActivityBinding(ConstraintLayout constraintLayout, FragmentContainerView fragmentContainerView) {
        this.rootView = constraintLayout;
        this.navHostFragmentContent = fragmentContainerView;
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static StcPayActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static StcPayActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.stc_pay_activity, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static StcPayActivityBinding bind(View view) {
        int i = R.id.nav_host_fragment_content;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
        if (fragmentContainerView != null) {
            return new StcPayActivityBinding((ConstraintLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
