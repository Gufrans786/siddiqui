package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.payfort.fortpaymentsdk.R;

public final class RepeatStcFragmentBinding implements ViewBinding {
    public final Button btnBack;
    public final TextView btnChangeMobile;
    public final MaterialButton btnContinue;
    public final ImageView currencySymbolIV;
    public final View firstUnderLine;
    public final ConstraintLayout header;
    public final LinearLayoutCompat holder;
    public final ProgressBar progressLoading;
    private final ConstraintLayout rootView;
    public final TextView textView;
    public final TextView tvAmount;
    public final TextView tvMobileNumber;

    private RepeatStcFragmentBinding(ConstraintLayout constraintLayout, Button button, TextView textView, MaterialButton materialButton, ImageView imageView, View view, ConstraintLayout constraintLayout2, LinearLayoutCompat linearLayoutCompat, ProgressBar progressBar, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnBack = button;
        this.btnChangeMobile = textView;
        this.btnContinue = materialButton;
        this.currencySymbolIV = imageView;
        this.firstUnderLine = view;
        this.header = constraintLayout2;
        this.holder = linearLayoutCompat;
        this.progressLoading = progressBar;
        this.textView = textView2;
        this.tvAmount = textView3;
        this.tvMobileNumber = textView4;
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static RepeatStcFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RepeatStcFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.repeat_stc_fragment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RepeatStcFragmentBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.btnBack;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.btnChangeMobile;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.btnContinue;
                MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i);
                if (materialButton != null) {
                    i = R.id.currencySymbolIV;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.firstUnderLine))) != null) {
                        i = R.id.header;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                        if (constraintLayout != null) {
                            i = R.id.holder;
                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                            if (linearLayoutCompat != null) {
                                i = R.id.progressLoading;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                if (progressBar != null) {
                                    i = R.id.textView;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = R.id.tvAmount;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = R.id.tvMobileNumber;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null) {
                                                return new RepeatStcFragmentBinding((ConstraintLayout) view, button, textView, materialButton, imageView, viewFindChildViewById, constraintLayout, linearLayoutCompat, progressBar, textView2, textView3, textView4);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
