package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.views.CardCvvView;
import com.payfort.fortpaymentsdk.views.CardExpiryView;
import com.payfort.fortpaymentsdk.views.CardHolderNameView;
import com.payfort.fortpaymentsdk.views.FortCardNumberView;
import com.payfort.fortpaymentsdk.views.PayfortPayButton;

public final class ActivityCcPaymentBinding implements ViewBinding {
    public final LinearLayout amountContainer;
    public final TextView amountTV;
    public final AppBarLayout appbarLayout;
    public final PayfortPayButton btnPay;
    public final CardHolderNameView cardHolderNameView;
    public final ImageView currencySymbolIV;
    public final CardCvvView etCardCvv;
    public final CardExpiryView etCardExpiry;
    public final FortCardNumberView etCardNumberView;
    public final Guideline guideline;
    public final Guideline guideline2;
    public final LinearLayout linearLayout;
    public final RelativeLayout loadingContainer;
    public final ProgressBar progressLoading;
    public final LinearLayout rememberMeRL;
    public final ToggleButton rememberMeTB;
    private final ConstraintLayout rootView;
    public final Toolbar toolbar;

    private ActivityCcPaymentBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, AppBarLayout appBarLayout, PayfortPayButton payfortPayButton, CardHolderNameView cardHolderNameView, ImageView imageView, CardCvvView cardCvvView, CardExpiryView cardExpiryView, FortCardNumberView fortCardNumberView, Guideline guideline, Guideline guideline2, LinearLayout linearLayout2, RelativeLayout relativeLayout, ProgressBar progressBar, LinearLayout linearLayout3, ToggleButton toggleButton, Toolbar toolbar) {
        this.rootView = constraintLayout;
        this.amountContainer = linearLayout;
        this.amountTV = textView;
        this.appbarLayout = appBarLayout;
        this.btnPay = payfortPayButton;
        this.cardHolderNameView = cardHolderNameView;
        this.currencySymbolIV = imageView;
        this.etCardCvv = cardCvvView;
        this.etCardExpiry = cardExpiryView;
        this.etCardNumberView = fortCardNumberView;
        this.guideline = guideline;
        this.guideline2 = guideline2;
        this.linearLayout = linearLayout2;
        this.loadingContainer = relativeLayout;
        this.progressLoading = progressBar;
        this.rememberMeRL = linearLayout3;
        this.rememberMeTB = toggleButton;
        this.toolbar = toolbar;
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCcPaymentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCcPaymentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_cc_payment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCcPaymentBinding bind(View view) {
        int i = R.id.amountContainer;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R.id.amountTV;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.appbarLayout;
                AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, i);
                if (appBarLayout != null) {
                    i = R.id.btnPay;
                    PayfortPayButton payfortPayButton = (PayfortPayButton) ViewBindings.findChildViewById(view, i);
                    if (payfortPayButton != null) {
                        i = R.id.cardHolderNameView;
                        CardHolderNameView cardHolderNameView = (CardHolderNameView) ViewBindings.findChildViewById(view, i);
                        if (cardHolderNameView != null) {
                            i = R.id.currencySymbolIV;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = R.id.etCardCvv;
                                CardCvvView cardCvvView = (CardCvvView) ViewBindings.findChildViewById(view, i);
                                if (cardCvvView != null) {
                                    i = R.id.etCardExpiry;
                                    CardExpiryView cardExpiryView = (CardExpiryView) ViewBindings.findChildViewById(view, i);
                                    if (cardExpiryView != null) {
                                        i = R.id.etCardNumberView;
                                        FortCardNumberView fortCardNumberView = (FortCardNumberView) ViewBindings.findChildViewById(view, i);
                                        if (fortCardNumberView != null) {
                                            i = R.id.guideline;
                                            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
                                            if (guideline != null) {
                                                i = R.id.guideline2;
                                                Guideline guideline2 = (Guideline) ViewBindings.findChildViewById(view, i);
                                                if (guideline2 != null) {
                                                    i = R.id.linearLayout;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout2 != null) {
                                                        i = R.id.loadingContainer;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                        if (relativeLayout != null) {
                                                            i = R.id.progressLoading;
                                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                                            if (progressBar != null) {
                                                                i = R.id.rememberMeRL;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout3 != null) {
                                                                    i = R.id.rememberMeTB;
                                                                    ToggleButton toggleButton = (ToggleButton) ViewBindings.findChildViewById(view, i);
                                                                    if (toggleButton != null) {
                                                                        i = R.id.toolbar;
                                                                        Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i);
                                                                        if (toolbar != null) {
                                                                            return new ActivityCcPaymentBinding((ConstraintLayout) view, linearLayout, textView, appBarLayout, payfortPayButton, cardHolderNameView, imageView, cardCvvView, cardExpiryView, fortCardNumberView, guideline, guideline2, linearLayout2, relativeLayout, progressBar, linearLayout3, toggleButton, toolbar);
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
