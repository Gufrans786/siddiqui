package com.mapbox.maps.debugoptions;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.UtilsKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/debugoptions/PaddingDebugView;", "Landroid/widget/FrameLayout;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", ViewProps.BOTTOM, "Landroid/widget/TextView;", ViewProps.LEFT, "paddingFrame", ViewProps.RIGHT, ViewProps.TOP, "update", "", ViewProps.PADDING, "Lcom/mapbox/maps/EdgeInsets;", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PaddingDebugView extends FrameLayout {
    private final TextView bottom;
    private final TextView left;
    private final FrameLayout paddingFrame;
    private final TextView right;
    private final TextView top;

    public PaddingDebugView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public PaddingDebugView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout frameLayout = new FrameLayout(context);
        this.paddingFrame = frameLayout;
        TextView textView = new TextView(context);
        this.top = textView;
        TextView textView2 = new TextView(context);
        this.left = textView2;
        TextView textView3 = new TextView(context);
        this.right = textView3;
        TextView textView4 = new TextView(context);
        this.bottom = textView4;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        Float fValueOf = Float.valueOf(1.0f);
        gradientDrawable.setStroke((int) UtilsKt.toDP(fValueOf, context).floatValue(), PaddingDebugViewKt.GREEN_DARK);
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        CrossView crossView = new CrossView(context, null, 0, 6, null);
        Float fValueOf2 = Float.valueOf(15.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) UtilsKt.toDP(fValueOf2, context).floatValue(), (int) UtilsKt.toDP(fValueOf2, context).floatValue());
        layoutParams.gravity = 17;
        crossView.setLayoutParams(layoutParams);
        for (TextView textView5 : CollectionsKt.listOf((Object[]) new TextView[]{textView, textView2, textView3, textView4})) {
            textView5.setTypeface(Typeface.MONOSPACE);
            textView5.setTextSize(10.0f);
            textView5.setTextColor(-1);
            textView5.setBackgroundColor(PaddingDebugViewKt.GREEN_DARK);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            if (Intrinsics.areEqual(textView5, this.top)) {
                layoutParams2.gravity = 1;
            } else if (Intrinsics.areEqual(textView5, this.left)) {
                layoutParams2.gravity = 16;
            } else if (Intrinsics.areEqual(textView5, this.right)) {
                layoutParams2.gravity = 21;
            } else if (Intrinsics.areEqual(textView5, this.bottom)) {
                layoutParams2.gravity = 81;
            }
            layoutParams2.leftMargin = (int) UtilsKt.toDP(fValueOf, context).floatValue();
            layoutParams2.rightMargin = (int) UtilsKt.toDP(fValueOf, context).floatValue();
            textView5.setLayoutParams(layoutParams2);
            textView5.setPadding((int) UtilsKt.toDP(fValueOf, context).floatValue(), 0, (int) UtilsKt.toDP(fValueOf, context).floatValue(), 0);
            this.paddingFrame.addView(textView5);
        }
        this.paddingFrame.addView(crossView);
        addView(this.paddingFrame);
    }

    public final void update(EdgeInsets padding) {
        Intrinsics.checkNotNullParameter(padding, "padding");
        FrameLayout frameLayout = this.paddingFrame;
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        Double dValueOf = Double.valueOf(padding.getLeft());
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int iDoubleValue = (int) UtilsKt.toDP(dValueOf, context).doubleValue();
        Double dValueOf2 = Double.valueOf(padding.getTop());
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        int iDoubleValue2 = (int) UtilsKt.toDP(dValueOf2, context2).doubleValue();
        Double dValueOf3 = Double.valueOf(padding.getRight());
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "context");
        int iDoubleValue3 = (int) UtilsKt.toDP(dValueOf3, context3).doubleValue();
        Double dValueOf4 = Double.valueOf(padding.getBottom());
        Context context4 = getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "context");
        layoutParams2.setMargins(iDoubleValue, iDoubleValue2, iDoubleValue3, (int) UtilsKt.toDP(dValueOf4, context4).doubleValue());
        frameLayout.setLayoutParams(layoutParams2);
        TextView textView = this.top;
        String str = String.format("%.1f", Arrays.copyOf(new Object[]{Double.valueOf(padding.getTop())}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(this, *args)");
        textView.setText(str);
        TextView textView2 = this.left;
        String str2 = String.format("%.1f", Arrays.copyOf(new Object[]{Double.valueOf(padding.getLeft())}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(this, *args)");
        textView2.setText(str2);
        TextView textView3 = this.right;
        String str3 = String.format("%.1f", Arrays.copyOf(new Object[]{Double.valueOf(padding.getRight())}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(this, *args)");
        textView3.setText(str3);
        TextView textView4 = this.bottom;
        String str4 = String.format("%.1f", Arrays.copyOf(new Object[]{Double.valueOf(padding.getBottom())}, 1));
        Intrinsics.checkNotNullExpressionValue(str4, "format(this, *args)");
        textView4.setText(str4);
    }
}
