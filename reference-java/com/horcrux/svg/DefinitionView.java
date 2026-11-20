package com.horcrux.svg;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import com.facebook.react.bridge.ReactContext;

class DefinitionView extends VirtualView {
    @Override
    void draw(Canvas canvas, Paint paint, float f) {
    }

    @Override
    Path getPath(Canvas canvas, Paint paint) {
        return null;
    }

    @Override
    int hitTest(float[] fArr) {
        return -1;
    }

    @Override
    boolean isResponsible() {
        return false;
    }

    DefinitionView(ReactContext reactContext) {
        super(reactContext);
    }
}
