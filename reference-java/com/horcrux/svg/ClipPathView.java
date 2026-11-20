package com.horcrux.svg;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.facebook.common.logging.FLog;
import com.facebook.react.bridge.ReactContext;

class ClipPathView extends GroupView {
    @Override
    int hitTest(float[] fArr) {
        return -1;
    }

    @Override
    boolean isResponsible() {
        return false;
    }

    @Override
    void mergeProperties(RenderableView renderableView) {
    }

    @Override
    void resetProperties() {
    }

    public ClipPathView(ReactContext reactContext) {
        super(reactContext);
    }

    @Override
    void draw(Canvas canvas, Paint paint, float f) {
        FLog.w("ReactNative", "RNSVG: ClipPath can't be drawn, it should be defined as a child component for `Defs` ");
    }

    @Override
    void saveDefinition() {
        getSvgView().defineClipPath(this, this.mName);
    }
}
