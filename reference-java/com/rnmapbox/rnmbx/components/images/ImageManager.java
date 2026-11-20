package com.rnmapbox.rnmbx.components.images;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.mapbox.maps.Image;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bJ\u0016\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0017J\u0016\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0018R,\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "", "<init>", "()V", "subscriptions", "", "", "", "Lcom/rnmapbox/rnmbx/components/images/Subscription;", "getSubscriptions", "()Ljava/util/Map;", "setSubscriptions", "(Ljava/util/Map;)V", "subscribe", "name", "resolved", "Lcom/rnmapbox/rnmbx/components/images/Resolver;", "unsubscribe", "", "subscription", "resolve", "image", "Lcom/mapbox/maps/Image;", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/BitmapDrawable;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageManager {
    private Map<String, List<Subscription>> subscriptions = new HashMap();

    public static final boolean unsubscribe$lambda$1(Subscription subscription, Subscription it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it == subscription;
    }

    public final Map<String, List<Subscription>> getSubscriptions() {
        return this.subscriptions;
    }

    public final void setSubscriptions(Map<String, List<Subscription>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.subscriptions = map;
    }

    public final Subscription subscribe(String name, Resolver resolved) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(resolved, "resolved");
        Map<String, List<Subscription>> map = this.subscriptions;
        ArrayList arrayList = map.get(name);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map.put(name, arrayList);
        }
        Subscription subscription = new Subscription(name, resolved, this);
        arrayList.add(subscription);
        return subscription;
    }

    public final void unsubscribe(final Subscription subscription) {
        Intrinsics.checkNotNullParameter(subscription, "subscription");
        List<Subscription> list = this.subscriptions.get(subscription.getName());
        if (list != null) {
            CollectionsKt.removeAll((List) list, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ImageManager.unsubscribe$lambda$1(subscription, (Subscription) obj));
                }
            });
        }
    }

    public final void resolve(String name, Image image) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        List<Subscription> list = this.subscriptions.get(name);
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                ((Subscription) it.next()).resolved(name, image);
            }
        }
    }

    public final void resolve(String name, Bitmap image) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        resolve(name, ImageKt.toMapboxImage(image));
    }

    public final void resolve(String name, BitmapDrawable image) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        Bitmap bitmap = image.getBitmap();
        Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(...)");
        resolve(name, bitmap);
    }
}
