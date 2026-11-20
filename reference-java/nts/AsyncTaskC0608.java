package nts;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public class AsyncTaskC0608 extends AsyncTask<String, Void, Bitmap> {

    public Map<String, Bitmap> f3333;

    public WeakReference<ImageView> f3334;

    public AsyncTaskC0608(ImageView imageView, Map<String, Bitmap> map) {
        this.f3334 = new WeakReference<>(imageView);
        this.f3333 = map;
    }

    @Override
    public Bitmap doInBackground(String[] strArr) {
        String str = strArr[0];
        if (this.f3333 == null) {
            this.f3333 = new HashMap();
        }
        if (this.f3333.containsKey(str)) {
            return this.f3333.get(str);
        }
        Bitmap bitmapDecodeStream = null;
        try {
            bitmapDecodeStream = BitmapFactory.decodeStream(new URL(str).openStream());
            this.f3333.put(str, bitmapDecodeStream);
            return bitmapDecodeStream;
        } catch (Exception e) {
            C0273.f1383.m3987(C0558.m5449(601, 30, 27) + str + C0558.m5449(631, 3, 62) + e.getMessage());
            return bitmapDecodeStream;
        }
    }

    @Override
    public void onPostExecute(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        WeakReference<ImageView> weakReference = this.f3334;
        if (weakReference != null) {
            weakReference.get().setImageBitmap(bitmap2);
        }
    }
}
