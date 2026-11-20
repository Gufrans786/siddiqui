package com.rnmapbox.rnmbx.components.styles.layers;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.logging.FLog;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.LayerUtils;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.components.styles.sources.AbstractSourceConsumer;
import com.rnmapbox.rnmbx.utils.ExpressionParser;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 ~*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003:\u0001~B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010\fJ\b\u0010K\u001a\u0004\u0018\u00010\fJ\u0010\u0010L\u001a\u00020I2\b\u0010M\u001a\u0004\u0018\u00010\fJ\u0010\u0010N\u001a\u00020I2\b\u0010O\u001a\u0004\u0018\u00010\fJ\u000e\u0010P\u001a\u00020I2\u0006\u0010Q\u001a\u00020\u0019J\u000e\u0010R\u001a\u00020I2\u0006\u0010S\u001a\u00020 J\u000e\u0010T\u001a\u00020I2\u0006\u0010U\u001a\u00020&J\u000e\u0010V\u001a\u00020I2\u0006\u0010W\u001a\u00020&J\u0010\u0010X\u001a\u00020I2\b\u0010Y\u001a\u0004\u0018\u000100J\u0010\u0010Z\u001a\u00020I2\b\u0010[\u001a\u0004\u0018\u00010\\J\u0010\u0010`\u001a\u00020I2\b\u0010a\u001a\u0004\u0018\u00010\fJ\u000e\u0010b\u001a\u00020I2\u0006\u0010c\u001a\u00020 J\u0006\u0010d\u001a\u00020IJ\u0016\u0010e\u001a\u00020I2\u0006\u0010f\u001a\u00020g2\u0006\u0010M\u001a\u00020\fJ\u0016\u0010h\u001a\u00020I2\u0006\u0010f\u001a\u00020g2\u0006\u0010O\u001a\u00020\fJ\u000e\u0010i\u001a\u00020I2\u0006\u0010j\u001a\u00020\u0019J\b\u0010k\u001a\u00020IH\u0004J\b\u0010l\u001a\u00020IH\u0004J\b\u0010m\u001a\u00020IH\u0004J\u0012\u0010n\u001a\u00020I2\b\u0010o\u001a\u0004\u0018\u000102H\u0014J!\u0010p\u001a\u0004\u0018\u00018\u00002\u0006\u0010q\u001a\u00020r2\b\u0010s\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0002\u0010tJ\u0010\u0010u\u001a\u00020I2\u0006\u0010f\u001a\u00020gH\u0016J\u0018\u0010v\u001a\u00020 2\u0006\u0010f\u001a\u00020g2\u0006\u0010w\u001a\u00020xH\u0016J\r\u0010{\u001a\u00028\u0000H&¢\u0006\u0002\u0010;J\b\u0010|\u001a\u00020IH&J\b\u0010}\u001a\u00020 H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\f8\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0084\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001f\u001a\u00020 X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001e\u0010%\u001a\u0004\u0018\u00010&X\u0084\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010,\u001a\u0004\u0018\u00010&X\u0084\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R\u0014\u0010/\u001a\u0004\u0018\u0001008\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u001c\u00101\u001a\u0004\u0018\u000102X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0014\u00107\u001a\u0004\u0018\u0001088\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u001e\u00109\u001a\u0004\u0018\u00018\u0000X\u0084\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001a\u0010?\u001a\u00020 X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\"\"\u0004\bA\u0010$R\u001e\u0010B\u001a\u0004\u0018\u00010 X\u0084\u000e¢\u0006\u0010\n\u0002\u0010G\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001c\u0010]\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010\u000e\"\u0004\b_\u0010\u0010R\u0016\u0010q\u001a\u0004\u0018\u00010r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\by\u0010z¨\u0006\u007f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/extension/style/layers/Layer;", "Lcom/rnmapbox/rnmbx/components/styles/sources/AbstractSourceConsumer;", "mContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getMContext", "()Landroid/content/Context;", "setMContext", "iD", "", "getID", "()Ljava/lang/String;", "setID", "(Ljava/lang/String;)V", "mSourceID", "mAboveLayerID", "getMAboveLayerID", "setMAboveLayerID", "mBelowLayerID", "getMBelowLayerID", "setMBelowLayerID", "mLayerIndex", "", "getMLayerIndex", "()Ljava/lang/Integer;", "setMLayerIndex", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "mVisible", "", "getMVisible", "()Z", "setMVisible", "(Z)V", "mMinZoomLevel", "", "getMMinZoomLevel", "()Ljava/lang/Double;", "setMMinZoomLevel", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "mMaxZoomLevel", "getMMaxZoomLevel", "setMMaxZoomLevel", "mReactStyle", "Lcom/facebook/react/bridge/ReadableMap;", "mFilter", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getMFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "setMFilter", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mLayer", "getMLayer", "()Lcom/mapbox/maps/extension/style/layers/Layer;", "setMLayer", "(Lcom/mapbox/maps/extension/style/layers/Layer;)V", "Lcom/mapbox/maps/extension/style/layers/Layer;", "mHadFilter", "getMHadFilter", "setMHadFilter", "mExisting", "getMExisting", "()Ljava/lang/Boolean;", "setMExisting", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "setSourceID", "", "sourceID", "checkID", "setAboveLayerID", "aboveLayerID", "setBelowLayerID", "belowLayerID", "setLayerIndex", "layerIndex", "setVisible", ViewProps.VISIBLE, "setMinZoomLevel", "minZoomLevel", "setMaxZoomLevel", "maxZoomLevel", "setReactStyle", "reactStyle", "setFilter", "readableFilterArray", "Lcom/facebook/react/bridge/ReadableArray;", "mSlot", "getMSlot", "setMSlot", "setSlot", "slot", "setExisting", "existing", "add", "addAbove", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "addBelow", "addAtIndex", FirebaseAnalytics.Param.INDEX, "insertLayer", "applyZoomBounds", "applySlot", "updateFilter", "expression", "getLayerAs", "style", "Lcom/mapbox/maps/Style;", "id", "(Lcom/mapbox/maps/Style;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/Layer;", "addToMap", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "getStyle", "()Lcom/mapbox/maps/Style;", "makeLayer", "addStyles", "hasInitialized", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RNMBXLayer<T extends Layer> extends AbstractSourceConsumer {
    public static final String LOG_TAG = "RNMBXLayer";
    private String iD;
    private String mAboveLayerID;
    private String mBelowLayerID;
    private Context mContext;
    private Boolean mExisting;
    private Expression mFilter;
    private boolean mHadFilter;
    private T mLayer;
    private Integer mLayerIndex;
    protected MapboxMap mMap;
    private Double mMaxZoomLevel;
    private Double mMinZoomLevel;
    protected ReadableMap mReactStyle;
    private String mSlot;
    protected String mSourceID;
    private boolean mVisible;

    public abstract void addStyles();

    public abstract T makeLayer();

    protected void updateFilter(Expression expression) {
    }

    public RNMBXLayer(Context mContext) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    protected final Context getMContext() {
        return this.mContext;
    }

    protected final void setMContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.mContext = context;
    }

    @Override
    public String getID() {
        return this.iD;
    }

    public void setID(String str) {
        this.iD = str;
    }

    protected final String getMAboveLayerID() {
        return this.mAboveLayerID;
    }

    protected final void setMAboveLayerID(String str) {
        this.mAboveLayerID = str;
    }

    protected final String getMBelowLayerID() {
        return this.mBelowLayerID;
    }

    protected final void setMBelowLayerID(String str) {
        this.mBelowLayerID = str;
    }

    protected final Integer getMLayerIndex() {
        return this.mLayerIndex;
    }

    protected final void setMLayerIndex(Integer num) {
        this.mLayerIndex = num;
    }

    protected final boolean getMVisible() {
        return this.mVisible;
    }

    protected final void setMVisible(boolean z) {
        this.mVisible = z;
    }

    protected final Double getMMinZoomLevel() {
        return this.mMinZoomLevel;
    }

    protected final void setMMinZoomLevel(Double d) {
        this.mMinZoomLevel = d;
    }

    protected final Double getMMaxZoomLevel() {
        return this.mMaxZoomLevel;
    }

    protected final void setMMaxZoomLevel(Double d) {
        this.mMaxZoomLevel = d;
    }

    protected final Expression getMFilter() {
        return this.mFilter;
    }

    protected final void setMFilter(Expression expression) {
        this.mFilter = expression;
    }

    protected final T getMLayer() {
        return this.mLayer;
    }

    protected final void setMLayer(T t) {
        this.mLayer = t;
    }

    protected final boolean getMHadFilter() {
        return this.mHadFilter;
    }

    protected final void setMHadFilter(boolean z) {
        this.mHadFilter = z;
    }

    protected final Boolean getMExisting() {
        return this.mExisting;
    }

    protected final void setMExisting(Boolean bool) {
        this.mExisting = bool;
    }

    public final void setSourceID(String sourceID) {
        this.mSourceID = sourceID;
    }

    public final String checkID() {
        if (getID() == null) {
            Logger.INSTANCE.w(LOG_TAG, "iD is null in layer");
        }
        return getID();
    }

    public final void setAboveLayerID(String aboveLayerID) {
        RNMBXMapView mMapView;
        String str = this.mAboveLayerID;
        if (str == null || !Intrinsics.areEqual(str, aboveLayerID)) {
            this.mAboveLayerID = aboveLayerID;
            if (aboveLayerID == null || (mMapView = getMMapView()) == null) {
                return;
            }
            removeFromMap(mMapView, RemovalReason.REORDER);
            addAbove(mMapView, aboveLayerID);
        }
    }

    public final void setBelowLayerID(String belowLayerID) {
        RNMBXMapView mMapView;
        String str = this.mBelowLayerID;
        if (str == null || !Intrinsics.areEqual(str, belowLayerID)) {
            this.mBelowLayerID = belowLayerID;
            if (belowLayerID == null || (mMapView = getMMapView()) == null) {
                return;
            }
            removeFromMap(mMapView, RemovalReason.REORDER);
            addBelow(mMapView, belowLayerID);
        }
    }

    public final void setLayerIndex(int layerIndex) {
        Integer num = this.mLayerIndex;
        if (num == null || num == null || num.intValue() != layerIndex) {
            this.mLayerIndex = Integer.valueOf(layerIndex);
            if (this.mLayer != null) {
                RNMBXMapView mMapView = getMMapView();
                Intrinsics.checkNotNull(mMapView);
                removeFromMap(mMapView, RemovalReason.REORDER);
                addAtIndex(layerIndex);
            }
        }
    }

    public final void setVisible(boolean visible) {
        this.mVisible = visible;
        T t = this.mLayer;
        if (t != null) {
            Intrinsics.checkNotNull(t);
            t.visibility(this.mVisible ? Visibility.VISIBLE : Visibility.NONE);
        }
    }

    public final void setMinZoomLevel(double minZoomLevel) {
        this.mMinZoomLevel = Double.valueOf(minZoomLevel);
        T t = this.mLayer;
        if (t != null) {
            Intrinsics.checkNotNull(t);
            t.minZoom((float) minZoomLevel);
        }
    }

    public final void setMaxZoomLevel(double maxZoomLevel) {
        this.mMaxZoomLevel = Double.valueOf(maxZoomLevel);
        T t = this.mLayer;
        if (t != null) {
            t.maxZoom((float) maxZoomLevel);
        }
    }

    public final void setReactStyle(ReadableMap reactStyle) {
        this.mReactStyle = reactStyle;
        if (this.mLayer != null) {
            addStyles();
        }
    }

    public final void setFilter(ReadableArray readableFilterArray) {
        Expression expressionFrom = ExpressionParser.from(readableFilterArray);
        this.mFilter = expressionFrom;
        if (this.mLayer != null) {
            if (expressionFrom != null) {
                this.mHadFilter = true;
                updateFilter(expressionFrom);
            } else if (this.mHadFilter) {
                updateFilter(ExpressionDslKt.all(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RNMBXLayer.setFilter$lambda$3((Expression.ExpressionBuilder) obj);
                    }
                }));
            }
        }
    }

    public static final Unit setFilter$lambda$3(Expression.ExpressionBuilder all) {
        Intrinsics.checkNotNullParameter(all, "$this$all");
        return Unit.INSTANCE;
    }

    public final String getMSlot() {
        return this.mSlot;
    }

    public final void setMSlot(String str) {
        this.mSlot = str;
    }

    public final void setSlot(String slot) {
        this.mSlot = slot;
        applySlot();
    }

    public final void setExisting(boolean existing) {
        this.mExisting = Boolean.valueOf(existing);
    }

    public final void add() {
        if (hasInitialized() && getStyle() != null) {
            Logger.INSTANCE.logged("RNMBXLayer.add", new Function0() {
                @Override
                public final Object invoke() {
                    return RNMBXLayer.add$lambda$4(this.f$0);
                }
            });
        }
    }

    public static final Unit add$lambda$4(RNMBXLayer rNMBXLayer) {
        Style style = rNMBXLayer.getStyle();
        Intrinsics.checkNotNull(style);
        T t = rNMBXLayer.mLayer;
        Intrinsics.checkNotNull(t);
        LayerUtils.addLayer(style, t);
        RNMBXMapView mMapView = rNMBXLayer.getMMapView();
        Intrinsics.checkNotNull(mMapView);
        T t2 = rNMBXLayer.mLayer;
        Intrinsics.checkNotNull(t2);
        mMapView.layerAdded(t2);
        return Unit.INSTANCE;
    }

    public final void addAbove(final RNMBXMapView mapView, final String aboveLayerID) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(aboveLayerID, "aboveLayerID");
        mapView.waitForLayer(aboveLayerID, new RNMBXMapView.FoundLayerCallback(this) {
            final RNMBXLayer<T> this$0;

            {
                this.this$0 = this;
            }

            @Override
            public void found(Layer aboveLayer) {
                Style savedStyle;
                if (this.this$0.hasInitialized() && (savedStyle = mapView.getSavedStyle()) != null) {
                    RNMBXLayer<T> rNMBXLayer = this.this$0;
                    String str = aboveLayerID;
                    RNMBXMapView rNMBXMapView = mapView;
                    Layer mLayer = rNMBXLayer.getMLayer();
                    if (mLayer != null) {
                        LayerUtils.addLayerAbove(savedStyle, mLayer, str);
                        rNMBXMapView.layerAdded(mLayer);
                        rNMBXLayer.setMMapView(rNMBXMapView);
                    }
                }
            }
        });
    }

    public final void addBelow(final RNMBXMapView mapView, final String belowLayerID) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(belowLayerID, "belowLayerID");
        mapView.waitForLayer(belowLayerID, new RNMBXMapView.FoundLayerCallback(this) {
            final RNMBXLayer<T> this$0;

            {
                this.this$0 = this;
            }

            @Override
            public void found(Layer belowLayer) {
                Style savedStyle;
                if (this.this$0.hasInitialized() && (savedStyle = mapView.getSavedStyle()) != null) {
                    RNMBXLayer<T> rNMBXLayer = this.this$0;
                    String str = belowLayerID;
                    RNMBXMapView rNMBXMapView = mapView;
                    Layer mLayer = rNMBXLayer.getMLayer();
                    if (mLayer != null) {
                        LayerUtils.addLayerBelow(savedStyle, mLayer, str);
                        rNMBXMapView.layerAdded(mLayer);
                        rNMBXLayer.setMMapView(rNMBXMapView);
                    }
                }
            }
        });
    }

    public final void addAtIndex(int index) {
        Style style;
        RNMBXMapView mMapView;
        if (hasInitialized() && (style = getStyle()) != null) {
            int size = style.getStyleLayers().size();
            if (index >= size) {
                FLog.e(LOG_TAG, "Layer index is greater than number of layers on map. Layer inserted at end of layer stack.");
                index = size - 1;
            }
            T t = this.mLayer;
            if (t == null || (mMapView = getMMapView()) == null) {
                return;
            }
            LayerUtils.addLayerAt(style, t, Integer.valueOf(index));
            mMapView.layerAdded(t);
        }
    }

    protected final void insertLayer() {
        String strCheckID;
        RNMBXMapView mMapView;
        String str;
        Integer num;
        Style style = getStyle();
        if (style == null || (strCheckID = checkID()) == null || style.styleLayerExists(strCheckID) || (mMapView = getMMapView()) == null) {
            return;
        }
        if (this.mLayer != null) {
            String str2 = this.mAboveLayerID;
            if (str2 != null) {
                addAbove(mMapView, str2);
                if (str2 == null) {
                    str = this.mBelowLayerID;
                    if (str != null) {
                        addBelow(mMapView, str);
                        if (str == null) {
                            num = this.mLayerIndex;
                            if (num != null) {
                                Integer num2 = num;
                                addAtIndex(num2.intValue());
                                Integer.valueOf(num2.intValue());
                            } else {
                                add();
                                Unit unit = Unit.INSTANCE;
                            }
                        }
                    } else {
                        num = this.mLayerIndex;
                        if (num != null) {
                            Integer num3 = num;
                            addAtIndex(num3.intValue());
                            Integer.valueOf(num3.intValue());
                        } else {
                            add();
                            Unit unit2 = Unit.INSTANCE;
                        }
                    }
                }
            } else {
                str = this.mBelowLayerID;
                if (str != null) {
                    addBelow(mMapView, str);
                    if (str == null) {
                        num = this.mLayerIndex;
                        if (num != null) {
                            Integer num4 = num;
                            addAtIndex(num4.intValue());
                            Integer.valueOf(num4.intValue());
                        } else {
                            add();
                            Unit unit3 = Unit.INSTANCE;
                        }
                    }
                } else {
                    num = this.mLayerIndex;
                    if (num != null) {
                        Integer num5 = num;
                        addAtIndex(num5.intValue());
                        Integer.valueOf(num5.intValue());
                    } else {
                        add();
                        Unit unit4 = Unit.INSTANCE;
                    }
                }
            }
        }
        applyZoomBounds();
        applySlot();
    }

    protected final void applyZoomBounds() {
        T t = this.mLayer;
        if (t != null) {
            Double d = this.mMaxZoomLevel;
            if (d != null) {
                t.maxZoom(d.doubleValue());
            }
            Double d2 = this.mMinZoomLevel;
            if (d2 != null) {
                t.minZoom(d2.doubleValue());
            }
        }
    }

    protected final void applySlot() {
        String str;
        T t = this.mLayer;
        if (t == null || (str = this.mSlot) == null) {
            return;
        }
        t.slot(str);
    }

    private final T getLayerAs(Style style, String id) {
        String id2 = getID();
        Intrinsics.checkNotNull(id2);
        return (T) LayerUtils.getLayer(style, id2);
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        String strCheckID;
        T t;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        this.mMap = mapView.getMapboxMap();
        Style style = getStyle();
        if (style == null || (strCheckID = checkID()) == null) {
            return;
        }
        if (style.styleLayerExists(strCheckID)) {
            if (this.mExisting == null) {
                Logger.INSTANCE.e(LOG_TAG, "Layer " + strCheckID + " seems to refer to an existing layer but existing flag is not specified, this is deprecated");
            }
            t = (T) getLayerAs(style, strCheckID);
        } else {
            t = null;
        }
        if (t != null) {
            this.mLayer = t;
        } else {
            this.mLayer = (T) makeLayer();
            insertLayer();
        }
        addStyles();
        Expression expression = this.mFilter;
        if (expression != null) {
            this.mHadFilter = true;
            updateFilter(expression);
        }
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Style style = getStyle();
        if (style != null) {
            T t = this.mLayer;
            if (t != null) {
                style.removeStyleLayer(t.getLayerId());
                if (reason != RemovalReason.REORDER) {
                    this.mLayer = null;
                }
            } else {
                Logger.INSTANCE.e(LOG_TAG, "mLayer is null on removal layer from map");
            }
        }
        return super.removeFromMap(mapView, reason);
    }

    private final Style getStyle() {
        RNMBXMapView mMapView;
        if (this.mMap == null || (mMapView = getMMapView()) == null) {
            return null;
        }
        return mMapView.getSavedStyle();
    }

    public final boolean hasInitialized() {
        return (this.mMap == null || this.mLayer == null) ? false : true;
    }
}
