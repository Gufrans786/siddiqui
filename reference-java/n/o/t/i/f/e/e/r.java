package n.o.t.i.f.e.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.RingtoneManager;
import android.net.Uri;
import app.notifee.core.Logger;
import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.UriUtil;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import java.util.HashMap;
import java.util.Map;

public class r {
    public static volatile Map<String, Integer> a;

    public class a extends BaseBitmapDataSubscriber {
        public final SettableFuture a;
        public final String b;

        public a(SettableFuture settableFuture, String str) {
            this.a = settableFuture;
            this.b = str;
        }

        @Override
        public void onFailureImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
            Logger.e("ResourceUtils", "Failed to load an image: " + this.b, dataSource.getFailureCause());
            this.a.set(null);
        }

        @Override
        public void onNewResultImpl(Bitmap bitmap) {
            this.a.set(bitmap);
        }
    }

    public static Map<String, Integer> a() {
        if (a == null) {
            synchronized (r.class) {
                if (a == null) {
                    a = new HashMap();
                }
            }
        }
        return a;
    }

    public static Uri b(String str) {
        int iA = a(str, "drawable");
        return iA > 0 ? new Uri.Builder().scheme(UriUtil.LOCAL_RESOURCE_SCHEME).path(String.valueOf(iA)).build() : Uri.EMPTY;
    }

    public static Uri c(String str) {
        Context context = f.a;
        if (str == null) {
            return null;
        }
        if (str.contains("://")) {
            return Uri.parse(str);
        }
        if (str.equalsIgnoreCase("default")) {
            return RingtoneManager.getDefaultUri(2);
        }
        int iA = a(str, "raw");
        if (iA == 0 && str.contains(".")) {
            iA = a(str.substring(0, str.lastIndexOf(46)), "raw");
        }
        if (iA == 0) {
            return null;
        }
        return Uri.parse("android.resource://" + context.getPackageName() + "/raw/" + str);
    }

    public static ListenableFuture<Bitmap> a(String str) {
        Uri uriB;
        String string;
        SettableFuture settableFutureCreate = SettableFuture.create();
        if (!str.contains("/")) {
            int iA = a(str, "mipmap");
            if (iA == 0) {
                iA = a(str, "drawable");
            }
            if (iA == 0) {
                string = null;
            } else if (iA > 0) {
                string = new Uri.Builder().scheme(UriUtil.LOCAL_RESOURCE_SCHEME).path(String.valueOf(iA)).build().toString();
            } else {
                string = Uri.EMPTY.toString();
            }
            if (string == null) {
                settableFutureCreate.set(null);
                return settableFutureCreate;
            }
            try {
                uriB = Uri.parse(string);
                if (uriB.getScheme() == null) {
                    uriB = b(string);
                }
            } catch (Exception unused) {
                uriB = b(string);
            }
        } else {
            try {
                Uri uriB2 = Uri.parse(str);
                if (uriB2.getScheme() == null) {
                    uriB2 = b(str);
                }
                uriB = uriB2;
            } catch (Exception unused2) {
                uriB = b(str);
            }
        }
        ImageRequest imageRequestBuild = ImageRequestBuilder.newBuilderWithSource(uriB).build();
        if (!Fresco.hasBeenInitialized()) {
            Logger.w("ResourceUtils", "Fresco initializing natively by Notifee");
            Fresco.initialize(f.a);
        }
        Fresco.getImagePipeline().fetchDecodedImage(imageRequestBuild, f.a).subscribe(new a(settableFutureCreate, str), CallerThreadExecutor.getInstance());
        return settableFutureCreate;
    }

    public static int a(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        String strReplace = str.toLowerCase().replace("-", "_");
        String str3 = strReplace + "_" + str2;
        synchronized (r.class) {
            if (a().containsKey(str3)) {
                return a().get(str3).intValue();
            }
            Context context = f.a;
            int identifier = context.getResources().getIdentifier(strReplace, str2, context.getPackageName());
            a().put(str3, Integer.valueOf(identifier));
            return identifier;
        }
    }
}
