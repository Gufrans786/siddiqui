package com.rnmapbox.rnmbx.components.images;

import com.mapbox.common.Cancelable;
import com.mapbox.maps.Image;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0012H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/Subscription;", "Lcom/mapbox/common/Cancelable;", "Lcom/rnmapbox/rnmbx/v11compat/Cancelable;", "name", "", "resolver", "Lcom/rnmapbox/rnmbx/components/images/Resolver;", "manager", "Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "<init>", "(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/images/Resolver;Lcom/rnmapbox/rnmbx/components/images/ImageManager;)V", "getName", "()Ljava/lang/String;", "getResolver", "()Lcom/rnmapbox/rnmbx/components/images/Resolver;", "getManager", "()Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "resolved", "", "image", "Lcom/mapbox/maps/Image;", "cancel", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Subscription implements Cancelable {
    private final ImageManager manager;
    private final String name;
    private final Resolver resolver;

    public Subscription(String name, Resolver resolver, ImageManager manager) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(resolver, "resolver");
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.name = name;
        this.resolver = resolver;
        this.manager = manager;
    }

    public final ImageManager getManager() {
        return this.manager;
    }

    public final String getName() {
        return this.name;
    }

    public final Resolver getResolver() {
        return this.resolver;
    }

    public final void resolved(String name, Image image) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        this.resolver.resolved(name, image);
    }

    @Override
    public void cancel() {
        this.manager.unsubscribe(this);
    }
}
