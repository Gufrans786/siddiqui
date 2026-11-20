package com.payfort.fortpaymentsdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.R;

public final class FortViewBinding implements ViewBinding {
    public final EditText etText;
    public final TextInputLayout inputLayout;
    private final LinearLayout rootView;

    private FortViewBinding(LinearLayout linearLayout, EditText editText, TextInputLayout textInputLayout) {
        this.rootView = linearLayout;
        this.etText = editText;
        this.inputLayout = textInputLayout;
    }

    @Override
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FortViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FortViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fort_view, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FortViewBinding bind(View view) {
        int i = R.id.etText;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R.id.inputLayout;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, i);
            if (textInputLayout != null) {
                return new FortViewBinding((LinearLayout) view, editText, textInputLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
