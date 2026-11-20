package com.oppwa.mobile.connect.checkout.dialog;

import android.graphics.Bitmap;
import android.util.LruCache;
import java.util.Map;

public class ImageCache extends LruCache<String, Bitmap> {
    private static ImageCache b;
    private static final int c;
    private static final int d;
    private Map<String, Bitmap> a;

    static {
        int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
        c = iMaxMemory;
        d = iMaxMemory / 8;
    }

    ImageCache(int i) {
        super(i);
    }

    public static ImageCache getInstance() {
        if (b == null) {
            b = new ImageCache(d);
        }
        return b;
    }

    void a(String str, Bitmap bitmap) {
        if (a(str) == null) {
            put(str, bitmap);
        }
    }

    @Override
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getByteCount() / 1024;
    }

    private Bitmap b(String str) {
        Map<String, Bitmap> map = this.a;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    Bitmap a(String str) {
        Bitmap bitmapB = b(str);
        return bitmapB != null ? bitmapB : get(str);
    }

    void a(Map<String, Bitmap> map) {
        this.a = map;
    }
}
