package com.mapbox.maps.debugoptions;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.UtilsKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/debugoptions/CameraDebugView;", "Landroidx/appcompat/widget/AppCompatTextView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "update", "", "cameraState", "Lcom/mapbox/maps/CameraState;", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CameraDebugView extends AppCompatTextView {
    public CameraDebugView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public CameraDebugView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setTypeface(Typeface.MONOSPACE);
        int iFloatValue = (int) UtilsKt.toDP(Float.valueOf(4.0f), context).floatValue();
        setTextSize(13.0f);
        setPadding(iFloatValue, iFloatValue, iFloatValue, iFloatValue);
        setTextColor(ViewCompat.MEASURED_STATE_MASK);
        int iFloatValue2 = (int) UtilsKt.toDP(Float.valueOf(8.0f), context).floatValue();
        int iFloatValue3 = (int) UtilsKt.toDP(Float.valueOf(48.0f), context).floatValue();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(iFloatValue2, iFloatValue3, 0, 0);
        setLayoutParams(layoutParams);
        float fFloatValue = UtilsKt.toDP(Float.valueOf(5.0f), context).floatValue();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(fFloatValue);
        gradientDrawable.setColor(-1);
        setBackground(gradientDrawable);
    }

    public final void update(CameraState cameraState) {
        Intrinsics.checkNotNullParameter(cameraState, "cameraState");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        StyleSpan styleSpan = new StyleSpan(1);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) "lat:");
        spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
        String str = String.format(" %.4f", Arrays.copyOf(new Object[]{Double.valueOf(cameraState.getCenter().latitude())}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(this, *args)");
        SpannableStringBuilder spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) str).append((CharSequence) "\n");
        Intrinsics.checkNotNullExpressionValue(spannableStringBuilderAppend, "SpannableStringBuilder()…e()))\n      .append(\"\\n\")");
        StyleSpan styleSpan2 = new StyleSpan(1);
        int length2 = spannableStringBuilderAppend.length();
        spannableStringBuilderAppend.append((CharSequence) "lon:");
        spannableStringBuilderAppend.setSpan(styleSpan2, length2, spannableStringBuilderAppend.length(), 17);
        String str2 = String.format(" %.4f", Arrays.copyOf(new Object[]{Double.valueOf(cameraState.getCenter().longitude())}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(this, *args)");
        SpannableStringBuilder spannableStringBuilderAppend2 = spannableStringBuilderAppend.append((CharSequence) str2).append((CharSequence) "\n");
        Intrinsics.checkNotNullExpressionValue(spannableStringBuilderAppend2, "SpannableStringBuilder()…e()))\n      .append(\"\\n\")");
        StyleSpan styleSpan3 = new StyleSpan(1);
        int length3 = spannableStringBuilderAppend2.length();
        spannableStringBuilderAppend2.append((CharSequence) "zoom:");
        spannableStringBuilderAppend2.setSpan(styleSpan3, length3, spannableStringBuilderAppend2.length(), 17);
        String str3 = String.format(" %.2f", Arrays.copyOf(new Object[]{Double.valueOf(cameraState.getZoom())}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(this, *args)");
        SpannableStringBuilder string = spannableStringBuilderAppend2.append((CharSequence) str3);
        if (cameraState.getBearing() != 0.0d) {
            string.append((CharSequence) "\n");
            Intrinsics.checkNotNullExpressionValue(string, "string");
            StyleSpan styleSpan4 = new StyleSpan(1);
            int length4 = string.length();
            string.append((CharSequence) "bearing:");
            string.setSpan(styleSpan4, length4, string.length(), 17);
            String str4 = String.format(" %.2f", Arrays.copyOf(new Object[]{Double.valueOf(cameraState.getBearing())}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(this, *args)");
            string.append((CharSequence) str4);
        }
        if (cameraState.getPitch() != 0.0d) {
            string.append((CharSequence) "\n");
            Intrinsics.checkNotNullExpressionValue(string, "string");
            StyleSpan styleSpan5 = new StyleSpan(1);
            int length5 = string.length();
            string.append((CharSequence) "pitch:");
            string.setSpan(styleSpan5, length5, string.length(), 17);
            String str5 = String.format(" %.2f", Arrays.copyOf(new Object[]{Double.valueOf(cameraState.getPitch())}, 1));
            Intrinsics.checkNotNullExpressionValue(str5, "format(this, *args)");
            string.append((CharSequence) str5);
        }
        setText(string);
    }
}
