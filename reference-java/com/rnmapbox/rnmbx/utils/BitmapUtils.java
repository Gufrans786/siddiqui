package com.rnmapbox.rnmbx.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import android.util.LruCache;
import android.view.View;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.bindgen.DataRef;
import com.mapbox.maps.Image;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\fJ\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\fJ2\u0010\u001a\u001a\u0004\u0018\u00010\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007J\u001c\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u00052\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0002J\u0014\u0010$\u001a\u0004\u0018\u00010\n2\b\u0010#\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010%\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010'H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/rnmapbox/rnmbx/utils/BitmapUtils;", "", "<init>", "()V", "LOG_TAG", "", "CACHE_SIZE", "", "mCache", "Landroid/util/LruCache;", "Landroid/graphics/Bitmap;", "toImage", "Lcom/mapbox/maps/Image;", "bitmap", "bitmapDrawable", "Landroid/graphics/drawable/BitmapDrawable;", "getBitmapFromDrawable", "sourceDrawable", "Landroid/graphics/drawable/Drawable;", "createImgTempFile", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "image", "createTempFile", "createBase64", "createImgBase64", "viewToBitmap", "v", "Landroid/view/View;", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "addImage", "", "imageURL", "getImage", "closeSnapshotOutputStream", "outputStream", "Ljava/io/OutputStream;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BitmapUtils {
    private static final int CACHE_SIZE = 1048576;
    public static final String LOG_TAG = "BitmapUtils";
    public static final BitmapUtils INSTANCE = new BitmapUtils();
    private static final LruCache<String, Bitmap> mCache = new LruCache<String, Bitmap>() {
        @Override
        public int sizeOf(String key, Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            return bitmap.getByteCount();
        }
    };

    private BitmapUtils() {
    }

    public final Image toImage(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            throw new RuntimeException("Only ARGB_8888 bitmap config is supported!");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        byte[] bArrArray = byteBufferAllocate.array();
        Intrinsics.checkNotNullExpressionValue(bArrArray, "array(...)");
        return new Image(width, height, ImageKt.toImageData(bArrArray));
    }

    public final Image toImage(BitmapDrawable bitmapDrawable) {
        Intrinsics.checkNotNullParameter(bitmapDrawable, "bitmapDrawable");
        Bitmap bitmap = bitmapDrawable.getBitmap();
        Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(...)");
        return toImage(bitmap);
    }

    public final Bitmap getBitmapFromDrawable(Drawable sourceDrawable) {
        if (sourceDrawable == null) {
            return null;
        }
        if (sourceDrawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) sourceDrawable).getBitmap();
        }
        Drawable.ConstantState constantState = sourceDrawable.getConstantState();
        if (constantState == null) {
            return null;
        }
        Drawable drawableMutate = constantState.newDrawable().mutate();
        Intrinsics.checkNotNullExpressionValue(drawableMutate, "mutate(...)");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawableMutate.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawableMutate.draw(canvas);
        return bitmapCreateBitmap;
    }

    public final String createImgTempFile(Context context, Image image) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(image, "image");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(image.getWidth(), image.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        DataRef data = image.getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(ImageKt.toByteArray(data)));
        return createTempFile(context, bitmapCreateBitmap);
    }

    public final String createTempFile(Context context, Bitmap bitmap) {
        File fileCreateTempFile;
        FileOutputStream fileOutputStream;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        try {
            fileCreateTempFile = File.createTempFile(LOG_TAG, ".png", context.getCacheDir());
            try {
                fileOutputStream = new FileOutputStream(fileCreateTempFile);
            } catch (IOException e) {
                e = e;
                Log.w(LOG_TAG, e.getLocalizedMessage());
                fileOutputStream = null;
            }
        } catch (IOException e2) {
            e = e2;
            fileCreateTempFile = null;
        }
        if (fileCreateTempFile == null || fileOutputStream == null) {
            return null;
        }
        FileOutputStream fileOutputStream2 = fileOutputStream;
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
        closeSnapshotOutputStream(fileOutputStream2);
        return Uri.fromFile(fileCreateTempFile).toString();
    }

    public final String createBase64(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        closeSnapshotOutputStream(byteArrayOutputStream2);
        return "data:image/png;base64," + Base64.encodeToString(byteArray, 2);
    }

    public final String createImgBase64(Image image) {
        Intrinsics.checkNotNullParameter(image, "image");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(image.getWidth(), image.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        DataRef data = image.getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(ImageKt.toByteArray(data)));
        return createBase64(bitmapCreateBitmap);
    }

    public final Bitmap viewToBitmap(View v, int left, int top, int right, int bottom) {
        if (v == null) {
            return null;
        }
        int i = right - left;
        int i2 = bottom - top;
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.eraseColor(0);
        v.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private final void addImage(String imageURL, Bitmap bitmap) {
        mCache.put(imageURL, bitmap);
    }

    private final Bitmap getImage(String imageURL) {
        return mCache.get(imageURL);
    }

    private final void closeSnapshotOutputStream(OutputStream outputStream) {
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } catch (IOException e) {
            Log.w(LOG_TAG, e.getLocalizedMessage());
        }
    }
}
