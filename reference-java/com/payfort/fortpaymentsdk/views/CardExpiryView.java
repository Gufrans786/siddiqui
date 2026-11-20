package com.payfort.fortpaymentsdk.views;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import ch.qos.logback.core.CoreConstants;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.utils.CreditCardUtils;
import com.payfort.fortpaymentsdk.views.model.FortViewTypes;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J \u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\r\u0010\u0011\u001a\u00020\u0012H\u0000¢\u0006\u0002\b\u0013J\r\u0010\u0014\u001a\u00020\u0012H\u0000¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\r\u0010\u0018\u001a\u00020\bH\u0000¢\u0006\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/CardExpiryView;", "Lcom/payfort/fortpaymentsdk/views/FortView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "controlDigits", "", "editable", "Landroid/text/Editable;", "formatExpiryDate", "expiryDateET", "Landroid/widget/EditText;", "lastInput", "", "currentInput", "getMonth", "", "getMonth$fortpayment_release", "getYear", "getYear$fortpayment_release", "isValid", "", "validateExpiryDate", "validateExpiryDate$fortpayment_release", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardExpiryView extends FortView {
    private static final int DEFAULT_MAX_LENGTH = 5;
    private static final char DIVIDER = '/';
    private static final String _DIVIDER = "/";

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FortError.values().length];
            try {
                iArr[FortError.EMPTY_CARD_DATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FortError.INVALID_CARD_EXPIRY_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FortError.INVALID_CARD_EXPIRY_FORMAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FortError.INVALID_CARD_EXPIRY_YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FortError.INVALID_CARD_EXPIRY_DATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CardExpiryView(Context context, AttributeSet attributeSet) {
        super(context, FortViewTypes.CARD_EXPIRY, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        TextInputLayout inputLayout$fortpayment_release = getInputLayout();
        if (inputLayout$fortpayment_release != null) {
            inputLayout$fortpayment_release.setErrorEnabled(false);
        }
        EditText etText$fortpayment_release = getEtText();
        if (etText$fortpayment_release != null) {
            etText$fortpayment_release.setInputType(2);
        }
        EditText etText$fortpayment_release2 = getEtText();
        if (etText$fortpayment_release2 != null) {
            etText$fortpayment_release2.setKeyListener(DigitsKeyListener.getInstance("1234567890/-"));
        }
        EditText etText$fortpayment_release3 = getEtText();
        if (etText$fortpayment_release3 != null) {
            etText$fortpayment_release3.setFilters(new InputFilter[]{new InputFilter.LengthFilter(5)});
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        EditText etText$fortpayment_release4 = getEtText();
        if (etText$fortpayment_release4 != null) {
            etText$fortpayment_release4.addTextChangedListener(new TextWatcher() {
                @Override
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }

                @Override
                public void afterTextChanged(Editable s) {
                    if (s != null) {
                        this.this$0.controlDigits(s);
                    }
                    CardExpiryView cardExpiryView = this.this$0;
                    EditText etText$fortpayment_release5 = cardExpiryView.getEtText();
                    Intrinsics.checkNotNull(etText$fortpayment_release5);
                    cardExpiryView.formatExpiryDate(etText$fortpayment_release5, (String) objectRef.element, String.valueOf(s));
                    objectRef.element = String.valueOf(this.this$0.getText$fortpayment_release());
                    this.this$0.setError(null);
                }
            });
        }
        setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                CardExpiryView._init_$lambda$2(this.f$0, view, z);
            }
        });
    }

    public static final void _init_$lambda$2(CardExpiryView this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            return;
        }
        this$0.validateExpiryDate$fortpayment_release();
    }

    public final int getMonth$fortpayment_release() {
        Integer intOrNull;
        String[] strArrSplit = TextUtils.split(getText$fortpayment_release(), _DIVIDER);
        if (strArrSplit == null) {
            strArrSplit = new String[0];
        }
        String str = (String) ArraysKt.getOrNull(strArrSplit, 0);
        if (str == null || (intOrNull = StringsKt.toIntOrNull(str)) == null) {
            return -1;
        }
        return intOrNull.intValue();
    }

    public final int getYear$fortpayment_release() {
        Integer intOrNull;
        String[] strArrSplit = TextUtils.split(getText$fortpayment_release(), _DIVIDER);
        if (strArrSplit == null) {
            strArrSplit = new String[0];
        }
        String str = (String) ArraysKt.getOrNull(strArrSplit, 1);
        if (str == null || (intOrNull = StringsKt.toIntOrNull(str)) == null) {
            return -1;
        }
        return intOrNull.intValue();
    }

    public final void validateExpiryDate$fortpayment_release() {
        int month$fortpayment_release = getMonth$fortpayment_release();
        int year$fortpayment_release = getYear$fortpayment_release();
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance()");
        FortError fortErrorIsValidCardExpiryDate = CreditCardUtils.isValidCardExpiryDate(calendar, Integer.valueOf(month$fortpayment_release), Integer.valueOf(year$fortpayment_release), getText$fortpayment_release());
        int i = fortErrorIsValidCardExpiryDate == null ? -1 : WhenMappings.$EnumSwitchMapping$0[fortErrorIsValidCardExpiryDate.ordinal()];
        if (i == -1) {
            setError(null);
            return;
        }
        if (i == 1) {
            setError(getResources().getString(R.string.pf_cancel_required_field));
            return;
        }
        if (i == 2 || i == 3) {
            setError(getResources().getString(R.string.pf_cancel_exp_date_invalid));
        } else if (i == 4 || i == 5) {
            setError(getResources().getString(R.string.pf_cancel_exp_date_in_past));
        }
    }

    @Override
    public boolean isValid() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance()");
        return CreditCardUtils.isValidCardExpiryDate(calendar, Integer.valueOf(getMonth$fortpayment_release()), Integer.valueOf(getYear$fortpayment_release()), getText$fortpayment_release()) == null;
    }

    public final void formatExpiryDate(EditText expiryDateET, String lastInput, String currentInput) {
        try {
            Calendar.getInstance().setTime(new SimpleDateFormat("MM/yy", Locale.US).parse(currentInput));
        } catch (ParseException unused) {
            if (currentInput.length() == 2 && !StringsKt.endsWith$default(lastInput, _DIVIDER, false, 2, (Object) null)) {
                if (Integer.parseInt(StringsKt.replace$default(currentInput, _DIVIDER, "", false, 4, (Object) null)) <= 12) {
                    expiryDateET.setText(((Object) expiryDateET.getText()) + _DIVIDER);
                    expiryDateET.setSelection(expiryDateET.getText().toString().length());
                    return;
                } else {
                    expiryDateET.setText("0" + expiryDateET.getText().toString().charAt(0) + _DIVIDER + expiryDateET.getText().toString().charAt(1));
                    expiryDateET.setSelection(expiryDateET.getText().toString().length());
                    return;
                }
            }
            if (currentInput.length() == 2 && StringsKt.endsWith$default(lastInput, _DIVIDER, false, 2, (Object) null)) {
                if (Integer.parseInt(StringsKt.replace$default(currentInput, _DIVIDER, "", false, 4, (Object) null)) <= 12) {
                    String strSubstring = expiryDateET.getText().toString().substring(0, 1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    expiryDateET.setText(strSubstring);
                    expiryDateET.setSelection(expiryDateET.getText().toString().length());
                    return;
                }
                expiryDateET.setText("");
                expiryDateET.setSelection(expiryDateET.getText().toString().length());
                return;
            }
            if (currentInput.length() != 1 || Integer.parseInt(StringsKt.replace$default(currentInput, _DIVIDER, "", false, 4, (Object) null)) <= 1) {
                return;
            }
            expiryDateET.setText("0" + ((Object) expiryDateET.getText()) + _DIVIDER);
            expiryDateET.setSelection(expiryDateET.getText().toString().length());
        }
    }

    public final void controlDigits(Editable editable) {
        for (int length = editable.toString().length(); length > 0; length--) {
            int i = length - 1;
            char cCharAt = editable.subSequence(i, length).charAt(0);
            if (('/' != cCharAt || i != 2) && !Character.isDigit(cCharAt)) {
                editable.replace(i, length, "");
            }
        }
    }
}
