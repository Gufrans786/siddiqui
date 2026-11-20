package com.rnmapbox.rnmbx.shapeAnimators;

import com.mapbox.geojson.GeoJson;
import com.nimbusds.jose.HeaderParameterNames;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0013\u001a\u00020\u000fH&J\b\u0010\u0014\u001a\u00020\u000fH&J\b\u0010\u0015\u001a\u00020\u000fH&R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimator;", "", HeaderParameterNames.AUTHENTICATION_TAG, "", "Lcom/rnmapbox/rnmbx/shapeAnimators/Tag;", "<init>", "(J)V", "getTag", "()J", "getShape", "Lcom/mapbox/geojson/GeoJson;", "getAnimatedShape", "animatorAgeSec", "", "subscribe", "", "consumer", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimationConsumer;", "unsubscribe", "refresh", "start", "stop", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ShapeAnimator {
    private final long tag;

    public abstract GeoJson getAnimatedShape(double animatorAgeSec);

    public abstract GeoJson getShape();

    public abstract void refresh();

    public abstract void start();

    public abstract void stop();

    public abstract void subscribe(ShapeAnimationConsumer consumer);

    public abstract void unsubscribe(ShapeAnimationConsumer consumer);

    public ShapeAnimator(long j) {
        this.tag = j;
    }

    public final long getTag() {
        return this.tag;
    }
}
