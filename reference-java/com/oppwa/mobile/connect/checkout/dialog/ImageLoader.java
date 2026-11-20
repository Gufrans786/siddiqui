package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.oppwa.mobile.connect.payment.ImagesRequest;
import com.oppwa.mobile.connect.provider.HttpUtils;
import com.oppwa.mobile.connect.utils.BaseTask;
import com.oppwa.mobile.connect.utils.TaskRunner;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class ImageLoader {
    private static final String e = "com.oppwa.mobile.connect.checkout.dialog.ImageLoader";
    private static ImageLoader f;
    private ImagesRequest a;
    private final Context c;
    private final Set<Listener> b = new HashSet();
    private final Set<String> d = new HashSet();

    public class DownloadImagesTask extends BaseTask<Bitmap> {
        private final String a;
        private final Context b;
        private final String c;

        DownloadImagesTask(Context context, String str, String str2) {
            this.b = context;
            this.a = str;
            this.c = str2;
        }

        @Override
        public void onError(Exception exc) {
            Log.d(ImageLoader.e, exc.getMessage());
        }

        @Override
        public Bitmap call() {
            try {
                return HttpUtils.downloadBitmap(this.b, this.c);
            } catch (Exception e) {
                Log.d(ImageLoader.e, e.getMessage());
                return null;
            }
        }

        @Override
        public void onPostExecute(Bitmap bitmap) throws Throwable {
            super.onPostExecute(bitmap);
            if (bitmap != null) {
                ImageCache.getInstance().a(this.a, bitmap);
                p.a(this.b, this.a, bitmap);
            } else {
                ImageCache.getInstance().a(this.a, ImageLoader.this.b(this.a));
            }
            ImageLoader.this.g(this.a);
        }
    }

    public interface Listener {
        void onImageLoaded(String str);
    }

    ImageLoader(Context context) {
        this.c = context.getApplicationContext();
    }

    private Bitmap d(String str) {
        return BitmapFactory.decodeResource(this.c.getResources(), l.a(this.c, str));
    }

    private void f(String str) {
        if (this.d.contains(str)) {
            return;
        }
        this.d.add(str);
        new TaskRunner().executeAsync(new DownloadImagesTask(this.c, str, this.a.getImagesRequestMap().get(str).getUrl()));
    }

    public void g(String str) {
        Iterator<Listener> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().onImageLoaded(str);
        }
        this.d.remove(str);
    }

    Bitmap c(String str) throws Throwable {
        Bitmap bitmapA = ImageCache.getInstance().a(str);
        if (bitmapA == null) {
            bitmapA = p.b(this.c, str);
        }
        if (bitmapA != null) {
            ImageCache.getInstance().a(str, bitmapA);
            return bitmapA;
        }
        if (!e(str)) {
            return b(str);
        }
        f(str);
        return bitmapA;
    }

    boolean e(String str) {
        ImagesRequest imagesRequest = this.a;
        return !TextUtils.isEmpty((imagesRequest == null || imagesRequest.getImagesRequestMap() == null || !this.a.getImagesRequestMap().containsKey(str)) ? null : this.a.getImagesRequestMap().get(str).getUrl());
    }

    void b(Listener listener) {
        this.b.remove(listener);
    }

    public static synchronized ImageLoader a(Context context) {
        if (f == null) {
            f = new ImageLoader(context);
        }
        return f;
    }

    public Bitmap b(String str) {
        Bitmap bitmapD = d(str);
        return bitmapD == null ? a(str) : bitmapD;
    }

    void a(ImagesRequest imagesRequest) {
        if (imagesRequest != null) {
            ImagesRequest imagesRequest2 = this.a;
            if (imagesRequest2 == null) {
                this.a = imagesRequest;
            } else {
                imagesRequest2.addValues(imagesRequest);
            }
        }
    }

    void a(Listener listener) {
        this.b.add(listener);
    }

    private Bitmap a(String str) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f2 = this.c.getResources().getDisplayMetrics().density;
        Paint paint = new Paint(1);
        paint.setColor(Color.rgb(0, 0, 0));
        paint.setTextSize((int) (f2 * 14.0f));
        paint.setShadowLayer(1.0f, 0.0f, 1.0f, -1);
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, (bitmapCreateBitmap.getWidth() - rect.width()) / 2, (bitmapCreateBitmap.getHeight() + rect.height()) / 2, paint);
        return bitmapCreateBitmap;
    }
}
