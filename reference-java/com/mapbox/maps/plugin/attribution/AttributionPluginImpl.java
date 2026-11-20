package com.mapbox.maps.plugin.attribution;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.plugin.attribution.generated.AttributionAttributeParser;
import com.mapbox.maps.plugin.attribution.generated.AttributionSettings;
import com.mapbox.maps.plugin.attribution.generated.AttributionSettingsBase;
import com.mapbox.maps.plugin.attribution.generated.AttributionSettingsKt;
import com.mapbox.maps.plugin.delegates.MapAttributionDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001b\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\b\u0010\u0015\u001a\u00020\u0016H\u0014J\"\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0014H\u0016J\b\u0010 \u001a\u00020\u0016H\u0016J\u0012\u0010!\u001a\u00020\u00162\b\u0010\"\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0018H\u0016J\b\u0010(\u001a\u00020\u0016H\u0016J\u0012\u0010)\u001a\u00020\u00162\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0094\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/mapbox/maps/plugin/attribution/AttributionPluginImpl;", "Lcom/mapbox/maps/plugin/attribution/AttributionPlugin;", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsBase;", "Landroid/view/View$OnClickListener;", "viewImplProvider", "Lkotlin/Function1;", "Landroid/content/Context;", "Lcom/mapbox/maps/plugin/attribution/AttributionViewImpl;", "(Lkotlin/jvm/functions/Function1;)V", "attributionView", "Lcom/mapbox/maps/plugin/attribution/AttributionView;", "dialogManager", "Lcom/mapbox/maps/plugin/attribution/AttributionDialogManager;", "internalSettings", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;)V", "mapAttributionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapAttributionDelegate;", "applySettings", "", "bind", "Landroid/view/View;", "mapView", "Landroid/widget/FrameLayout;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "", "getMapAttributionDelegate", "initialize", ViewProps.ON_CLICK, "v", "onDelegateProvider", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "onPluginView", "view", "onStop", "setContentDescription", "contentDescription", "", "setCustomAttributionDialogManager", "plugin-attribution_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AttributionPluginImpl extends AttributionSettingsBase implements AttributionPlugin, View.OnClickListener {
    private AttributionView attributionView;
    private AttributionDialogManager dialogManager;
    private AttributionSettings internalSettings;
    private MapAttributionDelegate mapAttributionDelegate;
    private final Function1<Context, AttributionViewImpl> viewImplProvider;

    public AttributionPluginImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public void cleanup() {
        AttributionPlugin.DefaultImpls.cleanup(this);
    }

    @Override
    public void onStart() {
        AttributionPlugin.DefaultImpls.onStart(this);
    }

    public AttributionPluginImpl(AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Function1<Context, AttributionViewImpl>() {
            @Override
            public final AttributionViewImpl invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new AttributionViewImpl(it, null, 0, 6, null);
            }
        } : anonymousClass1);
    }

    public AttributionPluginImpl(Function1<? super Context, AttributionViewImpl> viewImplProvider) {
        Intrinsics.checkNotNullParameter(viewImplProvider, "viewImplProvider");
        this.viewImplProvider = viewImplProvider;
        this.internalSettings = AttributionSettingsKt.AttributionSettings(new Function1<AttributionSettings.Builder, Unit>() {
            public final void invoke2(AttributionSettings.Builder AttributionSettings) {
                Intrinsics.checkNotNullParameter(AttributionSettings, "$this$AttributionSettings");
            }

            @Override
            public Unit invoke(AttributionSettings.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }
        });
    }

    @Override
    protected AttributionSettings getInternalSettings() {
        return this.internalSettings;
    }

    @Override
    protected void setInternalSettings(AttributionSettings attributionSettings) {
        Intrinsics.checkNotNullParameter(attributionSettings, "<set-?>");
        this.internalSettings = attributionSettings;
    }

    @Override
    protected void applySettings() {
        AttributionView attributionView = this.attributionView;
        AttributionView attributionView2 = null;
        if (attributionView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionView");
            attributionView = null;
        }
        attributionView.setGravity(getInternalSettings().getPosition());
        AttributionView attributionView3 = this.attributionView;
        if (attributionView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionView");
            attributionView3 = null;
        }
        attributionView3.setEnable(getInternalSettings().getEnabled());
        AttributionView attributionView4 = this.attributionView;
        if (attributionView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionView");
            attributionView4 = null;
        }
        attributionView4.setIconColor(getInternalSettings().getIconColor());
        AttributionView attributionView5 = this.attributionView;
        if (attributionView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionView");
            attributionView5 = null;
        }
        attributionView5.setAttributionMargins((int) getInternalSettings().getMarginLeft(), (int) getInternalSettings().getMarginTop(), (int) getInternalSettings().getMarginRight(), (int) getInternalSettings().getMarginBottom());
        AttributionView attributionView6 = this.attributionView;
        if (attributionView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionView");
        } else {
            attributionView2 = attributionView6;
        }
        attributionView2.requestLayout();
    }

    @Override
    public MapAttributionDelegate getMapAttributionDelegate() {
        MapAttributionDelegate mapAttributionDelegate = this.mapAttributionDelegate;
        if (mapAttributionDelegate != null) {
            return mapAttributionDelegate;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mapAttributionDelegate");
        return null;
    }

    @Override
    public void onClick(View v) {
        if (getInternalSettings().getClickable()) {
            AttributionDialogManager attributionDialogManager = this.dialogManager;
            MapAttributionDelegate mapAttributionDelegate = null;
            if (attributionDialogManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("dialogManager");
                attributionDialogManager = null;
            }
            MapAttributionDelegate mapAttributionDelegate2 = this.mapAttributionDelegate;
            if (mapAttributionDelegate2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapAttributionDelegate");
            } else {
                mapAttributionDelegate = mapAttributionDelegate2;
            }
            attributionDialogManager.showAttribution(mapAttributionDelegate);
        }
    }

    @Override
    public void setContentDescription(CharSequence contentDescription) {
        AttributionView attributionView = this.attributionView;
        if (attributionView != null) {
            if (attributionView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("attributionView");
                attributionView = null;
            }
            attributionView.setContentDescription(contentDescription);
        }
    }

    @Override
    public void setCustomAttributionDialogManager(AttributionDialogManager dialogManager) {
        Intrinsics.checkNotNullParameter(dialogManager, "dialogManager");
        this.dialogManager = dialogManager;
    }

    @Override
    public View bind(FrameLayout mapView, AttributeSet attrs, float pixelRatio) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        AttributionAttributeParser attributionAttributeParser = AttributionAttributeParser.INSTANCE;
        Context context = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mapView.context");
        setInternalSettings(attributionAttributeParser.parseAttributionSettings(context, attrs, pixelRatio));
        Context context2 = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "mapView.context");
        this.dialogManager = new AttributionDialogManagerImpl(context2);
        Function1<Context, AttributionViewImpl> function1 = this.viewImplProvider;
        Context context3 = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "mapView.context");
        return function1.invoke(context3);
    }

    @Override
    public void initialize() {
        applySettings();
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.mapAttributionDelegate = delegateProvider.getMapAttributionDelegate();
    }

    @Override
    public void onPluginView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        AttributionView attributionView = null;
        AttributionView attributionView2 = view instanceof AttributionView ? (AttributionView) view : null;
        if (attributionView2 == null) {
            throw new IllegalArgumentException("The provided view needs to implement AttributionView");
        }
        this.attributionView = attributionView2;
        if (attributionView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionView");
        } else {
            attributionView = attributionView2;
        }
        attributionView.setViewOnClickListener(this);
    }

    @Override
    public void onStop() {
        AttributionDialogManager attributionDialogManager = this.dialogManager;
        if (attributionDialogManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogManager");
            attributionDialogManager = null;
        }
        attributionDialogManager.onStop();
    }
}
