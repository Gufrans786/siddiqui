package com.mapbox.maps.text;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;

class LocalGlyphRasterizer {
    private final Canvas canvas;
    private final FontMetrics fontMetrics;
    private final GlyphMetrics glyphMetrics;
    private final Paint paint;
    private boolean useSystemFont;
    private final float sdfScale = 2.0f;
    private final int borderSize = Math.round(6.0f);
    private final Rect bounds = new Rect();

    private class GlyphMetrics {
        float advance;
        float ascender;
        float descender;
        Bitmap glyphBitmap;
        float height;
        float left;
        float top;
        float width;

        private GlyphMetrics() {
        }
    }

    private class FontMetrics {
        float ascender;
        float descender;
        int fontID;

        private FontMetrics() {
        }
    }

    LocalGlyphRasterizer() {
        this.glyphMetrics = new GlyphMetrics();
        this.fontMetrics = new FontMetrics();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        paint.setTextSize(48.0f);
        this.canvas = new Canvas();
        this.useSystemFont = false;
    }

    void useSystemFont() {
        this.useSystemFont = true;
    }

    protected FontMetrics getFontMetrics(String str, boolean z) {
        if (this.useSystemFont) {
            this.paint.setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        } else {
            this.paint.setTypeface(Typeface.create(str, z ? 1 : 0));
        }
        Paint.FontMetrics fontMetrics = this.paint.getFontMetrics();
        this.fontMetrics.ascender = Math.abs(fontMetrics.top) / 2.0f;
        this.fontMetrics.descender = Math.abs(fontMetrics.bottom) / 2.0f;
        this.fontMetrics.fontID = this.paint.getTypeface().hashCode();
        return this.fontMetrics;
    }

    protected GlyphMetrics getGlyphMetrics(String str, boolean z, char c) {
        String strValueOf = String.valueOf(c);
        if (this.useSystemFont) {
            this.paint.setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        } else {
            this.paint.setTypeface(Typeface.create(str, z ? 1 : 0));
        }
        this.paint.getTextBounds(strValueOf, 0, 1, this.bounds);
        this.glyphMetrics.left = this.bounds.left / 2.0f;
        this.glyphMetrics.width = this.bounds.width() / 2.0f;
        this.glyphMetrics.height = this.bounds.height() / 2.0f;
        this.glyphMetrics.top = Math.abs(this.bounds.top) / 2.0f;
        this.glyphMetrics.advance = this.paint.measureText(strValueOf, 0, 1) / 2.0f;
        if (this.bounds.width() > 0 && this.bounds.height() > 0) {
            this.glyphMetrics.glyphBitmap = Bitmap.createBitmap(this.bounds.width() + (this.borderSize * 2), this.bounds.height() + (this.borderSize * 2), Bitmap.Config.ARGB_8888);
            this.canvas.setBitmap(this.glyphMetrics.glyphBitmap);
            float f = this.borderSize - this.bounds.left;
            float f2 = this.borderSize - this.bounds.top;
            this.canvas.drawColor(-1);
            this.canvas.drawText(strValueOf, f, f2, this.paint);
        }
        return this.glyphMetrics;
    }
}
