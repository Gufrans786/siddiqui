package com.payfort.fortpaymentsdk.views;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.views.model.FortViewTypes;
import com.reactcommunity.rndatetimepicker.Common;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u0000 R2\u00020\u0001:\u0001RB#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\n\u0010B\u001a\u0004\u0018\u00010CH\u0016J\"\u0010D\u001a\u0004\u0018\u00010\u00182\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\n2\u0006\u0010H\u001a\u00020\nH\u0002J\b\u0010I\u001a\u00020JH&J\u0010\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020JH\u0016J\u0010\u0010N\u001a\u00020L2\b\u0010O\u001a\u0004\u0018\u00010\u0018J\u0012\u0010P\u001a\u00020L2\b\u0010Q\u001a\u0004\u0018\u00010CH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R$\u0010\u0015\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R(\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\f\u001a\u0004\u0018\u00010\u0018@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R$\u0010!\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R(\u0010*\u001a\u0004\u0018\u00010\u00182\b\u0010\f\u001a\u0004\u0018\u00010\u0018@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR$\u0010-\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u000f\"\u0004\b/\u0010\u0011R\u001c\u00100\u001a\u0004\u0018\u000101X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R*\u00106\u001a\u0004\u0018\u00010\u00182\b\u0010\f\u001a\u0004\u0018\u00010\u00188@@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u001b\"\u0004\b8\u0010\u001dR$\u00109\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u000f\"\u0004\b;\u0010\u0011R$\u0010=\u001a\u00020<2\u0006\u0010\f\u001a\u00020<@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006S"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/FortView;", "Landroid/widget/FrameLayout;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortViewType", "Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V", "DEFAULT_COLOR", "", "GRAY_HINT_COLOR", "value", "boxBackgroundColor", "getBoxBackgroundColor", "()I", "setBoxBackgroundColor", "(I)V", "boxBackgroundMode", "getBoxBackgroundMode", "setBoxBackgroundMode", "boxStrokeErrorColor", "getBoxStrokeErrorColor", "setBoxStrokeErrorColor", "", "errorText", "getErrorText", "()Ljava/lang/String;", "setErrorText", "(Ljava/lang/String;)V", "errorTextAppearance", "getErrorTextAppearance", "setErrorTextAppearance", "errorTextColor", "getErrorTextColor", "setErrorTextColor", "etText", "Landroid/widget/EditText;", "getEtText$fortpayment_release", "()Landroid/widget/EditText;", "setEtText$fortpayment_release", "(Landroid/widget/EditText;)V", "hint", "getHint", "setHint", "hintTextColor", "getHintTextColor", "setHintTextColor", "inputLayout", "Lcom/google/android/material/textfield/TextInputLayout;", "getInputLayout$fortpayment_release", "()Lcom/google/android/material/textfield/TextInputLayout;", "setInputLayout$fortpayment_release", "(Lcom/google/android/material/textfield/TextInputLayout;)V", "text", "getText$fortpayment_release", "setText$fortpayment_release", Common.TEXT_COLOR, "getTextColor", "setTextColor", "", "textSize", "getTextSize", "()F", "setTextSize", "(F)V", "getOnFocusChangeListener", "Landroid/view/View$OnFocusChangeListener;", "getValueFromStyle", "a", "Landroid/content/res/TypedArray;", "resourcesIndex", "defaultValue", "isValid", "", "setEnabled", "", ViewProps.ENABLED, "setError", "error", "setOnFocusChangeListener", "l", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class FortView extends FrameLayout {
    private static final int DEFAULT_BOX_SHAPE = 1;
    private static final float DEFAULT_SIZE = 13.0f;
    private final int DEFAULT_COLOR;
    private final int GRAY_HINT_COLOR;
    private int boxBackgroundColor;
    private int boxBackgroundMode;
    private int boxStrokeErrorColor;
    private String errorText;
    private int errorTextAppearance;
    private int errorTextColor;
    private EditText etText;
    private String hint;
    private int hintTextColor;
    private TextInputLayout inputLayout;
    private String text;
    private int textColor;
    private float textSize;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FortViewTypes.values().length];
            try {
                iArr[FortViewTypes.CARD_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FortViewTypes.CARD_EXPIRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FortViewTypes.CARD_HOLDER_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FortViewTypes.CARD_CVV.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FortView(Context context, FortViewTypes fortViewType) {
        this(context, fortViewType, null, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortViewType, "fortViewType");
    }

    public abstract boolean isValid();

    public FortView(Context context, FortViewTypes fortViewTypes, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, fortViewTypes, (i & 4) != 0 ? null : attributeSet);
    }

    public FortView(Context context, FortViewTypes fortViewType, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fortViewType, "fortViewType");
        int color = ContextCompat.getColor(context, R.color.black);
        this.DEFAULT_COLOR = color;
        int color2 = ContextCompat.getColor(context, R.color.darker_gray);
        this.GRAY_HINT_COLOR = color2;
        this.textColor = ViewCompat.MEASURED_STATE_MASK;
        this.text = "";
        this.textSize = DEFAULT_SIZE;
        this.hint = "";
        this.hintTextColor = -3355444;
        this.boxBackgroundMode = 1;
        this.boxBackgroundColor = ViewCompat.MEASURED_STATE_MASK;
        this.boxStrokeErrorColor = SupportMenu.CATEGORY_MASK;
        this.errorTextColor = SupportMenu.CATEGORY_MASK;
        Object systemService = context.getSystemService("layout_inflater");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
        View viewInflate = ((LayoutInflater) systemService).inflate(com.payfort.fortpaymentsdk.R.layout.fort_view, (ViewGroup) this, true);
        this.etText = (EditText) viewInflate.findViewById(com.payfort.fortpaymentsdk.R.id.etText);
        this.inputLayout = (TextInputLayout) viewInflate.findViewById(com.payfort.fortpaymentsdk.R.id.inputLayout);
        EditText editText = this.etText;
        Intrinsics.checkNotNull(editText, "null cannot be cast to non-null type android.view.View");
        ViewCompat.setBackgroundTintList(editText, ColorStateList.valueOf(0));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.payfort.fortpaymentsdk.R.styleable.FortView);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…rs, R.styleable.FortView)");
        setTextSize(typedArrayObtainStyledAttributes.getDimension(com.payfort.fortpaymentsdk.R.styleable.FortView_textSize, Utils.convertDpToPixel(DEFAULT_SIZE, context)));
        setTextColor(typedArrayObtainStyledAttributes.getColor(com.payfort.fortpaymentsdk.R.styleable.FortView_textColor, color));
        setHintTextColor(typedArrayObtainStyledAttributes.getColor(com.payfort.fortpaymentsdk.R.styleable.FortView_hintTextColor, color2));
        setBoxBackgroundColor(typedArrayObtainStyledAttributes.getColor(com.payfort.fortpaymentsdk.R.styleable.FortView_boxBackgroundColor, color));
        setBoxBackgroundMode(typedArrayObtainStyledAttributes.getInt(com.payfort.fortpaymentsdk.R.styleable.FortView_boxBackgroundShape, 1));
        setErrorTextAppearance(typedArrayObtainStyledAttributes.getInt(com.payfort.fortpaymentsdk.R.styleable.FortView_errorTextAppearance, 0));
        setErrorTextColor(typedArrayObtainStyledAttributes.getColor(com.payfort.fortpaymentsdk.R.styleable.FortView_errorTextColor, SupportMenu.CATEGORY_MASK));
        setBoxStrokeErrorColor(typedArrayObtainStyledAttributes.getColor(com.payfort.fortpaymentsdk.R.styleable.FortView_boxStrokeErrorColor, SupportMenu.CATEGORY_MASK));
        int i = WhenMappings.$EnumSwitchMapping$0[fortViewType.ordinal()];
        if (i == 1) {
            setHint(getValueFromStyle(typedArrayObtainStyledAttributes, com.payfort.fortpaymentsdk.R.styleable.FortView_hintText, com.payfort.fortpaymentsdk.R.string.pf_card_number_hint));
        } else if (i == 2) {
            setHint(getValueFromStyle(typedArrayObtainStyledAttributes, com.payfort.fortpaymentsdk.R.styleable.FortView_hintText, com.payfort.fortpaymentsdk.R.string.pf_expiry_date_hint));
        } else if (i == 3) {
            setHint(getValueFromStyle(typedArrayObtainStyledAttributes, com.payfort.fortpaymentsdk.R.styleable.FortView_hintText, com.payfort.fortpaymentsdk.R.string.pf_cardholder_name_hint));
        } else if (i == 4) {
            setHint(getValueFromStyle(typedArrayObtainStyledAttributes, com.payfort.fortpaymentsdk.R.styleable.FortView_hintText, com.payfort.fortpaymentsdk.R.string.pf_cvv_hint));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final EditText getEtText() {
        return this.etText;
    }

    public final void setEtText$fortpayment_release(EditText editText) {
        this.etText = editText;
    }

    public final TextInputLayout getInputLayout() {
        return this.inputLayout;
    }

    public final void setInputLayout$fortpayment_release(TextInputLayout textInputLayout) {
        this.inputLayout = textInputLayout;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
        EditText editText = this.etText;
        if (editText != null) {
            editText.setTextColor(i);
        }
    }

    public final void setText$fortpayment_release(String str) {
        this.text = str;
        EditText editText = this.etText;
        if (editText != null) {
            editText.setText(str);
        }
    }

    public final String getText$fortpayment_release() {
        EditText editText = this.etText;
        return StringsKt.trim((CharSequence) String.valueOf(editText != null ? editText.getText() : null)).toString();
    }

    public final float getTextSize() {
        return this.textSize;
    }

    public final void setTextSize(float f) {
        this.textSize = f;
        EditText editText = this.etText;
        if (editText != null) {
            editText.setTextSize(0, f);
        }
    }

    public final String getHint() {
        return this.hint;
    }

    public final void setHint(String str) {
        this.hint = str;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout != null) {
            textInputLayout.setHint(str);
        }
        TextInputLayout textInputLayout2 = this.inputLayout;
        if (textInputLayout2 != null) {
            textInputLayout2.getHint();
        }
    }

    public final int getHintTextColor() {
        return this.hintTextColor;
    }

    public final void setHintTextColor(int i) {
        this.hintTextColor = i;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout == null) {
            return;
        }
        textInputLayout.setHintTextColor(ColorStateList.valueOf(i));
    }

    public final int getBoxBackgroundMode() {
        return this.boxBackgroundMode;
    }

    public final void setBoxBackgroundMode(int i) {
        this.boxBackgroundMode = i;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout == null) {
            return;
        }
        textInputLayout.setBoxBackgroundMode(i);
    }

    public final int getBoxBackgroundColor() {
        return this.boxBackgroundColor;
    }

    public final void setBoxBackgroundColor(int i) {
        this.boxBackgroundColor = i;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout == null) {
            return;
        }
        textInputLayout.setBoxBackgroundColor(i);
    }

    public final int getErrorTextAppearance() {
        return this.errorTextAppearance;
    }

    public final void setErrorTextAppearance(int i) {
        this.errorTextAppearance = i;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout != null) {
            textInputLayout.setErrorTextAppearance(i);
        }
    }

    public final int getBoxStrokeErrorColor() {
        return this.boxStrokeErrorColor;
    }

    public final void setBoxStrokeErrorColor(int i) {
        this.boxStrokeErrorColor = i;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout == null) {
            return;
        }
        textInputLayout.setBoxStrokeErrorColor(ColorStateList.valueOf(i));
    }

    public final int getErrorTextColor() {
        return this.errorTextColor;
    }

    public final void setErrorTextColor(int i) {
        this.errorTextColor = i;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout != null) {
            textInputLayout.setErrorTextColor(ColorStateList.valueOf(i));
        }
    }

    public String getErrorText() {
        return this.errorText;
    }

    public void setErrorText(String str) {
        this.errorText = str;
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout == null) {
            return;
        }
        textInputLayout.setError(str);
    }

    @Override
    public void setEnabled(boolean enabled) {
        EditText editText = this.etText;
        if (editText != null) {
            editText.setEnabled(enabled);
        }
        TextInputLayout textInputLayout = this.inputLayout;
        if (textInputLayout != null) {
            textInputLayout.setEnabled(enabled);
        }
        super.setEnabled(enabled);
    }

    public final void setError(String error) {
        if (error == null) {
            TextInputLayout textInputLayout = this.inputLayout;
            if (textInputLayout != null) {
                textInputLayout.setErrorEnabled(false);
            }
            setErrorText(null);
            return;
        }
        TextInputLayout textInputLayout2 = this.inputLayout;
        if (textInputLayout2 != null) {
            textInputLayout2.setErrorEnabled(true);
        }
        setErrorText(error);
    }

    @Override
    public View.OnFocusChangeListener getOnFocusChangeListener() {
        EditText editText = this.etText;
        if (editText != null) {
            return editText.getOnFocusChangeListener();
        }
        return null;
    }

    @Override
    public void setOnFocusChangeListener(View.OnFocusChangeListener l) {
        EditText editText = this.etText;
        if (editText == null) {
            return;
        }
        editText.setOnFocusChangeListener(l);
    }

    private final String getValueFromStyle(TypedArray a, int resourcesIndex, int defaultValue) {
        return a.hasValue(resourcesIndex) ? a.getString(resourcesIndex) : getResources().getString(a.getResourceId(resourcesIndex, defaultValue));
    }
}
