package com.mapbox.maps.plugin.logo;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.res.ResourcesCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.MapboxLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0015\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0000¢\u0006\u0002\b\u001cJ(\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nH\u0016R$\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/mapbox/maps/plugin/logo/LogoViewImpl;", "Lcom/mapbox/maps/plugin/logo/LogoView;", "Landroidx/appcompat/widget/AppCompatImageView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "value", "", "logoEnabled", "getLogoEnabled", "()Z", "setLogoEnabled", "(Z)V", "logoGravity", "getLogoGravity", "()I", "setLogoGravity", "(I)V", "presenter", "Lcom/mapbox/maps/plugin/logo/LogoPlugin;", "injectPresenter", "", "injectPresenter$plugin_logo_release", "setLogoMargins", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "plugin-logo_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LogoViewImpl extends AppCompatImageView implements LogoView {
    private LogoPlugin presenter;

    public LogoViewImpl(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawable = ResourcesCompat.getDrawable(getResources(), R.drawable.mapbox_logo_icon, null);
        if (drawable != null) {
            setImageDrawable(drawable);
        }
        float f = getContext().getResources().getDisplayMetrics().density;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        setLogoGravity(8388691);
        int i = (int) (4 * f);
        setLogoMargins(i, i, i, i);
    }

    public LogoViewImpl(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Drawable drawable = ResourcesCompat.getDrawable(getResources(), R.drawable.mapbox_logo_icon, null);
        if (drawable != null) {
            setImageDrawable(drawable);
        }
        float f = getContext().getResources().getDisplayMetrics().density;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        setLogoGravity(8388691);
        int i = (int) (4 * f);
        setLogoMargins(i, i, i, i);
    }

    public LogoViewImpl(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Drawable drawable = ResourcesCompat.getDrawable(getResources(), R.drawable.mapbox_logo_icon, null);
        if (drawable != null) {
            setImageDrawable(drawable);
        }
        float f = getContext().getResources().getDisplayMetrics().density;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        setLogoGravity(8388691);
        int i2 = (int) (4 * f);
        setLogoMargins(i2, i2, i2, i2);
    }

    @Override
    public boolean getLogoEnabled() {
        return getVisibility() == 0;
    }

    @Override
    public void setLogoEnabled(boolean z) {
        int i;
        if (z) {
            i = 0;
        } else {
            String string = getContext().getString(R.string.mapbox_warning_logo_disabled);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.stri…ox_warning_logo_disabled)");
            MapboxLogger.logW("MbxLogo", string);
            i = 8;
        }
        setVisibility(i);
    }

    @Override
    public int getLogoGravity() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        return ((FrameLayout.LayoutParams) layoutParams).gravity;
    }

    @Override
    public void setLogoGravity(int i) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).gravity = i;
    }

    @Override
    public void setLogoMargins(int left, int top, int right, int bottom) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.setMargins(left, top, right, bottom);
        layoutParams2.setMarginStart(left);
        layoutParams2.setMarginEnd(right);
    }

    public final void injectPresenter$plugin_logo_release(LogoPlugin presenter) {
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        this.presenter = presenter;
    }
}
