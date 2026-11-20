package com.dylanvann.fastimage.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.widget.ImageView;

public class FastImageBlurScriptEngine {
    private static final float BLUR_LIMIT_APPLICABLE_AT_ONCE = 25.0f;
    private static final float BLUR_MAX_SCALE = 1.5f;
    private static final float BLUR_MIN_SCALE = 0.1f;
    private static final float BLUR_REFERENCE_SIZE = 540.0f;

    public static void clean(ImageView imageView) {
    }

    public static Bitmap apply(Bitmap bitmap, float f, Context context) throws Throwable {
        float fMin = Math.min(BLUR_MAX_SCALE, Math.max(0.1f, ((BLUR_REFERENCE_SIZE / bitmap.getWidth()) + (BLUR_REFERENCE_SIZE / bitmap.getHeight())) / 2.0f));
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), true);
        int iCeil = (int) Math.ceil(f / BLUR_LIMIT_APPLICABLE_AT_ONCE);
        float f2 = f / iCeil;
        for (int i = 0; i < iCeil; i++) {
            bitmapCreateScaledBitmap = blur(bitmapCreateScaledBitmap, f2, context);
        }
        return Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, bitmap.getWidth(), bitmap.getHeight(), true);
    }

    static Bitmap blur(Bitmap bitmap, float f, Context context) throws Throwable {
        RenderScript renderScriptCreate;
        Allocation allocationCreateFromBitmap;
        Allocation allocationCreateTyped;
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, true);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = null;
        try {
            renderScriptCreate = RenderScript.create(context);
            try {
                allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCopy);
                try {
                    allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
                    try {
                        scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                        scriptIntrinsicBlurCreate.setRadius(f);
                        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                        scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
                        allocationCreateTyped.copyTo(bitmapCopy);
                        if (scriptIntrinsicBlurCreate != null) {
                            scriptIntrinsicBlurCreate.destroy();
                        }
                        if (allocationCreateFromBitmap != null) {
                            allocationCreateFromBitmap.destroy();
                        }
                        if (allocationCreateTyped != null) {
                            allocationCreateTyped.destroy();
                        }
                        if (renderScriptCreate != null) {
                            renderScriptCreate.destroy();
                        }
                        return bitmapCopy;
                    } catch (Exception unused) {
                        if (scriptIntrinsicBlurCreate != null) {
                            scriptIntrinsicBlurCreate.destroy();
                        }
                        if (allocationCreateFromBitmap != null) {
                            allocationCreateFromBitmap.destroy();
                        }
                        if (allocationCreateTyped != null) {
                            allocationCreateTyped.destroy();
                        }
                        if (renderScriptCreate != null) {
                            renderScriptCreate.destroy();
                        }
                        return bitmap;
                    } catch (Throwable th) {
                        th = th;
                        if (scriptIntrinsicBlurCreate != null) {
                            scriptIntrinsicBlurCreate.destroy();
                        }
                        if (allocationCreateFromBitmap != null) {
                            allocationCreateFromBitmap.destroy();
                        }
                        if (allocationCreateTyped != null) {
                            allocationCreateTyped.destroy();
                        }
                        if (renderScriptCreate != null) {
                            renderScriptCreate.destroy();
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                    allocationCreateTyped = null;
                } catch (Throwable th2) {
                    th = th2;
                    allocationCreateTyped = null;
                }
            } catch (Exception unused3) {
                allocationCreateFromBitmap = null;
                allocationCreateTyped = allocationCreateFromBitmap;
                if (scriptIntrinsicBlurCreate != null) {
                    scriptIntrinsicBlurCreate.destroy();
                }
                if (allocationCreateFromBitmap != null) {
                    allocationCreateFromBitmap.destroy();
                }
                if (allocationCreateTyped != null) {
                    allocationCreateTyped.destroy();
                }
                if (renderScriptCreate != null) {
                    renderScriptCreate.destroy();
                }
                return bitmap;
            } catch (Throwable th3) {
                th = th3;
                allocationCreateFromBitmap = null;
                allocationCreateTyped = allocationCreateFromBitmap;
                if (scriptIntrinsicBlurCreate != null) {
                    scriptIntrinsicBlurCreate.destroy();
                }
                if (allocationCreateFromBitmap != null) {
                    allocationCreateFromBitmap.destroy();
                }
                if (allocationCreateTyped != null) {
                    allocationCreateTyped.destroy();
                }
                if (renderScriptCreate != null) {
                    renderScriptCreate.destroy();
                }
                throw th;
            }
        } catch (Exception unused4) {
            renderScriptCreate = null;
            allocationCreateFromBitmap = null;
        } catch (Throwable th4) {
            th = th4;
            renderScriptCreate = null;
            allocationCreateFromBitmap = null;
        }
    }
}
