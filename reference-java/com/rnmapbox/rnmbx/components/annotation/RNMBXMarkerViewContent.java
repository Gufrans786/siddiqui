package com.rnmapbox.rnmbx.components.annotation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.views.view.ReactViewGroup;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\f\u001a\u00020\rH\u0014J\b\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;", "Lcom/facebook/react/views/view/ReactViewGroup;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "inAdd", "", "getInAdd", "()Z", "setInAdd", "(Z)V", "onAttachedToWindow", "", "configureParentClipping", "onMeasure", "widthMeasureSpec", "", "heightMeasureSpec", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMarkerViewContent extends ReactViewGroup {
    private boolean inAdd;

    public RNMBXMarkerViewContent(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        RNMBXMarkerViewContentKt.allowRenderingOutside(this);
    }

    public final boolean getInAdd() {
        return this.inAdd;
    }

    public final void setInAdd(boolean z) {
        this.inAdd = z;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        configureParentClipping();
    }

    private final void configureParentClipping() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            RNMBXMarkerViewContentKt.allowRenderingOutside((ViewGroup) parent);
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.inAdd) {
            if (widthMeasureSpec == 0) {
                widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
            }
            if (heightMeasureSpec == 0) {
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            }
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }
}
