package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutValidationResult;

public class InputLayout extends LinearLayout {
    private TextInputLayout a;
    private EditText b;
    private TextView c;
    private c d;
    private boolean e;
    private boolean f;
    private d g;
    IPaymentFormListener h;

    class a implements TextWatcher {
        a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (InputLayout.this.g != null) {
                InputLayout.this.g.a(editable);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    static class b {
        static final int[] a;

        static {
            int[] iArr = new int[CheckoutValidationResult.values().length];
            a = iArr;
            try {
                iArr[CheckoutValidationResult.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CheckoutValidationResult.NOT_VALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    interface c {
        int a();

        int a(CharSequence charSequence);

        CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener);
    }

    interface d {
        void a(Editable editable);

        void a(boolean z);
    }

    private static class e extends View.BaseSavedState {
        public static final Parcelable.Creator<e> CREATOR = new a();
        int a;

        class a implements Parcelable.Creator<e> {
            a() {
            }

            @Override
            public e createFromParcel(Parcel parcel) {
                return new e(parcel, null);
            }

            @Override
            public e[] newArray(int i) {
                return new e[i];
            }
        }

        e(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }

        e(Parcelable parcelable) {
            super(parcelable);
        }

        private e(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
        }
    }

    public InputLayout(Context context) {
        this(context, null);
    }

    private void b() {
        TextInputLayout textInputLayout = (TextInputLayout) findViewById(R.id.text_input_layout);
        this.a = textInputLayout;
        textInputLayout.setErrorEnabled(true);
        EditText editText = (EditText) findViewById(R.id.edit_text);
        this.b = editText;
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                this.f$0.a(view, z);
            }
        });
        this.b.addTextChangedListener(new a());
        TextView textView = (TextView) findViewById(R.id.helper_text_view);
        this.c = textView;
        textView.setVisibility(4);
    }

    private void c() {
        if (this.c.getVisibility() == 4) {
            this.c.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.opp_helper_in));
            this.c.setVisibility(0);
        }
    }

    public void clear() {
        clearError();
        a();
    }

    public void clearError() {
        this.a.setError(null);
        this.c.setText("");
        this.e = false;
    }

    public EditText getEditText() {
        return this.b;
    }

    public String getErrorText() {
        return this.c.getText().toString();
    }

    public String getHelperText() {
        return this.c.getHint() != null ? this.c.getHint().toString() : "";
    }

    TextView getHelperTextView() {
        return this.c;
    }

    public String getHint() {
        if (this.a.getHint() != null) {
            return this.a.getHint().toString();
        }
        return null;
    }

    @Override
    public int getPaddingStart() {
        return this.b.getPaddingStart();
    }

    public String getText() {
        return this.b.getText().toString();
    }

    public boolean hasError() {
        return this.e;
    }

    public boolean isEmpty() {
        return TextUtils.isEmpty(this.b.getText());
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.b.getId() == R.id.edit_text) {
            this.b.setId(LinearLayout.generateViewId());
        }
        if (this.b.getText().toString().isEmpty()) {
            return;
        }
        validate();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.getSuperState());
        this.b.setId(eVar.a);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        e eVar = new e(super.onSaveInstanceState());
        eVar.a = this.b.getId();
        return eVar;
    }

    public void setGravityForRTLLanguages() {
        this.b.setTextDirection(3);
        this.b.setEllipsize(TextUtils.TruncateAt.END);
        this.b.setGravity(8388629);
    }

    public void setHelperText(String str) {
        this.c.setHint(str);
    }

    public void setHint(String str) {
        this.a.setHint(str);
    }

    public void setInputValidator(c cVar) {
        this.d = cVar;
    }

    public void setListener(d dVar) {
        this.g = dVar;
    }

    public void setNotEditableText(String str) {
        this.b.setText(str);
        this.b.setFocusable(false);
        this.b.setBackgroundResource(0);
        a();
    }

    public void setOptional(boolean z) {
        this.f = z;
    }

    public void setPaddingEnd(int i) {
        EditText editText = this.b;
        editText.setPaddingRelative(editText.getPaddingStart(), this.b.getPaddingTop(), i, this.b.getPaddingBottom());
    }

    public void setPaddingStart(int i) {
        EditText editText = this.b;
        editText.setPaddingRelative(i, editText.getPaddingTop(), this.b.getPaddingEnd(), this.b.getPaddingBottom());
    }

    public void setPaymentFormListener(IPaymentFormListener iPaymentFormListener) {
        this.h = iPaymentFormListener;
    }

    public void setSelectionAtTheEnd() {
        EditText editText = this.b;
        editText.setSelection(editText.getText().length());
    }

    public void setText(String str) {
        this.b.setText(str);
    }

    public void showError(String str) {
        this.a.setError(" ");
        c();
        this.c.setText(str);
        this.e = true;
    }

    public boolean validate() {
        if (!this.b.isFocusable()) {
            return true;
        }
        if (this.d == null) {
            a();
            return false;
        }
        int iA = a(this.b.getText());
        if (iA == -1) {
            clearError();
            a();
        } else {
            showError(getContext().getString(iA));
        }
        return iA == -1;
    }

    public InputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
        setSaveEnabled(true);
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (layoutInflater != null) {
            layoutInflater.inflate(R.layout.opp_layout_input, (ViewGroup) this, true);
            b();
        }
    }

    public void a(View view, boolean z) {
        if (z) {
            clearError();
            c();
        } else {
            validate();
        }
        d dVar = this.g;
        if (dVar != null) {
            dVar.a(z);
        }
    }

    private int a(CharSequence charSequence) {
        int i = b.a[this.d.a(charSequence.toString(), this.h).ordinal()];
        if (i != 1) {
            if (i != 2) {
                return -1;
            }
            return this.d.a();
        }
        if (TextUtils.isEmpty(charSequence) && this.f) {
            return -1;
        }
        return this.d.a(charSequence);
    }

    public InputLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet);
    }

    private void a() {
        this.c.setVisibility(4);
    }

    public InputLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet);
    }
}
