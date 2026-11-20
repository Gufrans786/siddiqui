package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.R;

public final class StcPayFragmentBinding implements ViewBinding {
    public final Button btnBack;
    public final MaterialButton btnContinue;
    public final ImageView currencySymbolIV;
    public final EditText etMobileNumber;
    public final EditText etOtp;
    public final FrameLayout loadingContainer;
    public final TextInputLayout mobileTextInputLayout;
    public final ProgressBar progressLoading;
    private final ConstraintLayout rootView;
    public final TextView textView;
    public final TextView tvAmount;

    private StcPayFragmentBinding(ConstraintLayout constraintLayout, Button button, MaterialButton materialButton, ImageView imageView, EditText editText, EditText editText2, FrameLayout frameLayout, TextInputLayout textInputLayout, ProgressBar progressBar, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnBack = button;
        this.btnContinue = materialButton;
        this.currencySymbolIV = imageView;
        this.etMobileNumber = editText;
        this.etOtp = editText2;
        this.loadingContainer = frameLayout;
        this.mobileTextInputLayout = textInputLayout;
        this.progressLoading = progressBar;
        this.textView = textView;
        this.tvAmount = textView2;
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static StcPayFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static StcPayFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.stc_pay_fragment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static StcPayFragmentBinding bind(View view) {
        int i = R.id.btnBack;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.btnContinue;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i);
            if (materialButton != null) {
                i = R.id.currencySymbolIV;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R.id.etMobileNumber;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText != null) {
                        i = R.id.etOtp;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText2 != null) {
                            i = R.id.loadingContainer;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                            if (frameLayout != null) {
                                i = R.id.mobileTextInputLayout;
                                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, i);
                                if (textInputLayout != null) {
                                    i = R.id.progressLoading;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                    if (progressBar != null) {
                                        i = R.id.textView;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = R.id.tvAmount;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView2 != null) {
                                                return new StcPayFragmentBinding((ConstraintLayout) view, button, materialButton, imageView, editText, editText2, frameLayout, textInputLayout, progressBar, textView, textView2);
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
