package com.rnmapbox.rnmbx.shapeAnimators;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.bridge.UiThreadUtil;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.GeoJson;
import com.nimbusds.jose.HeaderParameterNames;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0010J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0016J\b\u0010\u001b\u001a\u00020\u0017H\u0016J\b\u0010\u001c\u001a\u00020\u0017H\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorCommon;", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimator;", HeaderParameterNames.AUTHENTICATION_TAG, "", "Lcom/rnmapbox/rnmbx/shapeAnimators/Tag;", "<init>", "(J)V", "emptyGeoJsonObj", "Lcom/mapbox/geojson/FeatureCollection;", "getEmptyGeoJsonObj", "()Lcom/mapbox/geojson/FeatureCollection;", "timer", "Ljava/util/Timer;", "startedAt", "Ljava/util/Date;", "fps", "", TypedValues.CycleType.S_WAVE_PERIOD, "getAnimatorAgeSec", "subscribers", "", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimationConsumer;", "subscribe", "", "consumer", "unsubscribe", "refresh", "start", "stop", "getShape", "Lcom/mapbox/geojson/GeoJson;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ShapeAnimatorCommon extends ShapeAnimator {
    private final FeatureCollection emptyGeoJsonObj;
    private final double fps;
    private final double period;
    private Date startedAt;
    private List<ShapeAnimationConsumer> subscribers;
    private Timer timer;

    public ShapeAnimatorCommon(long j) {
        super(j);
        FeatureCollection featureCollectionFromFeatures = FeatureCollection.fromFeatures((List<Feature>) CollectionsKt.emptyList());
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromFeatures, "fromFeatures(...)");
        this.emptyGeoJsonObj = featureCollectionFromFeatures;
        this.startedAt = new Date();
        this.fps = 30.0d;
        this.period = 1.0d / 30.0d;
        this.subscribers = new ArrayList();
    }

    public final FeatureCollection getEmptyGeoJsonObj() {
        return this.emptyGeoJsonObj;
    }

    public final double getAnimatorAgeSec() {
        return (new Date().getTime() - this.startedAt.getTime()) / ((double) 1000);
    }

    @Override
    public void subscribe(ShapeAnimationConsumer consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        if (this.subscribers.contains(consumer)) {
            return;
        }
        this.subscribers.add(consumer);
    }

    @Override
    public void unsubscribe(ShapeAnimationConsumer consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        this.subscribers.remove(consumer);
        if (this.subscribers.isEmpty()) {
            stop();
        }
    }

    @Override
    public void refresh() {
        final GeoJson animatedShape = getAnimatedShape(getAnimatorAgeSec());
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                ShapeAnimatorCommon.refresh$lambda$1(this.f$0, animatedShape);
            }
        });
    }

    public static final void refresh$lambda$1(ShapeAnimatorCommon shapeAnimatorCommon, GeoJson geoJson) {
        Iterator<T> it = shapeAnimatorCommon.subscribers.iterator();
        while (it.hasNext()) {
            ((ShapeAnimationConsumer) it.next()).shapeUpdated(geoJson);
        }
    }

    @Override
    public void start() {
        if (this.timer != null) {
            Log.d("RNMBXShapeAnimator", "Timer for animator " + getTag() + " is already running (subscribers: " + this.subscribers.size() + ")");
            return;
        }
        Log.d("RNMBXShapeAnimator", "Started timer for animator " + getTag() + " (subscribers: " + this.subscribers.size() + ")");
        this.startedAt = new Date();
        Timer timer = new Timer();
        this.timer = timer;
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                ShapeAnimatorCommon.this.refresh();
            }
        }, 0L, (long) (this.period * ((double) 1000)));
    }

    @Override
    public void stop() {
        if (this.timer == null) {
            Log.d("RNMBXShapeAnimator", "Timer for animator " + getTag() + " is already stopped (subscribers: " + this.subscribers.size() + ")");
            return;
        }
        Log.d("RNMBXShapeAnimator", "Stopped timer for animator " + getTag() + " (subscribers: " + this.subscribers.size() + ")");
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        this.timer = null;
    }

    @Override
    public GeoJson getShape() {
        return getAnimatedShape(getAnimatorAgeSec());
    }
}
