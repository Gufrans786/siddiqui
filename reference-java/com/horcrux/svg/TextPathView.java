package com.horcrux.svg;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactContext;
import javax.annotation.Nullable;

class TextPathView extends TextView {
    private String mHref;
    private TextProperties.TextPathMethod mMethod;
    private TextProperties.TextPathMidLine mMidLine;
    private TextProperties.TextPathSide mSide;
    private TextProperties.TextPathSpacing mSpacing;

    @Nullable
    private SVGLength mStartOffset;

    @Override
    void popGlyphContext() {
    }

    @Override
    void pushGlyphContext() {
    }

    public TextPathView(ReactContext reactContext) {
        super(reactContext);
        this.mMethod = TextProperties.TextPathMethod.align;
        this.mSpacing = TextProperties.TextPathSpacing.exact;
    }

    public void setHref(String str) {
        this.mHref = str;
        invalidate();
    }

    public void setStartOffset(Dynamic dynamic) {
        this.mStartOffset = SVGLength.from(dynamic);
        invalidate();
    }

    @Override
    public void setMethod(@Nullable String str) {
        this.mMethod = TextProperties.TextPathMethod.valueOf(str);
        invalidate();
    }

    public void setSpacing(@Nullable String str) {
        this.mSpacing = TextProperties.TextPathSpacing.valueOf(str);
        invalidate();
    }

    public void setSide(@Nullable String str) {
        this.mSide = TextProperties.TextPathSide.valueOf(str);
        invalidate();
    }

    public void setSharp(@Nullable String str) {
        this.mMidLine = TextProperties.TextPathMidLine.valueOf(str);
        invalidate();
    }

    TextProperties.TextPathMethod getMethod() {
        return this.mMethod;
    }

    TextProperties.TextPathSpacing getSpacing() {
        return this.mSpacing;
    }

    TextProperties.TextPathSide getSide() {
        return this.mSide;
    }

    TextProperties.TextPathMidLine getMidLine() {
        return this.mMidLine;
    }

    SVGLength getStartOffset() {
        return this.mStartOffset;
    }

    @Override
    void draw(Canvas canvas, Paint paint, float f) {
        drawGroup(canvas, paint, f);
    }

    Path getTextPath(Canvas canvas, Paint paint) {
        VirtualView definedTemplate = getSvgView().getDefinedTemplate(this.mHref);
        if (definedTemplate instanceof RenderableView) {
            return ((RenderableView) definedTemplate).getPath(canvas, paint);
        }
        return null;
    }

    @Override
    Path getPath(Canvas canvas, Paint paint) {
        return getGroupPath(canvas, paint);
    }
}
