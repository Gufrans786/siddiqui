package com.mapbox.maps.plugin.compass;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.plugin.InvalidPluginConfigurationException;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.MapAnimationOptions;
import com.mapbox.maps.plugin.animation.MapAnimationOwnerRegistry;
import com.mapbox.maps.plugin.compass.generated.CompassAttributeParser;
import com.mapbox.maps.plugin.compass.generated.CompassSettings;
import com.mapbox.maps.plugin.compass.generated.CompassSettingsBase;
import com.mapbox.maps.plugin.compass.generated.CompassSettingsKt;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0001\u0018\u0000 J2\u00020\u00012\u00020\u0002:\u0001JB%\u0012\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\b\b\u0003\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0014H\u0016J\b\u0010*\u001a\u00020(H\u0014J\"\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u000202H\u0016J\b\u00103\u001a\u00020(H\u0016J\b\u00104\u001a\u00020(H\u0016J\b\u00105\u001a\u00020\u0018H\u0002J0\u00106\u001a\u00020(2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010;\u001a\u00020<H\u0016J\b\u0010=\u001a\u00020(H\u0016J\u0010\u0010>\u001a\u00020(2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020(2\u0006\u0010B\u001a\u00020,H\u0016J\b\u0010C\u001a\u00020(H\u0016J\b\u0010D\u001a\u00020(H\u0016J\u0010\u0010E\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0014H\u0016J\b\u0010F\u001a\u00020\u0018H\u0002J\u0010\u0010G\u001a\u00020(2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010H\u001a\u00020(2\b\b\u0002\u0010I\u001a\u00020\u0018H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n\u0000R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00188V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u00020\u001fX\u0094\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006K"}, d2 = {"Lcom/mapbox/maps/plugin/compass/CompassViewPlugin;", "Lcom/mapbox/maps/plugin/compass/CompassPlugin;", "Lcom/mapbox/maps/plugin/compass/generated/CompassSettingsBase;", "viewImplProvider", "Lkotlin/Function1;", "Landroid/content/Context;", "Lcom/mapbox/maps/plugin/compass/CompassViewImpl;", "fadeAnimator", "Landroid/animation/ValueAnimator;", "(Lkotlin/jvm/functions/Function1;Landroid/animation/ValueAnimator;)V", "animationPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "bearing", "", "getBearing$plugin_compass_release", "()D", "setBearing$plugin_compass_release", "(D)V", "compassClickListeners", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/compass/OnCompassClickListener;", "compassView", "Lcom/mapbox/maps/plugin/compass/CompassView;", "value", "", ViewProps.ENABLED, "getEnabled", "()Z", "setEnabled", "(Z)V", "internalSettings", "Lcom/mapbox/maps/plugin/compass/generated/CompassSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/compass/generated/CompassSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/compass/generated/CompassSettings;)V", "isHidden", "mapCameraManager", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "addCompassClickListener", "", "onClickListener", "applySettings", "bind", "Landroid/view/View;", "mapView", "Landroid/widget/FrameLayout;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "cleanup", "initialize", "isFacingNorth", "onCameraMove", "center", "Lcom/mapbox/geojson/Point;", "zoom", "pitch", ViewProps.PADDING, "Lcom/mapbox/maps/EdgeInsets;", "onCompassClicked", "onDelegateProvider", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "onPluginView", "view", "onStart", "onStop", "removeCompassClickListener", "shouldHideCompass", "update", "updateVisibility", "withAnimator", "Companion", "plugin-compass_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CompassViewPlugin extends CompassSettingsBase implements CompassPlugin {

    @Deprecated
    private static final long BEARING_NORTH_ANIMATION_DURATION = 300;
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final double DEFAULT_BEARING = 0.0d;

    @Deprecated
    private static final long TIME_FADE_ANIMATION = 500;

    @Deprecated
    private static final long TIME_WAIT_IDLE = 500;
    private CameraAnimationsPlugin animationPlugin;
    private double bearing;
    private final CopyOnWriteArraySet<OnCompassClickListener> compassClickListeners;
    private CompassView compassView;
    private final ValueAnimator fadeAnimator;
    private CompassSettings internalSettings;
    private boolean isHidden;
    private MapCameraManagerDelegate mapCameraManager;
    private final Function1<Context, CompassViewImpl> viewImplProvider;

    public CompassViewPlugin() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public CompassViewPlugin(Function1 function1, ValueAnimator valueAnimator, int i, DefaultConstructorMarker defaultConstructorMarker) {
        function1 = (i & 1) != 0 ? new Function1<Context, CompassViewImpl>() {
            @Override
            public final CompassViewImpl invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new CompassViewImpl(it, null, 0, 6, null);
            }
        } : function1;
        if ((i & 2) != 0) {
            valueAnimator = ValueAnimator.ofFloat(1.0f, 0.0f);
            Intrinsics.checkNotNullExpressionValue(valueAnimator, "ofFloat(1f, 0f)");
        }
        this(function1, valueAnimator);
    }

    public CompassViewPlugin(Function1<? super Context, ? extends CompassViewImpl> viewImplProvider, ValueAnimator fadeAnimator) {
        Intrinsics.checkNotNullParameter(viewImplProvider, "viewImplProvider");
        Intrinsics.checkNotNullParameter(fadeAnimator, "fadeAnimator");
        this.viewImplProvider = viewImplProvider;
        this.fadeAnimator = fadeAnimator;
        this.internalSettings = CompassSettingsKt.CompassSettings(new Function1<CompassSettings.Builder, Unit>() {
            public final void invoke2(CompassSettings.Builder CompassSettings) {
                Intrinsics.checkNotNullParameter(CompassSettings, "$this$CompassSettings");
            }

            @Override
            public Unit invoke(CompassSettings.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }
        });
        this.compassClickListeners = new CopyOnWriteArraySet<>();
        fadeAnimator.setDuration(500L);
        fadeAnimator.setStartDelay(500L);
        fadeAnimator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                CompassView compassView = this.this$0.compassView;
                if (compassView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("compassView");
                    compassView = null;
                }
                compassView.setCompassVisible(false);
            }
        });
        fadeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CompassViewPlugin.lambda$2$lambda$1(this.f$0, valueAnimator);
            }
        });
    }

    public final double getBearing() {
        return this.bearing;
    }

    public final void setBearing$plugin_compass_release(double d) {
        this.bearing = d;
    }

    @Override
    protected CompassSettings getInternalSettings() {
        return this.internalSettings;
    }

    @Override
    protected void setInternalSettings(CompassSettings compassSettings) {
        Intrinsics.checkNotNullParameter(compassSettings, "<set-?>");
        this.internalSettings = compassSettings;
    }

    static final void lambda$2$lambda$1(CompassViewPlugin this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        if (fFloatValue < this$0.getInternalSettings().getOpacity()) {
            CompassView compassView = this$0.compassView;
            if (compassView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("compassView");
                compassView = null;
            }
            compassView.setCompassAlpha(fFloatValue);
        }
    }

    @Override
    protected void applySettings() {
        int iIntValue;
        setEnabled(getInternalSettings().getEnabled());
        CompassView compassView = this.compassView;
        if (compassView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView = null;
        }
        compassView.setCompassGravity(getInternalSettings().getPosition());
        ImageHolder image = getInternalSettings().getImage();
        if (image != null) {
            Context context = ((CompassViewImpl) compassView).getContext();
            Bitmap bitmap = image.getBitmap();
            if (bitmap != null) {
                compassView.setCompassImage(new BitmapDrawable(context.getResources(), bitmap));
            }
            Integer drawableId = image.getDrawableId();
            if (drawableId != null && (iIntValue = drawableId.intValue()) != -1) {
                Drawable drawable = AppCompatResources.getDrawable(context, iIntValue);
                Intrinsics.checkNotNull(drawable);
                compassView.setCompassImage(drawable);
            }
        }
        compassView.setCompassRotation(getInternalSettings().getRotation());
        compassView.setCompassEnabled(getInternalSettings().getEnabled());
        compassView.setCompassAlpha(getInternalSettings().getOpacity());
        compassView.setCompassMargins((int) getInternalSettings().getMarginLeft(), (int) getInternalSettings().getMarginTop(), (int) getInternalSettings().getMarginRight(), (int) getInternalSettings().getMarginBottom());
        update(this.bearing);
        compassView.requestLayout();
    }

    @Override
    public boolean getEnabled() {
        return getInternalSettings().getEnabled();
    }

    @Override
    public void setEnabled(boolean z) {
        setInternalSettings(getInternalSettings().toBuilder().setEnabled(z).build());
        CompassView compassView = this.compassView;
        CompassView compassView2 = null;
        if (compassView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView = null;
        }
        compassView.setCompassEnabled(z);
        update(this.bearing);
        if (z && !shouldHideCompass()) {
            CompassView compassView3 = this.compassView;
            if (compassView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("compassView");
                compassView3 = null;
            }
            compassView3.setCompassAlpha(getInternalSettings().getOpacity());
            CompassView compassView4 = this.compassView;
            if (compassView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("compassView");
            } else {
                compassView2 = compassView4;
            }
            compassView2.setCompassVisible(true);
            return;
        }
        CompassView compassView5 = this.compassView;
        if (compassView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView5 = null;
        }
        compassView5.setCompassAlpha(0.0f);
        CompassView compassView6 = this.compassView;
        if (compassView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
        } else {
            compassView2 = compassView6;
        }
        compassView2.setCompassVisible(false);
    }

    @Override
    public View bind(FrameLayout mapView, AttributeSet attrs, float pixelRatio) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        CompassAttributeParser compassAttributeParser = CompassAttributeParser.INSTANCE;
        Context context = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mapView.context");
        setInternalSettings(compassAttributeParser.parseCompassSettings(context, attrs, pixelRatio));
        Function1<Context, CompassViewImpl> function1 = this.viewImplProvider;
        Context context2 = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "mapView.context");
        CompassViewImpl compassViewImplInvoke = function1.invoke(context2);
        compassViewImplInvoke.injectPresenter$plugin_compass_release(this);
        return compassViewImplInvoke;
    }

    @Override
    public void onPluginView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        CompassView compassView = view instanceof CompassView ? (CompassView) view : null;
        if (compassView == null) {
            throw new IllegalArgumentException("The provided view needs to implement CompassContract.CompassView");
        }
        this.compassView = compassView;
        updateVisibility(false);
    }

    @Override
    public void initialize() {
        applySettings();
    }

    @Override
    public void cleanup() {
        this.compassClickListeners.clear();
        this.fadeAnimator.cancel();
        CompassView compassView = this.compassView;
        if (compassView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView = null;
        }
        compassView.setCompassEnabled(false);
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) throws InvalidPluginConfigurationException {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        MapCameraManagerDelegate mapCameraManagerDelegate = delegateProvider.getMapCameraManagerDelegate();
        this.mapCameraManager = mapCameraManagerDelegate;
        if (mapCameraManagerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapCameraManager");
            mapCameraManagerDelegate = null;
        }
        this.bearing = mapCameraManagerDelegate.getCameraState().getBearing();
        CameraAnimationsPlugin cameraAnimationsPlugin = (CameraAnimationsPlugin) delegateProvider.getMapPluginProviderDelegate().getPlugin(Plugin.MAPBOX_CAMERA_PLUGIN_ID);
        if (cameraAnimationsPlugin == null) {
            throw new InvalidPluginConfigurationException("Can't look up an instance of plugin, is it available on the clazz path and loaded through the map?");
        }
        this.animationPlugin = cameraAnimationsPlugin;
    }

    @Override
    public void onStart() {
        update(this.bearing);
    }

    @Override
    public void onStop() {
        this.fadeAnimator.cancel();
    }

    @Override
    public void onCameraMove(Point center, double zoom, double pitch, double bearing, EdgeInsets padding) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(padding, "padding");
        update(bearing);
    }

    @Override
    public void addCompassClickListener(OnCompassClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.compassClickListeners.add(onClickListener);
    }

    @Override
    public void removeCompassClickListener(OnCompassClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.compassClickListeners.remove(onClickListener);
    }

    @Override
    public void onCompassClicked() {
        MapCameraManagerDelegate mapCameraManagerDelegate;
        if (getInternalSettings().getClickable()) {
            CameraAnimationsPlugin cameraAnimationsPlugin = this.animationPlugin;
            if (cameraAnimationsPlugin != null) {
                CameraOptions cameraOptionsBuild = new CameraOptions.Builder().bearing(Double.valueOf(0.0d)).build();
                Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().bearing(DEFAULT_BEARING).build()");
                MapAnimationOptions.Companion companion = MapAnimationOptions.INSTANCE;
                MapAnimationOptions.Builder builder = new MapAnimationOptions.Builder();
                builder.owner(MapAnimationOwnerRegistry.COMPASS);
                builder.duration(300L);
                Unit unit = Unit.INSTANCE;
                if (CameraAnimationsPlugin.DefaultImpls.flyTo$default(cameraAnimationsPlugin, cameraOptionsBuild, builder.build(), null, 4, null) == null) {
                    mapCameraManagerDelegate = this.mapCameraManager;
                    if (mapCameraManagerDelegate == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mapCameraManager");
                        mapCameraManagerDelegate = null;
                    }
                    CameraOptions cameraOptionsBuild2 = new CameraOptions.Builder().bearing(Double.valueOf(0.0d)).build();
                    Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild2, "Builder().bearing(DEFAULT_BEARING).build()");
                    mapCameraManagerDelegate.setCamera(cameraOptionsBuild2);
                    Unit unit2 = Unit.INSTANCE;
                }
            } else {
                mapCameraManagerDelegate = this.mapCameraManager;
                if (mapCameraManagerDelegate == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mapCameraManager");
                    mapCameraManagerDelegate = null;
                }
                CameraOptions cameraOptionsBuild3 = new CameraOptions.Builder().bearing(Double.valueOf(0.0d)).build();
                Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild3, "Builder().bearing(DEFAULT_BEARING).build()");
                mapCameraManagerDelegate.setCamera(cameraOptionsBuild3);
                Unit unit3 = Unit.INSTANCE;
            }
            Iterator<T> it = this.compassClickListeners.iterator();
            while (it.hasNext()) {
                ((OnCompassClickListener) it.next()).onCompassClick();
            }
        }
    }

    private final void update(double bearing) {
        this.bearing = bearing;
        CompassView compassView = this.compassView;
        if (compassView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView = null;
        }
        compassView.setCompassRotation(-((float) bearing));
        updateVisibility$default(this, false, 1, null);
    }

    static void updateVisibility$default(CompassViewPlugin compassViewPlugin, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        compassViewPlugin.updateVisibility(z);
    }

    private final void updateVisibility(boolean withAnimator) {
        CompassView compassView = this.compassView;
        CompassView compassView2 = null;
        if (compassView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView = null;
        }
        if (compassView.isCompassEnabled()) {
            if (shouldHideCompass()) {
                if (this.isHidden) {
                    return;
                }
                this.isHidden = true;
                if (withAnimator) {
                    this.fadeAnimator.start();
                    return;
                }
                CompassView compassView3 = this.compassView;
                if (compassView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("compassView");
                    compassView3 = null;
                }
                compassView3.setCompassVisible(false);
                CompassView compassView4 = this.compassView;
                if (compassView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("compassView");
                } else {
                    compassView2 = compassView4;
                }
                compassView2.setCompassAlpha(0.0f);
                return;
            }
            this.isHidden = false;
            this.fadeAnimator.cancel();
            CompassView compassView5 = this.compassView;
            if (compassView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("compassView");
                compassView5 = null;
            }
            compassView5.setCompassVisible(true);
            CompassView compassView6 = this.compassView;
            if (compassView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("compassView");
            } else {
                compassView2 = compassView6;
            }
            compassView2.setCompassAlpha(getInternalSettings().getOpacity());
        }
    }

    private final boolean shouldHideCompass() {
        return getInternalSettings().getFadeWhenFacingNorth() && isFacingNorth();
    }

    private final boolean isFacingNorth() {
        CompassView compassView = this.compassView;
        CompassView compassView2 = null;
        if (compassView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
            compassView = null;
        }
        if (Math.abs(compassView.getCompassRotation()) >= 359.0d) {
            return true;
        }
        CompassView compassView3 = this.compassView;
        if (compassView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("compassView");
        } else {
            compassView2 = compassView3;
        }
        return ((double) Math.abs(compassView2.getCompassRotation())) <= 1.0d;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/compass/CompassViewPlugin$Companion;", "", "()V", "BEARING_NORTH_ANIMATION_DURATION", "", "DEFAULT_BEARING", "", "TIME_FADE_ANIMATION", "TIME_WAIT_IDLE", "plugin-compass_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
