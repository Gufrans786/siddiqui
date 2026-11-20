package com.mapbox.maps.plugin.locationcomponent.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import ch.qos.logback.core.CoreConstants;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/utils/BitmapUtils;", "", "()V", "equals", "", "bitmap", "Landroid/graphics/Bitmap;", "other", "getBitmapFromDrawableRes", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "sourceDrawableId", "", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class BitmapUtils {
    public static final BitmapUtils INSTANCE = new BitmapUtils();

    private BitmapUtils() {
    }

    public final Bitmap getBitmapFromDrawableRes(Context context, int sourceDrawableId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawable = AppCompatResources.getDrawable(context, sourceDrawableId);
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return null;
        }
        Drawable drawableMutate = constantState.newDrawable().mutate();
        Intrinsics.checkNotNullExpressionValue(drawableMutate, "constantState.newDrawable().mutate()");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(\n        dr….Config.ARGB_8888\n      )");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawableMutate.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawableMutate.draw(canvas);
        return bitmapCreateBitmap;
    }

    public final boolean equals(Bitmap bitmap, Bitmap other) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(other, "other");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getHeight() * bitmap.getRowBytes());
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(other.getHeight() * other.getRowBytes());
        other.copyPixelsToBuffer(byteBufferAllocate2);
        return Arrays.equals(byteBufferAllocate.array(), byteBufferAllocate2.array());
    }
}
