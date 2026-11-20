package com.mapbox.maps.plugin.compass;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.res.ResourcesCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B%\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0015\u0010&\u001a\u00020'2\u0006\u0010$\u001a\u00020%H\u0000¢\u0006\u0002\b(J\u0010\u0010)\u001a\u00020'2\u0006\u0010*\u001a\u00020\u0017H\u0016J(\u0010+\u001a\u00020'2\u0006\u0010,\u001a\u00020\b2\u0006\u0010-\u001a\u00020\b2\u0006\u0010.\u001a\u00020\b2\u0006\u0010/\u001a\u00020\bH\u0016R$\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\u00178V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\n\u001a\u00020\u001d8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010\"\u001a\u00020\u001d2\u0006\u0010\n\u001a\u00020\u001d8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R\u000e\u0010$\u001a\u00020%X\u0082.¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/mapbox/maps/plugin/compass/CompassViewImpl;", "Lcom/mapbox/maps/plugin/compass/CompassView;", "Landroidx/appcompat/widget/AppCompatImageView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "value", "compassGravity", "getCompassGravity", "()I", "setCompassGravity", "(I)V", "compass", "Landroid/graphics/drawable/Drawable;", "compassImage", "getCompassImage", "()Landroid/graphics/drawable/Drawable;", "setCompassImage", "(Landroid/graphics/drawable/Drawable;)V", "", "compassRotation", "getCompassRotation", "()F", "setCompassRotation", "(F)V", "", "isCompassEnabled", "()Z", "setCompassEnabled", "(Z)V", "isCompassVisible", "setCompassVisible", "presenter", "Lcom/mapbox/maps/plugin/compass/CompassPlugin;", "injectPresenter", "", "injectPresenter$plugin_compass_release", "setCompassAlpha", TypedValues.Custom.S_FLOAT, "setCompassMargins", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "plugin-compass_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class CompassViewImpl extends AppCompatImageView implements CompassView {
    private CompassPlugin presenter;

    public CompassViewImpl(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public CompassViewImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public CompassViewImpl(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public CompassViewImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawable = ResourcesCompat.getDrawable(getResources(), R.drawable.mapbox_compass_icon, null);
        if (drawable != null) {
            setCompassImage(drawable);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.compass_view_size);
        setLayoutParams(new FrameLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize));
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CompassViewImpl._init_$lambda$1(this.f$0, view);
            }
        });
        setContentDescription(context.getString(R.string.mapbox_compassContentDescription));
    }

    public static final void _init_$lambda$1(CompassViewImpl this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CompassPlugin compassPlugin = this$0.presenter;
        if (compassPlugin != null) {
            if (compassPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
                compassPlugin = null;
            }
            compassPlugin.onCompassClicked();
        }
    }

    @Override
    public boolean isCompassVisible() {
        return getVisibility() == 0;
    }

    @Override
    public void setCompassVisible(boolean z) {
        setVisibility(z ? 0 : 8);
    }

    @Override
    public int getCompassGravity() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        return ((FrameLayout.LayoutParams) layoutParams).gravity;
    }

    @Override
    public void setCompassGravity(int i) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).gravity = i;
    }

    @Override
    public float getCompassRotation() {
        return getRotation();
    }

    @Override
    public void setCompassRotation(float f) {
        setRotation(f);
    }

    @Override
    public boolean isCompassEnabled() {
        return isEnabled();
    }

    @Override
    public void setCompassEnabled(boolean z) {
        if (isEnabled() != z) {
            setEnabled(z);
        }
    }

    @Override
    public Drawable getCompassImage() {
        Drawable drawable = getDrawable();
        Intrinsics.checkNotNullExpressionValue(drawable, "drawable");
        return drawable;
    }

    @Override
    public void setCompassImage(Drawable compass) {
        Intrinsics.checkNotNullParameter(compass, "compass");
        setImageDrawable(compass);
    }

    @Override
    public void setCompassMargins(int left, int top, int right, int bottom) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).setMargins(left, top, right, bottom);
    }

    @Override
    public void setCompassAlpha(float f) {
        setAlpha(f);
    }

    public final void injectPresenter$plugin_compass_release(CompassPlugin presenter) {
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        this.presenter = presenter;
    }
}
