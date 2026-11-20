package com.rnmapbox.rnmbx.components.mapview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.android.gestures.MoveGestureDetector;
import com.mapbox.android.gestures.RotateGestureDetector;
import com.mapbox.android.gestures.ShoveGestureDetector;
import com.mapbox.android.gestures.StandardScaleGestureDetector;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import com.mapbox.maps.AsyncOperationResultCallback;
import com.mapbox.maps.CameraBounds;
import com.mapbox.maps.CameraBoundsOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.CoordinateBounds;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.MapInitOptions;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.QueriedRenderedFeature;
import com.mapbox.maps.QueriedSourceFeature;
import com.mapbox.maps.QueryFeatureStateCallback;
import com.mapbox.maps.QueryRenderedFeaturesCallback;
import com.mapbox.maps.QuerySourceFeaturesCallback;
import com.mapbox.maps.RenderedQueryGeometry;
import com.mapbox.maps.RenderedQueryOptions;
import com.mapbox.maps.ScreenBox;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.Size;
import com.mapbox.maps.SourceQueryOptions;
import com.mapbox.maps.Style;
import com.mapbox.maps.StyleObjectInfo;
import com.mapbox.maps.extension.localization.StyleInterfaceExtensionKt;
import com.mapbox.maps.extension.observable.eventdata.CameraChangedEventData;
import com.mapbox.maps.extension.observable.eventdata.MapIdleEventData;
import com.mapbox.maps.extension.observable.eventdata.MapLoadedEventData;
import com.mapbox.maps.extension.observable.eventdata.MapLoadingErrorEventData;
import com.mapbox.maps.extension.observable.eventdata.RenderFrameFinishedEventData;
import com.mapbox.maps.extension.observable.eventdata.StyleImageMissingEventData;
import com.mapbox.maps.extension.observable.eventdata.StyleLoadedEventData;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.LayerUtils;
import com.mapbox.maps.extension.style.layers.generated.BackgroundLayer;
import com.mapbox.maps.extension.style.layers.generated.CircleLayer;
import com.mapbox.maps.extension.style.layers.generated.FillExtrusionLayer;
import com.mapbox.maps.extension.style.layers.generated.FillLayer;
import com.mapbox.maps.extension.style.layers.generated.HeatmapLayer;
import com.mapbox.maps.extension.style.layers.generated.HillshadeLayer;
import com.mapbox.maps.extension.style.layers.generated.LineLayer;
import com.mapbox.maps.extension.style.layers.generated.LocationIndicatorLayer;
import com.mapbox.maps.extension.style.layers.generated.RasterLayer;
import com.mapbox.maps.extension.style.layers.generated.SkyLayer;
import com.mapbox.maps.extension.style.layers.generated.SymbolLayer;
import com.mapbox.maps.extension.style.layers.properties.generated.ProjectionName;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.projection.generated.Projection;
import com.mapbox.maps.extension.style.projection.generated.StyleProjectionUtils;
import com.mapbox.maps.plugin.attribution.AttributionUtils;
import com.mapbox.maps.plugin.attribution.generated.AttributionSettings;
import com.mapbox.maps.plugin.compass.CompassUtils;
import com.mapbox.maps.plugin.compass.generated.CompassSettings;
import com.mapbox.maps.plugin.delegates.listeners.OnCameraChangeListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapIdleListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapLoadErrorListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnRenderFrameFinishedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleImageMissingListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleLoadedListener;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.mapbox.maps.plugin.gestures.GesturesUtils;
import com.mapbox.maps.plugin.gestures.OnFlingListener;
import com.mapbox.maps.plugin.gestures.OnMapClickListener;
import com.mapbox.maps.plugin.gestures.OnMapLongClickListener;
import com.mapbox.maps.plugin.gestures.OnMoveListener;
import com.mapbox.maps.plugin.gestures.OnRotateListener;
import com.mapbox.maps.plugin.gestures.OnScaleListener;
import com.mapbox.maps.plugin.gestures.OnShoveListener;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.mapbox.maps.plugin.logo.LogoUtils;
import com.mapbox.maps.plugin.logo.generated.LogoSettings;
import com.mapbox.maps.plugin.scalebar.ScaleBarUtils;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettings;
import com.mapbox.maps.viewannotation.ViewAnnotationManager;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.R;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.annotation.RNMBXMarkerView;
import com.rnmapbox.rnmbx.components.annotation.RNMBXMarkerViewManager;
import com.rnmapbox.rnmbx.components.annotation.RNMBXPointAnnotation;
import com.rnmapbox.rnmbx.components.annotation.RNMBXPointAnnotationCoordinator;
import com.rnmapbox.rnmbx.components.camera.RNMBXCamera;
import com.rnmapbox.rnmbx.components.images.ImageManager;
import com.rnmapbox.rnmbx.components.images.RNMBXImages;
import com.rnmapbox.rnmbx.components.location.LocationComponentManager;
import com.rnmapbox.rnmbx.components.location.RNMBXNativeUserLocation;
import com.rnmapbox.rnmbx.components.mapview.helpers.CameraChangeReason;
import com.rnmapbox.rnmbx.components.mapview.helpers.CameraChangeTracker;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXLayer;
import com.rnmapbox.rnmbx.components.styles.light.RNMBXLight;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXSource;
import com.rnmapbox.rnmbx.components.styles.terrain.RNMBXTerrain;
import com.rnmapbox.rnmbx.events.CameraChangeEvent;
import com.rnmapbox.rnmbx.events.MapChangeEvent;
import com.rnmapbox.rnmbx.events.MapClickEvent;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.BitmapUtils;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.PropertyChanges;
import com.rnmapbox.rnmbx.utils.PropertyUpdaterWithName;
import com.rnmapbox.rnmbx.utils.WriteableMapArrayOfKt;
import com.rnmapbox.rnmbx.utils.extensions.CoordinateBoundsKt;
import com.rnmapbox.rnmbx.utils.extensions.MapKt;
import com.rnmapbox.rnmbx.utils.extensions.PointKt;
import com.rnmapbox.rnmbx.v11compat.event.Event;
import com.rnmapbox.rnmbx.v11compat.event.EventKt;
import com.rnmapbox.rnmbx.v11compat.event.MapEvents;
import com.rnmapbox.rnmbx.v11compat.event.Observer;
import com.rnmapbox.rnmbx.v11compat.feature.FeatureKt;
import com.rnmapbox.rnmbx.v11compat.mapboxmap.MapboxMapKt;
import com.rnmapbox.rnmbx.v11compat.ornamentsettings.GenericOrnamentSettings;
import com.rnmapbox.rnmbx.v11compat.ornamentsettings.OrnamentSettingsKt;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000¾\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018\u0000 é\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\bæ\u0002ç\u0002è\u0002é\u0002B!\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010h\u001a\u00020BJ\u0010\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020<H\u0016J\u0010\u0010K\u001a\u00020j2\u0006\u0010l\u001a\u00020GH\u0002J\u0010\u0010m\u001a\u00020j2\u0006\u0010n\u001a\u00020BH\u0002J\u0010\u0010o\u001a\u00020j2\u0006\u0010n\u001a\u00020BH\u0002J!\u0010p\u001a\u00020j\"\u0004\b\u0000\u0010q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u0002Hq¢\u0006\u0002\u0010uJ!\u0010v\u001a\u000201\"\u0004\b\u0000\u0010q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u0002Hq¢\u0006\u0002\u0010wJ!\u0010x\u001a\u00020j\"\u0004\b\u0000\u0010q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u0002Hq¢\u0006\u0002\u0010uJ\u0006\u0010y\u001a\u00020jJ\u000e\u0010z\u001a\u00020j2\u0006\u0010{\u001a\u00020|J\u0019\u0010}\u001a\u00020j2\b\u0010~\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u0080\u0001\u001a\u00020<J\u0010\u0010\u0081\u0001\u001a\u00020j2\u0007\u0010\u0080\u0001\u001a\u00020<J\u0012\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u0086\u0001\u001a\u00020<J\u0011\u0010\u0087\u0001\u001a\u00020j2\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001J\u0010\u0010\u008a\u0001\u001a\u00020j2\u0007\u0010\u008b\u0001\u001a\u000201J\u0013\u0010\u008c\u0001\u001a\u00020j2\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001H\u0002J\u0013\u0010\u008d\u0001\u001a\u00020j2\b\b\u0002\u0010K\u001a\u000201H\u0002J$\u0010\u0091\u0001\u001a\b\u0012\u0002\b\u0003\u0018\u00010 2\u0013\u0010\u0092\u0001\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030 \u0018\u00010.H\u0002J\u0012\u0010\u0093\u0001\u001a\u0002012\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u001fJ.\u0010¦\u0001\u001a\u00020j2%\u0010§\u0001\u001a \u0012\u0015\u0012\u00130B¢\u0006\u000e\b¡\u0001\u0012\t\b¢\u0001\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020j0 \u0001J.\u0010¨\u0001\u001a\u00020j2%\u0010§\u0001\u001a \u0012\u0015\u0012\u00130D¢\u0006\u000e\b¡\u0001\u0012\t\b¢\u0001\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020j0 \u0001J\u0007\u0010©\u0001\u001a\u00020jJ\u0010\u0010ª\u0001\u001a\u00020j2\u0007\u0010«\u0001\u001a\u00020+J\u0007\u0010¬\u0001\u001a\u00020jJ\u0007\u0010\u00ad\u0001\u001a\u00020jJ#\u0010®\u0001\u001a\u00020j2\t\u0010¯\u0001\u001a\u0004\u0018\u00010\u001f2\u000f\u0010°\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.J\u0010\u0010±\u0001\u001a\u00020j2\u0007\u0010²\u0001\u001a\u00020<J\u0018\u0010³\u0001\u001a\u00020j2\t\u0010´\u0001\u001a\u0004\u0018\u00010?¢\u0006\u0003\u0010µ\u0001J\t\u0010¶\u0001\u001a\u00020jH\u0002J\u0010\u0010·\u0001\u001a\u00020j2\u0007\u0010¸\u0001\u001a\u00020\u001fJ\u0007\u0010¹\u0001\u001a\u00020jJh\u0010º\u0001\u001a\u00020j2\u0012\u0010\u0092\u0001\u001a\r\u0012\b\u0012\u0006\u0012\u0002\b\u00030 0»\u00012\b\u0010¼\u0001\u001a\u00030½\u00012!\u0010¾\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010À\u0001\u0018\u00010.0¿\u00012\u0014\u0010Á\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010 0Â\u00012\b\u0010Ã\u0001\u001a\u00030Ä\u0001J\u0013\u0010Å\u0001\u001a\u0002012\b\u0010Æ\u0001\u001a\u00030Ç\u0001H\u0016J\u0013\u0010È\u0001\u001a\u0002012\b\u0010Æ\u0001\u001a\u00030Ç\u0001H\u0016J\u0011\u0010Ë\u0001\u001a\u00020j2\b\u0010Ì\u0001\u001a\u00030Í\u0001J\u001c\u0010Î\u0001\u001a\u00020j2\t\u0010Ï\u0001\u001a\u0004\u0018\u00010\u001f2\b\u0010§\u0001\u001a\u00030Ê\u0001J\u0007\u0010Ð\u0001\u001a\u00020jJ\u0012\u0010Ñ\u0001\u001a\u00020j2\u0007\u0010Ò\u0001\u001a\u00020\u001fH\u0002J\u001d\u0010Ó\u0001\u001a\u00020j2\u000e\u0010Ô\u0001\u001a\t\u0012\u0004\u0012\u00020\u001f0Õ\u0001¢\u0006\u0003\u0010Ö\u0001J\u0012\u0010×\u0001\u001a\u0002012\u0007\u0010Ø\u0001\u001a\u00020\u001fH\u0002J\n\u0010Ù\u0001\u001a\u00030Ú\u0001H\u0002J\u001b\u0010Û\u0001\u001a\u00030Ú\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u000101H\u0002¢\u0006\u0003\u0010Ü\u0001J\u0012\u0010Ý\u0001\u001a\u00020j2\u0007\u0010Þ\u0001\u001a\u00020GH\u0002J\u0011\u0010â\u0001\u001a\u00020j2\b\u0010ã\u0001\u001a\u00030ä\u0001J\u0011\u0010å\u0001\u001a\u00020j2\b\u0010æ\u0001\u001a\u00030ç\u0001J\u0011\u0010è\u0001\u001a\u00020j2\b\u0010æ\u0001\u001a\u00030ç\u0001J\n\u0010é\u0001\u001a\u00030ê\u0001H\u0002J\u001b\u0010ë\u0001\u001a\u00020j2\b\u0010ì\u0001\u001a\u00030½\u00012\b\u0010æ\u0001\u001a\u00030ç\u0001J\u001b\u0010í\u0001\u001a\u00020j2\b\u0010î\u0001\u001a\u00030Ç\u00012\b\u0010æ\u0001\u001a\u00030ç\u0001J8\u0010ï\u0001\u001a\u00020j2\b\u0010Æ\u0001\u001a\u00030ð\u00012\n\u0010ñ\u0001\u001a\u0005\u0018\u00010ò\u00012\u000f\u0010ó\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.2\b\u0010æ\u0001\u001a\u00030ç\u0001J:\u0010ô\u0001\u001a\u00020j2\n\u0010õ\u0001\u001a\u0005\u0018\u00010ö\u00012\n\u0010ñ\u0001\u001a\u0005\u0018\u00010ò\u00012\u000f\u0010ó\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.2\b\u0010æ\u0001\u001a\u00030ç\u0001J7\u0010÷\u0001\u001a\u00020j2\u0007\u0010ø\u0001\u001a\u00020\u001f2\n\u0010ñ\u0001\u001a\u0005\u0018\u00010ò\u00012\u000f\u0010ù\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.2\b\u0010æ\u0001\u001a\u00030ç\u0001J\u0011\u0010ú\u0001\u001a\u00020j2\b\u0010æ\u0001\u001a\u00030ç\u0001J\u001a\u0010û\u0001\u001a\u00020j2\u0007\u0010ü\u0001\u001a\u0002012\b\u0010æ\u0001\u001a\u00030ç\u0001J#\u0010ý\u0001\u001a\u00020j2\u0007\u0010þ\u0001\u001a\u00020?2\u0007\u0010ÿ\u0001\u001a\u00020?2\b\u0010æ\u0001\u001a\u00030ç\u0001J\u0011\u0010\u0080\u0002\u001a\u00020j2\b\u0010æ\u0001\u001a\u00030ç\u0001JE\u0010\u0081\u0002\u001a\u00020j2\u0007\u0010\u0082\u0002\u001a\u00020\u001f2\u0015\u0010\u0083\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0005\u0012\u00030\u0084\u00020¿\u00012\u0007\u0010ø\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001f2\b\u0010æ\u0001\u001a\u00030ç\u0001J.\u0010\u0086\u0002\u001a\u00020j2\u0007\u0010\u0082\u0002\u001a\u00020\u001f2\u0007\u0010ø\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001f2\b\u0010æ\u0001\u001a\u00030ç\u0001J9\u0010\u0087\u0002\u001a\u00020j2\u0007\u0010\u0082\u0002\u001a\u00020\u001f2\t\u0010\u0088\u0002\u001a\u0004\u0018\u00010\u001f2\u0007\u0010ø\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001f2\b\u0010æ\u0001\u001a\u00030ç\u0001J%\u0010\u0089\u0002\u001a\u0002012\b\u0010Ì\u0001\u001a\u00030Í\u00012\u0007\u0010ø\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001fJ$\u0010\u008a\u0002\u001a\u00020j2\u0007\u0010\u008b\u0002\u001a\u0002012\u0007\u0010ø\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001fJ\u0011\u0010\u008c\u0002\u001a\u0004\u0018\u00010D2\u0006\u0010U\u001a\u00020\u001fJ\u0007\u0010\u008d\u0002\u001a\u00020DJ\u001b\u0010\u008e\u0002\u001a\u00020<2\u0007\u0010\u008f\u0002\u001a\u00020\u001f2\u0007\u0010\u0090\u0002\u001a\u00020<H\u0002J&\u0010\u0091\u0002\u001a\u00020j2\u0007\u0010\u008f\u0002\u001a\u00020\u001f2\b\u0010\u0092\u0002\u001a\u00030\u0093\u00022\b\u0010\u0094\u0002\u001a\u00030\u0095\u0002H\u0002J\u0010\u0010\u009e\u0002\u001a\u00020j2\u0007\u0010\u009f\u0002\u001a\u000201J\u0010\u0010 \u0002\u001a\u00020j2\u0007\u0010¡\u0002\u001a\u000201J\u0011\u0010¢\u0002\u001a\u00020j2\b\u0010£\u0002\u001a\u00030¤\u0002J\u0010\u0010¥\u0002\u001a\u00020j2\u0007\u0010¦\u0002\u001a\u00020<J\u0011\u0010§\u0002\u001a\u00020j2\b\u0010¨\u0002\u001a\u00030¤\u0002J\t\u0010©\u0002\u001a\u00020jH\u0002J\u0010\u0010\u00ad\u0002\u001a\u00020j2\u0007\u0010®\u0002\u001a\u000201J\u0011\u0010¯\u0002\u001a\u00020j2\b\u0010°\u0002\u001a\u00030¤\u0002J\u0010\u0010±\u0002\u001a\u00020j2\u0007\u0010²\u0002\u001a\u00020<J\u0011\u0010³\u0002\u001a\u00020j2\b\u0010²\u0002\u001a\u00030¤\u0002J\t\u0010´\u0002\u001a\u00020jH\u0002J\u0007\u0010µ\u0002\u001a\u00020jJ!\u0010¶\u0002\u001a\u0010\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030¸\u00020·\u00022\b\u0010¹\u0002\u001a\u00030¤\u0002H\u0002J\u0018\u0010½\u0002\u001a\u00020j2\t\u0010¾\u0002\u001a\u0004\u0018\u000101¢\u0006\u0003\u0010\u0099\u0001J\u0011\u0010¿\u0002\u001a\u00020j2\b\u0010À\u0002\u001a\u00030¤\u0002J\u0010\u0010Á\u0002\u001a\u00020j2\u0007\u0010¹\u0002\u001a\u00020<J\u0013\u0010Â\u0002\u001a\u00020j2\n\u0010¹\u0002\u001a\u0005\u0018\u00010¤\u0002J\t\u0010Ã\u0002\u001a\u00020jH\u0002J\u0018\u0010Ê\u0002\u001a\u00020j2\t\u0010Ë\u0002\u001a\u0004\u0018\u000101¢\u0006\u0003\u0010\u0099\u0001J\u0011\u0010Ì\u0002\u001a\u00020j2\b\u0010À\u0002\u001a\u00030¤\u0002J\u0010\u0010Í\u0002\u001a\u00020j2\u0007\u0010¹\u0002\u001a\u00020<J\u0013\u0010Î\u0002\u001a\u00020j2\n\u0010¹\u0002\u001a\u0005\u0018\u00010¤\u0002J\t\u0010Ï\u0002\u001a\u00020jH\u0002J\b\u0010Õ\u0002\u001a\u00030Ö\u0002J\t\u0010×\u0002\u001a\u00020jH\u0014J\u0007\u0010Ø\u0002\u001a\u00020jJ\t\u0010Ù\u0002\u001a\u00020jH\u0014J\u0017\u0010Ú\u0002\u001a\u00020j2\u000e\u0010§\u0001\u001a\t\u0012\u0004\u0012\u00020j0Û\u0002J\\\u0010Ü\u0002\u001a\u00020j2\t\u0010Ý\u0002\u001a\u0004\u0018\u00010\u007f2\u0007\u0010Þ\u0002\u001a\u00020<2\u0007\u0010ß\u0002\u001a\u00020<2\u0007\u0010à\u0002\u001a\u00020<2\u0007\u0010á\u0002\u001a\u00020<2\u0007\u0010â\u0002\u001a\u00020<2\u0007\u0010ã\u0002\u001a\u00020<2\u0007\u0010ä\u0002\u001a\u00020<2\u0007\u0010å\u0002\u001a\u00020<H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001f\u0012\b\u0012\u0006\u0012\u0002\b\u00030 0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020%8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b&\u0010'R\u000e\u0010*\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010-\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\u000201X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b0\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00105\u001a\b\u0012\u0004\u0012\u0002060\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u00107\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010;\u001a\u0004\u0018\u00010<X\u0082\u000e¢\u0006\u0004\n\u0002\u0010=R\u0012\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e¢\u0006\u0004\n\u0002\u0010@R\u000e\u0010A\u001a\u00020BX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082.¢\u0006\u0002\n\u0000R\u0011\u0010E\u001a\u0002018F¢\u0006\u0006\u001a\u0004\bE\u00102R\"\u0010H\u001a\u0004\u0018\u00010G2\b\u0010F\u001a\u0004\u0018\u00010G@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u000e\u0010K\u001a\u000201X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010L\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010MX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010P\u001a\u0004\u0018\u00010<2\b\u0010F\u001a\u0004\u0018\u00010<@BX\u0086\u000e¢\u0006\n\n\u0002\u0010=\u001a\u0004\bQ\u0010RR\u000e\u0010S\u001a\u000201X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u000201X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010U\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\u0011\u0010Z\u001a\u00020D8F¢\u0006\u0006\u001a\u0004\b[\u0010\\R\u0011\u0010]\u001a\u00020^8F¢\u0006\u0006\u001a\u0004\b_\u0010`R$\u0010a\u001a\u0002012\u0006\u0010F\u001a\u000201@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u00102\"\u0004\bc\u0010dR\u001a\u0010e\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u00102\"\u0004\bg\u0010dR\u0014\u0010\u0082\u0001\u001a\u00020<8F¢\u0006\b\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001R!\u0010\u008e\u0001\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030 0.8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R$\u0010\u0095\u0001\u001a\u0004\u0018\u000101X\u0086\u000e¢\u0006\u0015\n\u0003\u0010\u009a\u0001\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001b\u0010\u009b\u0001\u001a\t\u0012\u0004\u0012\u00020\u00000\u009c\u0001¢\u0006\n\n\u0000\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001RC\u0010\u009f\u0001\u001a&\u0012\"\u0012 \u0012\u0015\u0012\u00130D¢\u0006\u000e\b¡\u0001\u0012\t\b¢\u0001\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020j0 \u00010\"X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b£\u0001\u0010\u0090\u0001\"\u0006\b¤\u0001\u0010¥\u0001R\"\u0010É\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u001f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030Ê\u00010\"0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010ß\u0001\u001a\u00020O8F¢\u0006\b\u001a\u0006\bà\u0001\u0010á\u0001R \u0010\u0096\u0002\u001a\u00030\u0093\u0002X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0097\u0002\u0010\u0098\u0002\"\u0006\b\u0099\u0002\u0010\u009a\u0002R\u001d\u0010\u009b\u0002\u001a\u000201X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009c\u0002\u00102\"\u0005\b\u009d\u0002\u0010dR \u0010ª\u0002\u001a\u00030\u0093\u0002X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b«\u0002\u0010\u0098\u0002\"\u0006\b¬\u0002\u0010\u009a\u0002R \u0010º\u0002\u001a\u00030\u0093\u0002X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b»\u0002\u0010\u0098\u0002\"\u0006\b¼\u0002\u0010\u009a\u0002R\u0014\u0010Ä\u0002\u001a\u0004\u0018\u000101X\u0082\u000e¢\u0006\u0005\n\u0003\u0010\u009a\u0001R\u0013\u0010Å\u0002\u001a\u0004\u0018\u00010<X\u0082\u000e¢\u0006\u0004\n\u0002\u0010=R\u0012\u0010Æ\u0002\u001a\u0005\u0018\u00010¸\u0002X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010Ç\u0002\u001a\u00030\u0093\u0002X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\bÈ\u0002\u0010\u0098\u0002\"\u0006\bÉ\u0002\u0010\u009a\u0002R \u0010Ð\u0002\u001a\u00030Ñ\u00028BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bÔ\u0002\u0010)\u001a\u0006\bÒ\u0002\u0010Ó\u0002¨\u0006ê\u0002"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "Landroid/widget/FrameLayout;", "Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;", "Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;", "Landroid/view/View$OnLayoutChangeListener;", "mContext", "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;", "options", "Lcom/mapbox/maps/MapInitOptions;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;Lcom/mapbox/maps/MapInitOptions;)V", "getMManager", "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;", "setMManager", "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;)V", "offscreenAnnotationViewContainer", "Landroid/view/ViewGroup;", "getOffscreenAnnotationViewContainer", "()Landroid/view/ViewGroup;", "setOffscreenAnnotationViewContainer", "(Landroid/view/ViewGroup;)V", "imageManager", "Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "getImageManager", "()Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "setImageManager", "(Lcom/rnmapbox/rnmbx/components/images/ImageManager;)V", "mSources", "", "", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;", "mImages", "", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;", "pointAnnotations", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;", "getPointAnnotations", "()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;", "pointAnnotations$delegate", "Lkotlin/Lazy;", "mProjection", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;", "mLocaleString", "mLocaleLayerIds", "", "mStyleURL", "isDestroyed", "", "()Z", "mCamera", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;", "mFeatures", "Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;", "mQueuedFeatures", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "mCameraChangeTracker", "Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;", "mPreferredFrameRate", "", "Ljava/lang/Integer;", "mMaxPitch", "", "Ljava/lang/Double;", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mMapView", "Lcom/mapbox/maps/MapView;", "isInitialized", "value", "Lcom/mapbox/maps/Style;", "savedStyle", "getSavedStyle", "()Lcom/mapbox/maps/Style;", "styleLoaded", "mHandledMapChangedEvents", "Ljava/util/HashSet;", "mLocationComponentManager", "Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;", "tintColor", "getTintColor", "()Ljava/lang/Integer;", "wasGestureActive", "isGestureActive", "mapViewImpl", "getMapViewImpl", "()Ljava/lang/String;", "setMapViewImpl", "(Ljava/lang/String;)V", "mapView", "getMapView", "()Lcom/mapbox/maps/MapView;", "viewAnnotationManager", "Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;", "getViewAnnotationManager", "()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;", "requestDisallowInterceptTouchEvent", "getRequestDisallowInterceptTouchEvent", "setRequestDisallowInterceptTouchEvent", "(Z)V", "deselectAnnotationOnTap", "getDeselectAnnotationOnTap", "setDeselectAnnotationOnTap", "getMapboxMap", "setId", "", "id", "style", "setupEvents", "map", "onMapReady", "mapGestureBegin", ExifInterface.GPS_DIRECTION_TRUE, SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;", "gesture", "(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)V", "mapGesture", "(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)Z", "mapGestureEnd", "init", "getStyle", "onStyleLoaded", "Lcom/mapbox/maps/Style$OnStyleLoaded;", "addFeature", "childView", "Landroid/view/View;", "childPosition", "removeFeatureAt", "featureCount", "getFeatureCount", "()I", "getFeatureAt", "i", "removeAllFeatureFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "sendRegionChangeEvent", "isAnimated", "removeAllFeaturesFromMap", "addFeaturesToMap", "allTouchableSources", "getAllTouchableSources", "()Ljava/util/List;", "getTouchableSourceWithHighestZIndex", "sources", "isJSONValid", "test", "surfaceView", "getSurfaceView", "()Ljava/lang/Boolean;", "setSurfaceView", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "changes", "Lcom/rnmapbox/rnmbx/utils/PropertyChanges;", "getChanges", "()Lcom/rnmapbox/rnmbx/utils/PropertyChanges;", "withMapWaiters", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "getWithMapWaiters", "setWithMapWaiters", "(Ljava/util/List;)V", "withMap", "callback", "withMapView", "applyAllChanges", "setReactProjection", "projection", "applyProjection", "applyLocalizeLabels", "setReactLocalizeLabels", "localeStr", "layerIds", "setReactPreferredFramesPerSecond", "preferredFramesPerSecond", "setReactMaxPitch", "maxPitch", "(Ljava/lang/Double;)V", "applyMaxPitch", "setReactStyleURL", "styleURL", "applyStyleURL", "handleTapInSources", "Ljava/util/LinkedList;", "screenPoint", "Lcom/mapbox/maps/ScreenCoordinate;", "hits", "Ljava/util/HashMap;", "Lcom/mapbox/geojson/Feature;", "hitTouchableSources", "Ljava/util/ArrayList;", "handleTap", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;", "onMapClick", "point", "Lcom/mapbox/geojson/Point;", "onMapLongClick", "layerWaiters", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;", "layerAdded", "layer", "Lcom/mapbox/maps/extension/style/layers/Layer;", "waitForLayer", "layerID", "sendRegionDidChangeEvent", "handleMapChangedEvent", "eventType", "setHandledMapChangedEvents", "events", "", "([Ljava/lang/String;)V", "canHandleEvent", NotificationCompat.CATEGORY_EVENT, "makeCameraPayload", "Lcom/facebook/react/bridge/WritableMap;", "makeRegionPayload", "(Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;", "setUpImage", "loadedStyle", "locationComponentManager", "getLocationComponentManager", "()Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;", "getMapAsync", "mapReady", "Lcom/rnmapbox/rnmbx/components/mapview/OnMapReadyCallback;", "getCenter", "response", "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;", "getZoom", "getDisplayDensity", "", "getCoordinateFromView", "pixel", "getPointInView", "coordinate", "queryRenderedFeaturesAtPoint", "Landroid/graphics/PointF;", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "layerIDs", "queryRenderedFeaturesInRect", "rect", "Landroid/graphics/RectF;", "querySourceFeatures", "sourceId", "sourceLayerIDs", "getVisibleBounds", "takeSnap", "writeToDisk", "queryTerrainElevation", TSGeofence.FIELD_LONGITUDE, TSGeofence.FIELD_LATITUDE, "clearData", "setFeatureState", "featureId", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/bindgen/Value;", "sourceLayerId", "getFeatureState", "removeFeatureState", "stateKey", "match", "setSourceVisibility", ViewProps.VISIBLE, "createAndAddMapView", "createMapView", "toGravity", "kind", "viewPosition", "updateOrnament", "from", "Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;", TypedValues.TransitionType.S_TO, "Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;", "mCompassSettings", "getMCompassSettings", "()Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;", "setMCompassSettings", "(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;)V", "mCompassFadeWhenNorth", "getMCompassFadeWhenNorth", "setMCompassFadeWhenNorth", "setReactCompassEnabled", "compassEnabled", "setReactCompassFadeWhenNorth", "compassFadeWhenNorth", "setReactCompassViewMargins", "compassViewMargins", "Lcom/facebook/react/bridge/ReadableMap;", "setReactCompassViewPosition", "compassViewPosition", "setReactCompassPosition", "compassPosition", "applyCompass", "mScaleBarSettings", "getMScaleBarSettings", "setMScaleBarSettings", "setReactScaleBarEnabled", "scaleBarEnabled", "setReactScaleBarViewMargins", "scaleBarMargins", "setReactScaleBarViewPosition", "scaleBarPosition", "setReactScaleBarPosition", "applyScaleBar", "workaroundToRelayoutChildOfMapView", "getGravityAndMargin", "Lkotlin/Pair;", "", "position", "mAttributionSettings", "getMAttributionSettings", "setMAttributionSettings", "setReactAttributionEnabled", "attributionEnabled", "setReactAttributionViewMargins", "margins", "setReactAttributionViewPosition", "setReactAttributionPosition", "applyAttribution", "mLogoEnabled", "mLogoGravity", "mLogoMargin", "mLogoSettings", "getMLogoSettings", "setMLogoSettings", "setReactLogoEnabled", ViewProps.ENABLED, "setReactLogoMargins", "setReactLogoViewPosition", "setReactLogoPosition", "applyLogo", "lifecycle", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;", "getLifecycle", "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;", "lifecycle$delegate", "getLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "onDetachedFromWindow", "onDropViewInstance", "onAttachedToWindow", "callIfAttachedToWindow", "Lkotlin/Function0;", "onLayoutChange", "v", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "oldLeft", "oldTop", "oldRight", "oldBottom", "Property", "HandleTap", "FoundLayerCallback", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class RNMBXMapView extends FrameLayout implements OnMapClickListener, OnMapLongClickListener, View.OnLayoutChangeListener {
    public static final String LOG_TAG = "RNMBXMapView";
    private final PropertyChanges<RNMBXMapView> changes;
    private boolean deselectAnnotationOnTap;
    private ImageManager imageManager;
    private final boolean isDestroyed;
    private boolean isGestureActive;
    private final Map<String, List<FoundLayerCallback>> layerWaiters;

    private final Lazy lifecycle;
    private OrnamentSettings mAttributionSettings;
    private RNMBXCamera mCamera;
    private final CameraChangeTracker mCameraChangeTracker;
    private boolean mCompassFadeWhenNorth;
    private OrnamentSettings mCompassSettings;
    private final Context mContext;
    private final List<FeatureEntry> mFeatures;
    private HashSet<String> mHandledMapChangedEvents;
    private final List<RNMBXImages> mImages;
    private List<String> mLocaleLayerIds;
    private String mLocaleString;
    private LocationComponentManager mLocationComponentManager;
    private Boolean mLogoEnabled;
    private Integer mLogoGravity;
    private int[] mLogoMargin;
    private OrnamentSettings mLogoSettings;
    private RNMBXMapViewManager mManager;
    private MapboxMap mMap;
    private MapView mMapView;
    private Double mMaxPitch;
    private Integer mPreferredFrameRate;
    private ProjectionName mProjection;
    private List<AbstractMapFeature> mQueuedFeatures;
    private OrnamentSettings mScaleBarSettings;
    private final Map<String, RNMBXSource<?>> mSources;
    private String mStyleURL;
    private String mapViewImpl;
    private ViewGroup offscreenAnnotationViewContainer;

    private final Lazy pointAnnotations;
    private boolean requestDisallowInterceptTouchEvent;
    private Style savedStyle;
    private boolean styleLoaded;
    private Boolean surfaceView;
    private Integer tintColor;
    private boolean wasGestureActive;
    private List<Function1<MapView, Unit>> withMapWaiters;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;", "", "found", "", "layer", "Lcom/mapbox/maps/extension/style/layers/Layer;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface FoundLayerCallback {
        void found(Layer layer);
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J>\u0010\u0002\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0006\u0018\u00010\u00052\u001e\u0010\u0007\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u00050\bH&¨\u0006\u000b"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;", "", "run", "", "hitTouchableSources", "", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;", "hits", "", "", "Lcom/mapbox/geojson/Feature;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface HandleTap {
        void run(List<? extends RNMBXSource<?>> hitTouchableSources, Map<String, ? extends List<Feature>> hits);
    }

    public RNMBXMapView(Context mContext, RNMBXMapViewManager mManager, MapInitOptions mapInitOptions) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mContext = mContext;
        this.mManager = mManager;
        this.imageManager = new ImageManager();
        this.pointAnnotations = LazyKt.lazy(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXMapView.pointAnnotations_delegate$lambda$0(this.f$0);
            }
        });
        this.mProjection = ProjectionName.MERCATOR;
        this.mFeatures = new ArrayList();
        this.mQueuedFeatures = new ArrayList();
        this.mCameraChangeTracker = new CameraChangeTracker();
        this.changes = new PropertyChanges<>();
        this.withMapWaiters = new ArrayList();
        this.layerWaiters = new HashMap();
        this.offscreenAnnotationViewContainer = new FrameLayout(getContext());
        boolean z = false;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
        layoutParams.setMargins(-10000, -10000, -10000, -10000);
        ViewGroup viewGroup = this.offscreenAnnotationViewContainer;
        if (viewGroup != null) {
            viewGroup.setLayoutParams(layoutParams);
        }
        addView(this.offscreenAnnotationViewContainer);
        this.mSources = new HashMap();
        this.mImages = new ArrayList();
        int i = 6;
        DefaultConstructorMarker defaultConstructorMarker = null;
        ReadableMap readableMap = null;
        int i2 = 0;
        this.mCompassSettings = new OrnamentSettings(z, readableMap, i2, i, defaultConstructorMarker);
        this.mScaleBarSettings = new OrnamentSettings(z, readableMap, i2, i, defaultConstructorMarker);
        this.mAttributionSettings = new OrnamentSettings(Boolean.valueOf(OrnamentSettingsKt.getAttributionSettings().getEnabled()), null, 0, 6, null);
        Object[] objArr = null == true ? 1 : 0;
        this.mLogoSettings = new OrnamentSettings(objArr, null, 0, 6, null);
        this.lifecycle = LazyKt.lazy(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXMapView.lifecycle_delegate$lambda$50();
            }
        });
    }

    public final RNMBXMapViewManager getMManager() {
        return this.mManager;
    }

    public final void setMManager(RNMBXMapViewManager rNMBXMapViewManager) {
        Intrinsics.checkNotNullParameter(rNMBXMapViewManager, "<set-?>");
        this.mManager = rNMBXMapViewManager;
    }

    public final ViewGroup getOffscreenAnnotationViewContainer() {
        return this.offscreenAnnotationViewContainer;
    }

    public final void setOffscreenAnnotationViewContainer(ViewGroup viewGroup) {
        this.offscreenAnnotationViewContainer = viewGroup;
    }

    public final ImageManager getImageManager() {
        return this.imageManager;
    }

    public final void setImageManager(ImageManager imageManager) {
        Intrinsics.checkNotNullParameter(imageManager, "<set-?>");
        this.imageManager = imageManager;
    }

    public final RNMBXPointAnnotationCoordinator getPointAnnotations() {
        return (RNMBXPointAnnotationCoordinator) this.pointAnnotations.getValue();
    }

    public static final RNMBXPointAnnotationCoordinator pointAnnotations_delegate$lambda$0(RNMBXMapView rNMBXMapView) {
        GesturesPlugin gestures = GesturesUtils.getGestures(rNMBXMapView.getMapView());
        RNMBXMapView rNMBXMapView2 = rNMBXMapView;
        gestures.removeOnMapClickListener(rNMBXMapView2);
        RNMBXMapView rNMBXMapView3 = rNMBXMapView;
        gestures.removeOnMapLongClickListener(rNMBXMapView3);
        RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = new RNMBXPointAnnotationCoordinator(rNMBXMapView.getMapView());
        gestures.addOnMapClickListener(rNMBXMapView2);
        gestures.addOnMapLongClickListener(rNMBXMapView3);
        return rNMBXPointAnnotationCoordinator;
    }

    public final boolean getIsDestroyed() {
        return this.isDestroyed;
    }

    public final boolean isInitialized() {
        return this.mMapView != null;
    }

    public final Style getSavedStyle() {
        return this.savedStyle;
    }

    public final Integer getTintColor() {
        return this.tintColor;
    }

    public final String getMapViewImpl() {
        return this.mapViewImpl;
    }

    public final void setMapViewImpl(String str) {
        this.mapViewImpl = str;
    }

    public final MapView getMapView() {
        MapView mapView = this.mMapView;
        if (mapView != null) {
            return mapView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mMapView");
        return null;
    }

    public final ViewAnnotationManager getViewAnnotationManager() {
        return getMapView().getViewAnnotationManager();
    }

    public final boolean getRequestDisallowInterceptTouchEvent() {
        return this.requestDisallowInterceptTouchEvent;
    }

    public final void setRequestDisallowInterceptTouchEvent(boolean z) {
        boolean z2 = this.requestDisallowInterceptTouchEvent;
        this.requestDisallowInterceptTouchEvent = z;
        RNMBXMapViewKt.updateRequestDisallowInterceptTouchEvent(this, z2, z);
    }

    public final boolean getDeselectAnnotationOnTap() {
        return this.deselectAnnotationOnTap;
    }

    public final void setDeselectAnnotationOnTap(boolean z) {
        this.deselectAnnotationOnTap = z;
    }

    public final MapboxMap getMapboxMap() {
        return getMapView().getMapboxMapDeprecated();
    }

    @Override
    public void setId(int id) {
        super.setId(id);
        this.mManager.tagAssigned(id);
    }

    public final void styleLoaded(Style style) {
        this.savedStyle = style;
        this.styleLoaded = true;
        setUpImage(style);
        addFeaturesToMap(true);
        applyLocalizeLabels();
        StyleProjectionUtils.setProjection(style, new Projection(this.mProjection));
    }

    private final void setupEvents(MapboxMap map) {
        map.addOnRenderFrameFinishedListener(new OnRenderFrameFinishedListener() {
            @Override
            public void onRenderFrameFinished(RenderFrameFinishedEventData eventData) {
                Intrinsics.checkNotNullParameter(eventData, "eventData");
                RNMBXMapView.this.handleMapChangedEvent(EventTypes.DID_FINISH_RENDERING_FRAME_FULLY);
            }
        });
    }

    private final void onMapReady(MapboxMap map) {
        map.getStyle(new Style.OnStyleLoaded() {
            @Override
            public void onStyleLoaded(Style style) {
                Intrinsics.checkNotNullParameter(style, "style");
                RNMBXMapView.this.styleLoaded(style);
            }
        });
        map.addOnCameraChangeListener(new OnCameraChangeListener() {
            @Override
            public final void onCameraChanged(CameraChangedEventData cameraChangedEventData) {
                RNMBXMapView.onMapReady$lambda$1(this.f$0, cameraChangedEventData);
            }
        });
        map.addOnMapIdleListener(new OnMapIdleListener() {
            @Override
            public final void onMapIdle(MapIdleEventData mapIdleEventData) {
                RNMBXMapView.onMapReady$lambda$2(this.f$0, mapIdleEventData);
            }
        });
        GesturesPlugin gestures = GesturesUtils.getGestures(getMapView());
        gestures.addOnMapLongClickListener(this);
        gestures.addOnMapClickListener(this);
        gestures.addOnFlingListener(new OnFlingListener() {
            @Override
            public void onFling() {
                RNMBXMapView.this.mapGesture(MapGestureType.Fling, true);
            }
        });
        gestures.addOnShoveListener(new OnShoveListener() {
            @Override
            public void onShove(ShoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGesture(MapGestureType.Shove, detector);
            }

            @Override
            public void onShoveBegin(ShoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGestureBegin(MapGestureType.Shove, detector);
            }

            @Override
            public void onShoveEnd(ShoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGestureEnd(MapGestureType.Shove, detector);
            }
        });
        gestures.addOnScaleListener(new OnScaleListener() {
            @Override
            public void onScale(StandardScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGesture(MapGestureType.Scale, detector);
            }

            @Override
            public void onScaleBegin(StandardScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGestureBegin(MapGestureType.Scale, detector);
            }

            @Override
            public void onScaleEnd(StandardScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGestureEnd(MapGestureType.Scale, detector);
            }
        });
        gestures.addOnRotateListener(new OnRotateListener() {
            @Override
            public void onRotate(RotateGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGesture(MapGestureType.Rotate, detector);
            }

            @Override
            public void onRotateBegin(RotateGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGestureBegin(MapGestureType.Rotate, detector);
            }

            @Override
            public void onRotateEnd(RotateGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                RNMBXMapView.this.mapGestureEnd(MapGestureType.Rotate, detector);
            }
        });
        gestures.addOnMoveListener(new OnMoveListener() {
            @Override
            public void onMoveBegin(MoveGestureDetector moveGestureDetector) {
                Intrinsics.checkNotNullParameter(moveGestureDetector, "moveGestureDetector");
                RNMBXMapView.this.mapGestureBegin(MapGestureType.Move, moveGestureDetector);
            }

            @Override
            public boolean onMove(MoveGestureDetector moveGestureDetector) {
                Intrinsics.checkNotNullParameter(moveGestureDetector, "moveGestureDetector");
                return RNMBXMapView.this.mapGesture(MapGestureType.Move, moveGestureDetector);
            }

            @Override
            public void onMoveEnd(MoveGestureDetector moveGestureDetector) {
                Intrinsics.checkNotNullParameter(moveGestureDetector, "moveGestureDetector");
                RNMBXMapView.this.mapGestureEnd(MapGestureType.Move, moveGestureDetector);
            }
        });
        Observer observer = new Observer() {
            @Override
            public final void notify(Event event) {
                RNMBXMapView.onMapReady$lambda$3(this.f$0, event);
            }
        };
        List listAsList = Arrays.asList(MapEvents.MAP_LOADING_ERROR);
        Intrinsics.checkNotNullExpressionValue(listAsList, "asList(...)");
        EventKt.subscribe(map, observer, listAsList);
    }

    public static final void onMapReady$lambda$1(RNMBXMapView rNMBXMapView, CameraChangedEventData cameraChangedEventData) {
        Intrinsics.checkNotNullParameter(cameraChangedEventData, "cameraChangedEventData");
        rNMBXMapView.handleMapChangedEvent(EventTypes.REGION_IS_CHANGING);
        rNMBXMapView.handleMapChangedEvent(EventTypes.CAMERA_CHANGED);
    }

    public static final void onMapReady$lambda$2(RNMBXMapView rNMBXMapView, MapIdleEventData mapIdleEventData) {
        Intrinsics.checkNotNullParameter(mapIdleEventData, "mapIdleEventData");
        rNMBXMapView.sendRegionDidChangeEvent();
        rNMBXMapView.handleMapChangedEvent(EventTypes.MAP_IDLE);
    }

    public static final void onMapReady$lambda$3(RNMBXMapView rNMBXMapView, Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.INSTANCE;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("Map load failed: %s", Arrays.copyOf(new Object[]{event.getData().toString()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        logger.e("RNMBXMapView", str);
        rNMBXMapView.mManager.handleEvent(new MapChangeEvent(rNMBXMapView, EventTypes.MAP_LOADING_ERROR, WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("error", EventKt.getMapLoadingErrorEventData(event).getMessage()))));
    }

    public final <T> void mapGestureBegin(MapGestureType type, T gesture) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.isGestureActive = true;
        this.mCameraChangeTracker.setReason(CameraChangeReason.USER_GESTURE);
        handleMapChangedEvent(EventTypes.REGION_WILL_CHANGE);
    }

    public final <T> boolean mapGesture(MapGestureType type, T gesture) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.mCameraChangeTracker.setReason(CameraChangeReason.USER_GESTURE);
        handleMapChangedEvent(EventTypes.REGION_IS_CHANGING);
        return false;
    }

    public final <T> void mapGestureEnd(MapGestureType type, T gesture) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.isGestureActive = false;
    }

    public final void init() {
        getViewTreeObserver().dispatchOnGlobalLayout();
    }

    public final void getStyle(Style.OnStyleLoaded onStyleLoaded) {
        Intrinsics.checkNotNullParameter(onStyleLoaded, "onStyleLoaded");
        if (this.mMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        mapboxMap.getStyle(onStyleLoaded);
    }

    public final void addFeature(View childView, int childPosition) {
        AbstractMapFeature abstractMapFeature;
        if (childView instanceof RNMBXSource) {
            this.mSources.put(String.valueOf(((RNMBXSource) childView).getID()), childView);
            abstractMapFeature = (AbstractMapFeature) childView;
        } else if (childView instanceof RNMBXImages) {
            this.mImages.add(childView);
            abstractMapFeature = (AbstractMapFeature) childView;
        } else if ((childView instanceof RNMBXLight) || (childView instanceof RNMBXTerrain) || (childView instanceof RNMBXNativeUserLocation)) {
            abstractMapFeature = (AbstractMapFeature) childView;
        } else if (childView instanceof RNMBXPointAnnotation) {
            getPointAnnotations().add((RNMBXPointAnnotation) childView);
            abstractMapFeature = (AbstractMapFeature) childView;
        } else if (childView instanceof RNMBXMarkerView) {
            abstractMapFeature = (AbstractMapFeature) childView;
        } else if (childView instanceof RNMBXCamera) {
            this.mCamera = (RNMBXCamera) childView;
            abstractMapFeature = (AbstractMapFeature) childView;
        } else if ((childView instanceof RNMBXLayer) || (childView instanceof AbstractMapFeature)) {
            abstractMapFeature = (AbstractMapFeature) childView;
        } else {
            if (childView instanceof ViewGroup) {
                Logger.INSTANCE.w("RNMBXMapView", "Adding non map components:" + childView.getClass().getName() + " as a child of a map is deprecated!");
            }
            abstractMapFeature = null;
        }
        boolean z = this.styleLoaded || !(abstractMapFeature == null || abstractMapFeature.getRequiresStyleLoad());
        FeatureEntry featureEntry = new FeatureEntry(abstractMapFeature, childView, false);
        if (z) {
            if (abstractMapFeature != null) {
                abstractMapFeature.addToMap(this);
            }
            featureEntry.setAddedToMap(true);
        }
        this.mFeatures.add(childPosition, featureEntry);
    }

    public final void removeFeatureAt(int childPosition) {
        FeatureEntry featureEntry = this.mFeatures.get(childPosition);
        AbstractMapFeature feature = featureEntry.getFeature();
        if (feature instanceof RNMBXSource) {
            Map<String, RNMBXSource<?>> map = this.mSources;
            TypeIntrinsics.asMutableMap(map).remove(((RNMBXSource) feature).getID());
        } else if (feature instanceof RNMBXPointAnnotation) {
            getPointAnnotations().remove((RNMBXPointAnnotation) feature);
        } else if (feature instanceof RNMBXImages) {
            this.mImages.remove(feature);
        }
        if (featureEntry.getAddedToMap() && feature != null && feature.removeFromMap(this, RemovalReason.VIEW_REMOVAL)) {
            featureEntry.setAddedToMap(false);
        }
        this.mFeatures.remove(childPosition);
    }

    public final int getFeatureCount() {
        return this.mFeatures.size();
    }

    public final View getFeatureAt(int i) {
        return this.mFeatures.get(i).getView();
    }

    public final void removeAllFeatureFromMap(RemovalReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        for (FeatureEntry featureEntry : this.mFeatures) {
            AbstractMapFeature feature = featureEntry.getFeature();
            if (feature != null && feature.removeFromMap(this, reason)) {
                featureEntry.setAddedToMap(false);
            }
        }
    }

    public final void sendRegionChangeEvent(boolean isAnimated) {
        this.mManager.handleEvent(new MapChangeEvent(this, EventTypes.REGION_DID_CHANGE, makeRegionPayload(Boolean.valueOf(isAnimated))));
        this.mCameraChangeTracker.setReason(CameraChangeReason.NONE);
    }

    private final void removeAllFeaturesFromMap(RemovalReason reason) {
        for (FeatureEntry featureEntry : this.mFeatures) {
            AbstractMapFeature feature = featureEntry.getFeature();
            if (feature != null && feature.removeFromMap(this, reason)) {
                featureEntry.setAddedToMap(false);
            }
        }
    }

    static void addFeaturesToMap$default(RNMBXMapView rNMBXMapView, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addFeaturesToMap");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        rNMBXMapView.addFeaturesToMap(z);
    }

    private final void addFeaturesToMap(boolean styleLoaded) {
        AbstractMapFeature feature;
        for (FeatureEntry featureEntry : this.mFeatures) {
            if (!featureEntry.getAddedToMap() && (styleLoaded || ((feature = featureEntry.getFeature()) != null && !feature.getRequiresStyleLoad()))) {
                AbstractMapFeature feature2 = featureEntry.getFeature();
                if (feature2 != null) {
                    feature2.addToMap(this);
                }
                featureEntry.setAddedToMap(true);
            }
        }
    }

    private final List<RNMBXSource<?>> getAllTouchableSources() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.mSources.keySet().iterator();
        while (it.hasNext()) {
            RNMBXSource<?> rNMBXSource = this.mSources.get(it.next());
            if (rNMBXSource != null && rNMBXSource.hasPressListener()) {
                arrayList.add(rNMBXSource);
            }
        }
        return arrayList;
    }

    public final RNMBXSource<?> getTouchableSourceWithHighestZIndex(List<? extends RNMBXSource<?>> sources) {
        int size;
        if (sources != null && sources.size() != 0) {
            if (sources.size() == 1) {
                return sources.get(0);
            }
            HashMap map = new HashMap();
            for (RNMBXSource<?> rNMBXSource : sources) {
                String[] strArr = (String[]) rNMBXSource.getLayerIDs().toArray(new String[0]);
                if (strArr != null) {
                    Iterator it = ArrayIteratorKt.iterator(strArr);
                    while (it.hasNext()) {
                        map.put((String) it.next(), rNMBXSource);
                    }
                }
            }
            MapboxMap mapboxMap = this.mMap;
            if (mapboxMap == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMap");
                mapboxMap = null;
            }
            Style styleDeprecated = mapboxMap.getStyleDeprecated();
            List<StyleObjectInfo> styleLayers = styleDeprecated != null ? styleDeprecated.getStyleLayers() : null;
            if (styleLayers != null && (size = styleLayers.size() - 1) >= 0) {
                while (true) {
                    int i = size - 1;
                    String id = styleLayers.get(size).getId();
                    Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
                    if (map.containsKey(id)) {
                        return (RNMBXSource) map.get(id);
                    }
                    if (i < 0) {
                        break;
                    }
                    size = i;
                }
            }
        }
        return null;
    }

    public final boolean isJSONValid(String test) {
        if (test == null) {
            return false;
        }
        try {
            new JSONObject(test);
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    public final Boolean getSurfaceView() {
        return this.surfaceView;
    }

    public final void setSurfaceView(Boolean bool) {
        this.surfaceView = bool;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0003B\u001d\b\u0002\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0015"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;", "Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "", "_apply", "Lkotlin/Function1;", "", "<init>", "(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V", "get_apply", "()Lkotlin/jvm/functions/Function1;", "PROJECTION", "LOCALIZE_LABELS", "STYLE_URL", "ATTRIBUTION", "LOGO", "SCALEBAR", "COMPASS", "MAX_PITCH", "apply", "mapView", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum Property implements PropertyUpdaterWithName<RNMBXMapView> {
        PROJECTION(AnonymousClass1.INSTANCE),
        LOCALIZE_LABELS(AnonymousClass2.INSTANCE),
        STYLE_URL(AnonymousClass3.INSTANCE),
        ATTRIBUTION(AnonymousClass4.INSTANCE),
        LOGO(AnonymousClass5.INSTANCE),
        SCALEBAR(AnonymousClass6.INSTANCE),
        COMPASS(AnonymousClass7.INSTANCE),
        MAX_PITCH(AnonymousClass8.INSTANCE);

        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final Function1<RNMBXMapView, Unit> _apply;

        public static EnumEntries<Property> getEntries() {
            return $ENTRIES;
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass1 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, RNMBXMapView.class, "applyProjection", "applyProjection()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyProjection();
            }
        }

        Property(Function1 function1) {
            this._apply = function1;
        }

        @Override
        public String getName() {
            return name();
        }

        public final Function1<RNMBXMapView, Unit> get_apply() {
            return this._apply;
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass2 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

            AnonymousClass2() {
                super(1, RNMBXMapView.class, "applyLocalizeLabels", "applyLocalizeLabels()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyLocalizeLabels();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass3 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

            AnonymousClass3() {
                super(1, RNMBXMapView.class, "applyStyleURL", "applyStyleURL()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyStyleURL();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass4 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

            AnonymousClass4() {
                super(1, RNMBXMapView.class, "applyAttribution", "applyAttribution()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyAttribution();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass5 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

            AnonymousClass5() {
                super(1, RNMBXMapView.class, "applyLogo", "applyLogo()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyLogo();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass6 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass6 INSTANCE = new AnonymousClass6();

            AnonymousClass6() {
                super(1, RNMBXMapView.class, "applyScaleBar", "applyScaleBar()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyScaleBar();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass7 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass7 INSTANCE = new AnonymousClass7();

            AnonymousClass7() {
                super(1, RNMBXMapView.class, "applyCompass", "applyCompass()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyCompass();
            }
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass8 extends FunctionReferenceImpl implements Function1<RNMBXMapView, Unit> {
            public static final AnonymousClass8 INSTANCE = new AnonymousClass8();

            AnonymousClass8() {
                super(1, RNMBXMapView.class, "applyMaxPitch", "applyMaxPitch()V", 0);
            }

            @Override
            public Unit invoke(RNMBXMapView rNMBXMapView) {
                invoke2(rNMBXMapView);
                return Unit.INSTANCE;
            }

            public final void invoke2(RNMBXMapView p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                p0.applyMaxPitch();
            }
        }

        @Override
        public void apply(RNMBXMapView mapView) {
            Intrinsics.checkNotNullParameter(mapView, "mapView");
            this._apply.invoke(mapView);
        }
    }

    public final PropertyChanges<RNMBXMapView> getChanges() {
        return this.changes;
    }

    public final List<Function1<MapView, Unit>> getWithMapWaiters() {
        return this.withMapWaiters;
    }

    public final void setWithMapWaiters(List<Function1<MapView, Unit>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.withMapWaiters = list;
    }

    public final void withMap(final Function1<? super MapboxMap, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            this.withMapWaiters.add(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.withMap$lambda$7(callback, (MapView) obj);
                }
            });
            return;
        }
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        callback.invoke(mapboxMap);
    }

    public static final Unit withMap$lambda$7(Function1 function1, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function1.invoke(it.getMapboxMapDeprecated());
        return Unit.INSTANCE;
    }

    public final void withMapView(Function1<? super MapView, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        MapView mapView = this.mMapView;
        if (mapView == null) {
            this.withMapWaiters.add(callback);
            return;
        }
        if (mapView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMapView");
            mapView = null;
        }
        callback.invoke(mapView);
    }

    public final void applyAllChanges() {
        if (this.mMapView == null) {
            createMapView();
            Iterator<T> it = this.withMapWaiters.iterator();
            while (it.hasNext()) {
                Function1 function1 = (Function1) it.next();
                MapView mapView = this.mMapView;
                if (mapView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mMapView");
                    mapView = null;
                }
                function1.invoke(mapView);
            }
            this.withMapWaiters.clear();
        }
        this.changes.apply(this);
    }

    public final void setReactProjection(ProjectionName projection) {
        Intrinsics.checkNotNullParameter(projection, "projection");
        this.mProjection = projection;
        this.changes.add(Property.PROJECTION);
    }

    public final void applyProjection() {
        if (this.mMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        Style styleDeprecated = mapboxMap.getStyleDeprecated();
        if (styleDeprecated != null) {
            StyleProjectionUtils.setProjection(styleDeprecated, new Projection(this.mProjection));
        }
    }

    public final void applyLocalizeLabels() {
        String str = this.mLocaleString;
        if (str != null) {
            Locale locale = Intrinsics.areEqual(str, "current") ? Locale.getDefault() : new Locale.Builder().setLanguageTag(str).build();
            Style style = this.savedStyle;
            if (style != null) {
                Intrinsics.checkNotNull(locale);
                StyleInterfaceExtensionKt.localizeLabels(style, locale, this.mLocaleLayerIds);
            }
        }
    }

    public final void setReactLocalizeLabels(String localeStr, List<String> layerIds) {
        if (localeStr != null) {
            this.mLocaleString = localeStr;
            this.mLocaleLayerIds = layerIds;
        }
        this.changes.add(Property.LOCALIZE_LABELS);
    }

    public final void setReactPreferredFramesPerSecond(int preferredFramesPerSecond) {
        MapView mapView = this.mMapView;
        if (mapView != null) {
            if (mapView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMapView");
                mapView = null;
            }
            mapView.setMaximumFps(preferredFramesPerSecond);
        }
    }

    public final void setReactMaxPitch(Double maxPitch) {
        this.mMaxPitch = maxPitch;
        this.changes.add(Property.MAX_PITCH);
    }

    public final void applyMaxPitch() {
        Double d = this.mMaxPitch;
        if (d != null) {
            double dDoubleValue = d.doubleValue();
            MapboxMap mapboxMap = this.mMap;
            if (mapboxMap == null) {
                return;
            }
            MapboxMap mapboxMap2 = null;
            if (mapboxMap == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMap");
                mapboxMap = null;
            }
            CameraBounds bounds = mapboxMap.getBounds();
            CameraBoundsOptions.Builder builderMaxPitch = new CameraBoundsOptions.Builder().bounds(bounds.getBounds()).maxZoom(Double.valueOf(bounds.getMaxZoom())).minZoom(Double.valueOf(bounds.getMinZoom())).minPitch(Double.valueOf(bounds.getMinPitch())).maxPitch(Double.valueOf(dDoubleValue));
            MapboxMap mapboxMap3 = this.mMap;
            if (mapboxMap3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMap");
            } else {
                mapboxMap2 = mapboxMap3;
            }
            CameraBoundsOptions cameraBoundsOptionsBuild = builderMaxPitch.build();
            Intrinsics.checkNotNullExpressionValue(cameraBoundsOptionsBuild, "build(...)");
            mapboxMap2.setBounds(cameraBoundsOptionsBuild);
        }
    }

    public final void setReactStyleURL(String styleURL) {
        Intrinsics.checkNotNullParameter(styleURL, "styleURL");
        this.mStyleURL = styleURL;
        this.changes.add(Property.STYLE_URL);
    }

    public final void applyStyleURL() {
        String str = this.mStyleURL;
        if (this.mMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        }
        if (str != null) {
            removeAllFeatureFromMap(RemovalReason.STYLE_CHANGE);
            MapboxMap mapboxMap = null;
            if (isJSONValid(str)) {
                this.styleLoaded = false;
                MapboxMap mapboxMap2 = this.mMap;
                if (mapboxMap2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mMap");
                } else {
                    mapboxMap = mapboxMap2;
                }
                mapboxMap.loadStyleJson(str, new Style.OnStyleLoaded() {
                    @Override
                    public void onStyleLoaded(Style style) {
                        Intrinsics.checkNotNullParameter(style, "style");
                        RNMBXMapView.this.styleLoaded(style);
                    }
                });
                return;
            }
            this.styleLoaded = false;
            MapboxMap mapboxMap3 = this.mMap;
            if (mapboxMap3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMap");
            } else {
                mapboxMap = mapboxMap3;
            }
            mapboxMap.loadStyleUri(str, new Style.OnStyleLoaded() {
                @Override
                public void onStyleLoaded(Style style) {
                    Intrinsics.checkNotNullParameter(style, "style");
                    RNMBXMapView.this.styleLoaded(style);
                }
            }, new OnMapLoadErrorListener() {
                @Override
                public void onMapLoadError(MapLoadingErrorEventData mapLoadingErrorEventData) {
                    Intrinsics.checkNotNullParameter(mapLoadingErrorEventData, "mapLoadingErrorEventData");
                    Logger.INSTANCE.w("MapLoadError", mapLoadingErrorEventData.getMessage());
                }
            });
            addFeaturesToMap(false);
        }
    }

    public final void handleTapInSources(final LinkedList<RNMBXSource<?>> sources, final ScreenCoordinate screenPoint, final HashMap<String, List<Feature>> hits, final ArrayList<RNMBXSource<?>> hitTouchableSources, final HandleTap handleTap) {
        Intrinsics.checkNotNullParameter(sources, "sources");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        Intrinsics.checkNotNullParameter(hits, "hits");
        Intrinsics.checkNotNullParameter(hitTouchableSources, "hitTouchableSources");
        Intrinsics.checkNotNullParameter(handleTap, "handleTap");
        if (sources.isEmpty()) {
            handleTap.run(hitTouchableSources, hits);
            return;
        }
        RNMBXSource<?> rNMBXSourceRemoveFirst = sources.removeFirst();
        Intrinsics.checkNotNullExpressionValue(rNMBXSourceRemoveFirst, "removeFirst(...)");
        final RNMBXSource<?> rNMBXSource = rNMBXSourceRemoveFirst;
        Map<String, Double> touchHitbox = rNMBXSource.getTouchHitbox();
        if (touchHitbox != null) {
            Double d = touchHitbox.get("width");
            Intrinsics.checkNotNull(d);
            double dDoubleValue = ((float) d.doubleValue()) / 2.0f;
            Double d2 = touchHitbox.get("height");
            Intrinsics.checkNotNull(d2);
            double dDoubleValue2 = ((float) d2.doubleValue()) / 2.0f;
            getMapView().getMapboxMapDeprecated().queryRenderedFeatures(new RenderedQueryGeometry(new ScreenBox(new ScreenCoordinate(screenPoint.getX() - dDoubleValue, screenPoint.getY() - dDoubleValue2), new ScreenCoordinate(screenPoint.getX() + dDoubleValue, screenPoint.getY() + dDoubleValue2))), new RenderedQueryOptions(rNMBXSource.getLayerIDs(), null), new QueryRenderedFeaturesCallback() {
                @Override
                public final void run(Expected expected) {
                    RNMBXMapView.handleTapInSources$lambda$10(this.f$0, sources, screenPoint, hits, hitTouchableSources, handleTap, rNMBXSource, expected);
                }
            });
        }
    }

    public static final void handleTapInSources$lambda$10(RNMBXMapView rNMBXMapView, LinkedList linkedList, ScreenCoordinate screenCoordinate, HashMap map, ArrayList arrayList, HandleTap handleTap, RNMBXSource rNMBXSource, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            List<QueriedRenderedFeature> list = (List) features.getValue();
            if (list != null && list.size() > 0) {
                ArrayList arrayList2 = new ArrayList();
                for (QueriedRenderedFeature queriedRenderedFeature : list) {
                    Intrinsics.checkNotNull(queriedRenderedFeature);
                    arrayList2.add(FeatureKt.getFeature(queriedRenderedFeature));
                }
                map.put(rNMBXSource.getID(), arrayList2);
                arrayList.add(rNMBXSource);
            }
        } else {
            Logger logger = Logger.INSTANCE;
            String str = (String) features.getError();
            if (str == null) {
                str = "n/a";
            }
            logger.e("handleTapInSources", str);
        }
        rNMBXMapView.handleTapInSources(linkedList, screenCoordinate, map, arrayList, handleTap);
    }

    @Override
    public boolean onMapClick(final Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        if (getPointAnnotations().getAndClearAnnotationClicked()) {
            return true;
        }
        if (this.deselectAnnotationOnTap && getPointAnnotations().deselectSelectedAnnotation()) {
            return true;
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        final ScreenCoordinate screenCoordinatePixelForCoordinate = mapboxMap.pixelForCoordinate(point);
        List<RNMBXSource<?>> allTouchableSources = getAllTouchableSources();
        HashMap<String, List<Feature>> map = new HashMap<>();
        if (screenCoordinatePixelForCoordinate == null) {
            return false;
        }
        handleTapInSources(new LinkedList<>(allTouchableSources), screenCoordinatePixelForCoordinate, map, new ArrayList<>(), new HandleTap() {
            @Override
            public void run(List<? extends RNMBXSource<?>> hitTouchableSources, Map<String, ? extends List<Feature>> hits) {
                RNMBXSource touchableSourceWithHighestZIndex;
                Intrinsics.checkNotNullParameter(hits, "hits");
                if (hits.size() > 0 && (touchableSourceWithHighestZIndex = RNMBXMapView.this.getTouchableSourceWithHighestZIndex(hitTouchableSources)) != null && touchableSourceWithHighestZIndex.hasPressListener() && touchableSourceWithHighestZIndex.getID() != null && hits.containsKey(touchableSourceWithHighestZIndex.getID())) {
                    List<Feature> list = hits.get(touchableSourceWithHighestZIndex.getID());
                    Intrinsics.checkNotNull(list, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.geojson.Feature>");
                    touchableSourceWithHighestZIndex.onPress(new RNMBXSource.OnPressEvent(list, GeoJSONUtils.INSTANCE.toLatLng(point), new PointF((float) screenCoordinatePixelForCoordinate.getX(), (float) screenCoordinatePixelForCoordinate.getY())));
                    return;
                }
                RNMBXMapView.this.getMManager().handleEvent(new MapClickEvent(this, new LatLng(point), screenCoordinatePixelForCoordinate));
            }
        });
        return false;
    }

    @Override
    public boolean onMapLongClick(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        if (getPointAnnotations().getAndClearAnnotationDragged()) {
            return true;
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        ScreenCoordinate screenCoordinatePixelForCoordinate = mapboxMap.pixelForCoordinate(point);
        if (screenCoordinatePixelForCoordinate == null) {
            return false;
        }
        this.mManager.handleEvent(new MapClickEvent(this, new LatLng(point), screenCoordinatePixelForCoordinate, EventTypes.MAP_LONG_CLICK));
        return false;
    }

    public final void layerAdded(Layer layer) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        String layerId = layer.getLayerId();
        List<FoundLayerCallback> list = this.layerWaiters.get(layerId);
        if (list != null) {
            Iterator<FoundLayerCallback> it = list.iterator();
            while (it.hasNext()) {
                it.next().found(layer);
            }
        }
        this.layerWaiters.remove(layerId);
    }

    public final void waitForLayer(String layerID, FoundLayerCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (layerID == null) {
            callback.found(null);
            return;
        }
        Style style = this.savedStyle;
        if (style != null) {
            Layer layer = style != null ? LayerUtils.getLayer(style, layerID) : null;
            if (layer != null) {
                callback.found(layer);
                return;
            }
        }
        ArrayList arrayList = this.layerWaiters.get(layerID);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.layerWaiters.put(layerID, arrayList);
        }
        arrayList.add(callback);
    }

    public final void sendRegionDidChangeEvent() {
        handleMapChangedEvent(EventTypes.REGION_DID_CHANGE);
        this.mCameraChangeTracker.setReason(CameraChangeReason.NONE);
    }

    public final void handleMapChangedEvent(String eventType) {
        CameraChangeEvent mapChangeEvent;
        this.wasGestureActive = this.isGestureActive;
        if (canHandleEvent(eventType)) {
            switch (eventType) {
                case "regiondidchange":
                case "regionischanging":
                case "regionwillchange":
                    mapChangeEvent = new MapChangeEvent(this, eventType, makeRegionPayload(null));
                    break;
                case "mapidle":
                    mapChangeEvent = new MapChangeEvent(this, eventType, makeCameraPayload());
                    break;
                case "camerachanged":
                    mapChangeEvent = new CameraChangeEvent(this, eventType, makeCameraPayload());
                    break;
                default:
                    mapChangeEvent = new MapChangeEvent(this, eventType, null, 4, null);
                    break;
            }
            this.mManager.handleEvent(mapChangeEvent);
        }
    }

    public final void setHandledMapChangedEvents(String[] events) {
        Intrinsics.checkNotNullParameter(events, "events");
        this.mHandledMapChangedEvents = new HashSet<>(ArraysKt.asList(events));
    }

    private final boolean canHandleEvent(String event) {
        HashSet<String> hashSet = this.mHandledMapChangedEvents;
        return hashSet == null || hashSet.contains(event);
    }

    private final WritableMap makeCameraPayload() {
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        CameraState cameraState = mapboxMap.getCameraState();
        if (cameraState == null) {
            return new WritableNativeMap();
        }
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble("zoom", cameraState.getZoom());
        writableNativeMap.putDouble("heading", cameraState.getBearing());
        writableNativeMap.putDouble("pitch", cameraState.getPitch());
        Point center = cameraState.getCenter();
        Intrinsics.checkNotNullExpressionValue(center, "getCenter(...)");
        writableNativeMap.putArray("center", PointKt.toReadableArray(center));
        try {
            MapboxMap mapboxMap2 = this.mMap;
            if (mapboxMap2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMap");
                mapboxMap2 = null;
            }
            CoordinateBounds coordinateBoundsCoordinateBoundsForCamera = mapboxMap2.coordinateBoundsForCamera(ExtensionUtils.toCameraOptions$default(cameraState, null, 1, null));
            WritableNativeMap writableNativeMap2 = new WritableNativeMap();
            Point northeast = coordinateBoundsCoordinateBoundsForCamera.getNortheast();
            Intrinsics.checkNotNullExpressionValue(northeast, "getNortheast(...)");
            writableNativeMap2.putArray("ne", PointKt.toReadableArray(northeast));
            Point southwest = coordinateBoundsCoordinateBoundsForCamera.getSouthwest();
            Intrinsics.checkNotNullExpressionValue(southwest, "getSouthwest(...)");
            writableNativeMap2.putArray("sw", PointKt.toReadableArray(southwest));
            writableNativeMap.putMap("bounds", writableNativeMap2);
        } catch (Exception e) {
            Logger.e("RNMBXMapView", "An error occurred while attempting to make the region", e);
        }
        WritableNativeMap writableNativeMap3 = new WritableNativeMap();
        writableNativeMap3.putBoolean("isGestureActive", this.wasGestureActive);
        WritableNativeMap writableNativeMap4 = new WritableNativeMap();
        writableNativeMap4.putMap(LightUtils.LIGHT_PROPERTIES, writableNativeMap);
        writableNativeMap4.putMap("gestures", writableNativeMap3);
        writableNativeMap4.putDouble("timestamp", System.currentTimeMillis());
        return writableNativeMap4;
    }

    private final WritableMap makeRegionPayload(Boolean isAnimated) {
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        CameraState cameraState = mapboxMap.getCameraState();
        if (cameraState == null) {
            return new WritableNativeMap();
        }
        LatLng latLng = new LatLng(cameraState.getCenter().latitude(), cameraState.getCenter().longitude());
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble("zoomLevel", cameraState.getZoom());
        writableNativeMap.putDouble("heading", cameraState.getBearing());
        writableNativeMap.putDouble("pitch", cameraState.getPitch());
        writableNativeMap.putBoolean("animated", isAnimated == null ? this.mCameraChangeTracker.isAnimated() : isAnimated.booleanValue());
        writableNativeMap.putBoolean("isUserInteraction", this.mCameraChangeTracker.isUserInteraction());
        try {
            MapboxMap mapboxMap2 = this.mMap;
            if (mapboxMap2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mMap");
                mapboxMap2 = null;
            }
            writableNativeMap.putArray("visibleBounds", CoordinateBoundsKt.toReadableArray(mapboxMap2.coordinateBoundsForCamera(ExtensionUtils.toCameraOptions$default(cameraState, null, 1, null))));
        } catch (Exception e) {
            Logger.e("RNMBXMapView", "An error occurred while attempting to make the region", e);
        }
        return GeoJSONUtils.toPointFeature(latLng, writableNativeMap);
    }

    private final void setUpImage(Style loadedStyle) {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.red_marker);
        Intrinsics.checkNotNullExpressionValue(bitmapDecodeResource, "decodeResource(...)");
        loadedStyle.addImage("MARKER_IMAGE_ID", bitmapDecodeResource);
    }

    public final LocationComponentManager getLocationComponentManager() {
        if (this.mLocationComponentManager == null) {
            this.mLocationComponentManager = new LocationComponentManager(this, this.mContext);
        }
        LocationComponentManager locationComponentManager = this.mLocationComponentManager;
        Intrinsics.checkNotNull(locationComponentManager);
        return locationComponentManager;
    }

    public final void getMapAsync(OnMapReadyCallback mapReady) {
        Intrinsics.checkNotNullParameter(mapReady, "mapReady");
        mapReady.onMapReady(getMapView().getMapboxMapDeprecated());
    }

    public final void getCenter(CommandResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        CameraState cameraState = mapboxMap.getCameraState();
        Intrinsics.checkNotNull(cameraState);
        ?? center = cameraState.getCenter();
        Intrinsics.checkNotNullExpressionValue(center, "getCenter(...)");
        objectRef.element = center;
        response.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.getCenter$lambda$11(objectRef, (WritableMap) obj);
            }
        });
    }

    public static final Unit getCenter$lambda$11(Ref.ObjectRef objectRef, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        WritableNativeArray writableNativeArray = new WritableNativeArray();
        writableNativeArray.pushDouble(((Point) objectRef.element).longitude());
        writableNativeArray.pushDouble(((Point) objectRef.element).latitude());
        it.putArray("center", writableNativeArray);
        return Unit.INSTANCE;
    }

    public final void getZoom(CommandResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        final Ref.DoubleRef doubleRef = new Ref.DoubleRef();
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        CameraState cameraState = mapboxMap.getCameraState();
        Intrinsics.checkNotNull(cameraState);
        doubleRef.element = cameraState.getZoom();
        response.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.getZoom$lambda$12(doubleRef, (WritableMap) obj);
            }
        });
    }

    public static final Unit getZoom$lambda$12(Ref.DoubleRef doubleRef, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putDouble("zoom", doubleRef.element);
        return Unit.INSTANCE;
    }

    private final float getDisplayDensity() {
        return this.mContext.getResources().getDisplayMetrics().density;
    }

    public final void getCoordinateFromView(ScreenCoordinate pixel, CommandResponse response) {
        Intrinsics.checkNotNullParameter(pixel, "pixel");
        Intrinsics.checkNotNullParameter(response, "response");
        double displayDensity = getDisplayDensity();
        ScreenCoordinate screenCoordinate = new ScreenCoordinate(pixel.getX() * displayDensity, pixel.getY() * displayDensity);
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        final Point pointCoordinateForPixel = mapboxMap.coordinateForPixel(screenCoordinate);
        response.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.getCoordinateFromView$lambda$13(pointCoordinateForPixel, (WritableMap) obj);
            }
        });
    }

    public static final Unit getCoordinateFromView$lambda$13(Point point, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putArray("coordinateFromView", PointKt.toReadableArray(point));
        return Unit.INSTANCE;
    }

    public final void getPointInView(Point coordinate, CommandResponse response) {
        Intrinsics.checkNotNullParameter(coordinate, "coordinate");
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        ScreenCoordinate screenCoordinatePixelForCoordinate = mapboxMap.pixelForCoordinate(coordinate);
        double displayDensity = getDisplayDensity();
        final PointF pointF = new PointF((float) (screenCoordinatePixelForCoordinate.getX() / displayDensity), (float) (screenCoordinatePixelForCoordinate.getY() / displayDensity));
        response.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.getPointInView$lambda$14(pointF, (WritableMap) obj);
            }
        });
    }

    public static final Unit getPointInView$lambda$14(PointF pointF, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        WritableNativeArray writableNativeArray = new WritableNativeArray();
        writableNativeArray.pushDouble(pointF.x);
        writableNativeArray.pushDouble(pointF.y);
        it.putArray("pointInView", writableNativeArray);
        return Unit.INSTANCE;
    }

    public final void queryRenderedFeaturesAtPoint(PointF point, Expression filter, List<String> layerIDs, final CommandResponse response) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(response, "response");
        if (this.mMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        }
        float displayDensity = getDisplayDensity();
        RenderedQueryGeometry renderedQueryGeometry = new RenderedQueryGeometry(new ScreenCoordinate(point.x * displayDensity, point.y * displayDensity));
        MapboxMap mapboxMap = null;
        if (layerIDs == null) {
            layerIDs = null;
        } else {
            if (layerIDs.isEmpty()) {
                layerIDs = null;
            }
            if (layerIDs == null) {
                layerIDs = null;
            }
        }
        RenderedQueryOptions renderedQueryOptions = new RenderedQueryOptions(layerIDs, filter);
        MapboxMap mapboxMap2 = this.mMap;
        if (mapboxMap2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        } else {
            mapboxMap = mapboxMap2;
        }
        mapboxMap.queryRenderedFeatures(renderedQueryGeometry, renderedQueryOptions, new QueryRenderedFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXMapView.queryRenderedFeaturesAtPoint$lambda$17(response, expected);
            }
        });
    }

    public static final void queryRenderedFeaturesAtPoint$lambda$17(CommandResponse commandResponse, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            final ArrayList arrayList = new ArrayList();
            Object value = features.getValue();
            Intrinsics.checkNotNull(value);
            for (QueriedRenderedFeature queriedRenderedFeature : (List) value) {
                Intrinsics.checkNotNull(queriedRenderedFeature);
                arrayList.add(FeatureKt.getFeature(queriedRenderedFeature));
            }
            commandResponse.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.queryRenderedFeaturesAtPoint$lambda$17$lambda$16(arrayList, (WritableMap) obj);
                }
            });
            return;
        }
        String str = (String) features.getError();
        if (str == null) {
            str = "n/a";
        }
        commandResponse.error(str);
    }

    public static final Unit queryRenderedFeaturesAtPoint$lambda$17$lambda$16(ArrayList arrayList, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putString("data", FeatureCollection.fromFeatures(arrayList).toJson());
        return Unit.INSTANCE;
    }

    public final void queryRenderedFeaturesInRect(RectF rect, Expression filter, List<String> layerIDs, final CommandResponse response) {
        ScreenBox screenBox;
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMap mapboxMap = this.mMap;
        MapboxMap mapboxMap2 = null;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        Size size = mapboxMap.getMapOptions().getSize();
        if (rect == null) {
            ScreenCoordinate screenCoordinate = new ScreenCoordinate(0.0d, 0.0d);
            Float fValueOf = size != null ? Float.valueOf(size.getWidth()) : null;
            Intrinsics.checkNotNull(fValueOf);
            double dFloatValue = fValueOf.floatValue();
            Float fValueOf2 = size != null ? Float.valueOf(size.getHeight()) : null;
            Intrinsics.checkNotNull(fValueOf2);
            screenBox = new ScreenBox(screenCoordinate, new ScreenCoordinate(dFloatValue, fValueOf2.floatValue()));
        } else {
            screenBox = new ScreenBox(new ScreenCoordinate(rect.right, rect.bottom), new ScreenCoordinate(rect.left, rect.top));
        }
        MapboxMap mapboxMap3 = this.mMap;
        if (mapboxMap3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        } else {
            mapboxMap2 = mapboxMap3;
        }
        mapboxMap2.queryRenderedFeatures(new RenderedQueryGeometry(screenBox), new RenderedQueryOptions(layerIDs, filter), new QueryRenderedFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXMapView.queryRenderedFeaturesInRect$lambda$19(response, expected);
            }
        });
    }

    public static final void queryRenderedFeaturesInRect$lambda$19(CommandResponse commandResponse, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            final ArrayList arrayList = new ArrayList();
            Object value = features.getValue();
            Intrinsics.checkNotNull(value);
            for (QueriedRenderedFeature queriedRenderedFeature : (List) value) {
                Intrinsics.checkNotNull(queriedRenderedFeature);
                arrayList.add(FeatureKt.getFeature(queriedRenderedFeature));
            }
            commandResponse.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.queryRenderedFeaturesInRect$lambda$19$lambda$18(arrayList, (WritableMap) obj);
                }
            });
            return;
        }
        String str = (String) features.getError();
        if (str == null) {
            str = "n/a";
        }
        commandResponse.error(str);
    }

    public static final Unit queryRenderedFeaturesInRect$lambda$19$lambda$18(ArrayList arrayList, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putString("data", FeatureCollection.fromFeatures(arrayList).toJson());
        return Unit.INSTANCE;
    }

    public final void querySourceFeatures(String sourceId, Expression filter, List<String> sourceLayerIDs, final CommandResponse response) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        Expression expressionNullValue = filter != null ? filter : Value.nullValue();
        Intrinsics.checkNotNull(expressionNullValue, "null cannot be cast to non-null type com.mapbox.bindgen.Value");
        mapboxMap.querySourceFeatures(sourceId, new SourceQueryOptions(sourceLayerIDs, expressionNullValue), new QuerySourceFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXMapView.querySourceFeatures$lambda$21(response, expected);
            }
        });
    }

    public static final void querySourceFeatures$lambda$21(CommandResponse commandResponse, Expected features) {
        Intrinsics.checkNotNullParameter(features, "features");
        if (features.isValue()) {
            final ArrayList arrayList = new ArrayList();
            Object value = features.getValue();
            Intrinsics.checkNotNull(value);
            for (QueriedSourceFeature queriedSourceFeature : (List) value) {
                Intrinsics.checkNotNull(queriedSourceFeature);
                arrayList.add(FeatureKt.getFeature(queriedSourceFeature));
            }
            commandResponse.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.querySourceFeatures$lambda$21$lambda$20(arrayList, (WritableMap) obj);
                }
            });
            return;
        }
        String str = (String) features.getError();
        if (str == null) {
            str = "n/a";
        }
        commandResponse.error(str);
    }

    public static final Unit querySourceFeatures$lambda$21$lambda$20(ArrayList arrayList, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putString("data", FeatureCollection.fromFeatures(arrayList).toJson());
        return Unit.INSTANCE;
    }

    public final void getVisibleBounds(CommandResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        MapboxMap mapboxMap2 = this.mMap;
        if (mapboxMap2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap2 = null;
        }
        final CoordinateBounds coordinateBoundsCoordinateBoundsForCamera = mapboxMap.coordinateBoundsForCamera(ExtensionUtils.toCameraOptions$default(mapboxMap2.getCameraState(), null, 1, null));
        response.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.getVisibleBounds$lambda$22(coordinateBoundsCoordinateBoundsForCamera, (WritableMap) obj);
            }
        });
    }

    public static final Unit getVisibleBounds$lambda$22(CoordinateBounds coordinateBounds, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putArray("visibleBounds", CoordinateBoundsKt.toReadableArray(coordinateBounds));
        return Unit.INSTANCE;
    }

    public final void takeSnap(final boolean writeToDisk, final CommandResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        getMapView().snapshot(new MapView.OnSnapshotReady() {
            @Override
            public final void onSnapshotReady(Bitmap bitmap) {
                RNMBXMapView.takeSnap$lambda$25(response, writeToDisk, this, bitmap);
            }
        });
    }

    public static final void takeSnap$lambda$25(CommandResponse commandResponse, boolean z, RNMBXMapView rNMBXMapView, Bitmap bitmap) {
        final String strCreateBase64;
        if (bitmap == null) {
            commandResponse.error("snapshot failed");
            return;
        }
        if (z) {
            strCreateBase64 = BitmapUtils.INSTANCE.createTempFile(rNMBXMapView.mContext, bitmap);
        } else {
            strCreateBase64 = BitmapUtils.INSTANCE.createBase64(bitmap);
        }
        commandResponse.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.takeSnap$lambda$25$lambda$24(strCreateBase64, (WritableMap) obj);
            }
        });
    }

    public static final Unit takeSnap$lambda$25$lambda$24(String str, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (str != null) {
            it.putString(ModelSourceWrapper.URL, str);
        }
        return Unit.INSTANCE;
    }

    public final void queryTerrainElevation(double longitude, double latitude, CommandResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        Point pointFromLngLat = Point.fromLngLat(longitude, latitude);
        Intrinsics.checkNotNullExpressionValue(pointFromLngLat, "fromLngLat(...)");
        final Double elevation = mapboxMap.getElevation(pointFromLngLat);
        if (elevation != null) {
            response.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.queryTerrainElevation$lambda$26(elevation, (WritableMap) obj);
                }
            });
        } else {
            response.error("no elevation data");
        }
    }

    public static final Unit queryTerrainElevation$lambda$26(Double d, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putDouble("data", d.doubleValue());
        return Unit.INSTANCE;
    }

    public final void clearData(final CommandResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMapKt.clearData(getMapView().getMapboxMapDeprecated(), new AsyncOperationResultCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXMapView.clearData$lambda$28(response, expected);
            }
        });
    }

    public static final void clearData$lambda$28(CommandResponse commandResponse, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isError()) {
            Object error = expected.getError();
            Intrinsics.checkNotNull(error);
            commandResponse.error(((String) error).toString());
            return;
        }
        commandResponse.success(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.clearData$lambda$28$lambda$27((WritableMap) obj);
            }
        });
    }

    public static final Unit clearData$lambda$28$lambda$27(WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.putBoolean("data", true);
        return Unit.INSTANCE;
    }

    public final void setFeatureState(String featureId, HashMap<String, Value> state, String sourceId, String sourceLayerId, final CommandResponse response) {
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMap mapboxMapDeprecated = getMapView().getMapboxMapDeprecated();
        Value valueValueOf = Value.valueOf(state);
        Intrinsics.checkNotNullExpressionValue(valueValueOf, "valueOf(...)");
        MapboxMapKt.setFeatureStateCompat(mapboxMapDeprecated, sourceId, sourceLayerId, featureId, valueValueOf, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.setFeatureState$lambda$30(response, (Expected) obj);
            }
        });
    }

    public static final Unit setFeatureState$lambda$30(CommandResponse commandResponse, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isError()) {
            Object error = expected.getError();
            Intrinsics.checkNotNull(error);
            commandResponse.error(((String) error).toString());
        } else {
            commandResponse.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.setFeatureState$lambda$30$lambda$29((WritableMap) obj);
                }
            });
        }
        return Unit.INSTANCE;
    }

    public static final Unit setFeatureState$lambda$30$lambda$29(WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final void getFeatureState(String featureId, String sourceId, String sourceLayerId, final CommandResponse response) {
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(response, "response");
        getMapView().getMapboxMapDeprecated().getFeatureState(sourceId, sourceLayerId, featureId, new QueryFeatureStateCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXMapView.getFeatureState$lambda$32(response, expected);
            }
        });
    }

    public static final void getFeatureState$lambda$32(CommandResponse commandResponse, final Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            commandResponse.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.getFeatureState$lambda$32$lambda$31(expected, (WritableMap) obj);
                }
            });
            return;
        }
        String str = (String) expected.getError();
        if (str == null) {
            str = "Unknown error";
        }
        commandResponse.error(str);
    }

    public static final Unit getFeatureState$lambda$32$lambda$31(Expected expected, WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Value value = (Value) expected.getValue();
        Object contents = value != null ? value.getContents() : null;
        if (contents instanceof Map) {
            Pair<String, ?>[] stringKeyPairs = MapKt.toStringKeyPairs((Map) contents);
            it.putMap("featureState", WriteableMapArrayOfKt.writableMapOf((Pair[]) Arrays.copyOf(stringKeyPairs, stringKeyPairs.length)));
        } else {
            it.putMap("featureState", Arguments.createMap());
        }
        return Unit.INSTANCE;
    }

    public final void removeFeatureState(String featureId, String stateKey, String sourceId, String sourceLayerId, final CommandResponse response) {
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(response, "response");
        MapboxMapKt.removeFeatureStateCompat(getMapView().getMapboxMapDeprecated(), sourceId, sourceLayerId, featureId, stateKey, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.removeFeatureState$lambda$34(response, (Expected) obj);
            }
        });
    }

    public static final Unit removeFeatureState$lambda$34(CommandResponse commandResponse, Expected expected) {
        String string;
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isError()) {
            String str = (String) expected.getError();
            if (str == null || (string = str.toString()) == null) {
                string = "Unknown error";
            }
            commandResponse.error(string);
        } else {
            commandResponse.success(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapView.removeFeatureState$lambda$34$lambda$33((WritableMap) obj);
                }
            });
        }
        return Unit.INSTANCE;
    }

    public static final Unit removeFeatureState$lambda$34$lambda$33(WritableMap it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    private static final boolean match$match(String str, String str2, String str3, String str4) {
        if (Intrinsics.areEqual(str3, str)) {
            return str2 == null || Intrinsics.areEqual(str2, str4);
        }
        return false;
    }

    public final boolean match(Layer layer, String sourceId, String sourceLayerId) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        if ((layer instanceof BackgroundLayer) || (layer instanceof LocationIndicatorLayer) || (layer instanceof SkyLayer)) {
            return false;
        }
        if (layer instanceof CircleLayer) {
            CircleLayer circleLayer = (CircleLayer) layer;
            return match$match(sourceId, sourceLayerId, circleLayer.getSourceId(), circleLayer.getSourceLayer());
        }
        if (layer instanceof FillExtrusionLayer) {
            FillExtrusionLayer fillExtrusionLayer = (FillExtrusionLayer) layer;
            return match$match(sourceId, sourceLayerId, fillExtrusionLayer.getSourceId(), fillExtrusionLayer.getSourceLayer());
        }
        if (layer instanceof FillLayer) {
            FillLayer fillLayer = (FillLayer) layer;
            return match$match(sourceId, sourceLayerId, fillLayer.getSourceId(), fillLayer.getSourceLayer());
        }
        if (layer instanceof HeatmapLayer) {
            HeatmapLayer heatmapLayer = (HeatmapLayer) layer;
            return match$match(sourceId, sourceLayerId, heatmapLayer.getSourceId(), heatmapLayer.getSourceLayer());
        }
        if (layer instanceof HillshadeLayer) {
            HillshadeLayer hillshadeLayer = (HillshadeLayer) layer;
            return match$match(sourceId, sourceLayerId, hillshadeLayer.getSourceId(), hillshadeLayer.getSourceLayer());
        }
        if (layer instanceof LineLayer) {
            LineLayer lineLayer = (LineLayer) layer;
            return match$match(sourceId, sourceLayerId, lineLayer.getSourceId(), lineLayer.getSourceLayer());
        }
        if (layer instanceof RasterLayer) {
            RasterLayer rasterLayer = (RasterLayer) layer;
            return match$match(sourceId, sourceLayerId, rasterLayer.getSourceId(), rasterLayer.getSourceLayer());
        }
        if (layer instanceof SymbolLayer) {
            SymbolLayer symbolLayer = (SymbolLayer) layer;
            return match$match(sourceId, sourceLayerId, symbolLayer.getSourceId(), symbolLayer.getSourceLayer());
        }
        MapboxLogger.logE("MapView", "Layer type: " + layer + ".type unknown.");
        return false;
    }

    public final void setSourceVisibility(boolean visible, String sourceId, String sourceLayerId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        if (this.mMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMap");
            mapboxMap = null;
        }
        Style styleDeprecated = mapboxMap.getStyleDeprecated();
        List<StyleObjectInfo> styleLayers = styleDeprecated != null ? styleDeprecated.getStyleLayers() : null;
        if (styleLayers == null) {
            Logger.INSTANCE.e("MapView", "setSourceVisibility, map.getStyle().styleLayers is null");
            return;
        }
        Iterator<T> it = styleLayers.iterator();
        while (it.hasNext()) {
            String id = ((StyleObjectInfo) it.next()).getId();
            Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
            Layer layer = LayerUtils.getLayer(styleDeprecated, id);
            if (layer != null && match(layer, sourceId, sourceLayerId)) {
                layer.visibility(visible ? Visibility.VISIBLE : Visibility.NONE);
            }
        }
    }

    public final MapView createAndAddMapView(String mapViewImpl) {
        Intrinsics.checkNotNullParameter(mapViewImpl, "mapViewImpl");
        Function2<String, ViewGroup, MapView> function2 = RNMBXMapViewFactory.INSTANCE.get(mapViewImpl);
        if (function2 != null) {
            return function2.invoke(mapViewImpl, this);
        }
        return null;
    }

    public final MapView createMapView() {
        MapView mapView;
        MapView mapViewCreateAndAddMapView;
        String str = this.mapViewImpl;
        if (str != null && (mapViewCreateAndAddMapView = createAndAddMapView(str)) != null) {
            this.mMapView = mapViewCreateAndAddMapView;
        } else {
            MapInitOptions mapInitOptions = null;
            MapInitOptions mapInitOptions2 = Intrinsics.areEqual((Object) this.surfaceView, (Object) false) ? new MapInitOptions(this.mContext, null, null, null, true, null, null, 0, null, 494, null) : null;
            if (mapInitOptions2 != null) {
                mapView = new MapView(this.mContext, mapInitOptions2);
            } else {
                mapView = new MapView(this.mContext, mapInitOptions, 2, (DefaultConstructorMarker) (null == true ? 1 : 0));
            }
            this.mMapView = mapView;
            mapView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            addView(mapView);
        }
        addOnLayoutChangeListener(this);
        final MapboxMap mapboxMapDeprecated = getMapView().getMapboxMapDeprecated();
        this.mMap = mapboxMapDeprecated;
        onMapReady(mapboxMapDeprecated);
        mapboxMapDeprecated.addOnMapLoadedListener(new OnMapLoadedListener() {
            @Override
            public final void onMapLoaded(MapLoadedEventData mapLoadedEventData) {
                RNMBXMapView.createMapView$lambda$39(this.f$0, mapLoadedEventData);
            }
        });
        mapboxMapDeprecated.addOnStyleLoadedListener(new OnStyleLoadedListener() {
            @Override
            public final void onStyleLoaded(StyleLoadedEventData styleLoadedEventData) {
                RNMBXMapView.createMapView$lambda$40(this.f$0, styleLoadedEventData);
            }
        });
        mapboxMapDeprecated.addOnStyleImageMissingListener(new OnStyleImageMissingListener() {
            @Override
            public final void onStyleImageMissing(StyleImageMissingEventData styleImageMissingEventData) {
                RNMBXMapView.createMapView$lambda$41(this.f$0, mapboxMapDeprecated, styleImageMissingEventData);
            }
        });
        RNMBXMarkerViewManager.INSTANCE.markerViewContainerSizeFixer(this, getMapView().getViewAnnotationManager());
        setupEvents(mapboxMapDeprecated);
        return getMapView();
    }

    public static final void createMapView$lambda$39(RNMBXMapView rNMBXMapView, MapLoadedEventData mapLoadedEventData) {
        Intrinsics.checkNotNullParameter(mapLoadedEventData, "<destruct>");
        mapLoadedEventData.getBegin();
        mapLoadedEventData.getEnd();
        rNMBXMapView.handleMapChangedEvent(EventTypes.DID_FINISH_LOADING_MAP);
    }

    public static final void createMapView$lambda$40(RNMBXMapView rNMBXMapView, StyleLoadedEventData styleLoadedEventData) {
        Intrinsics.checkNotNullParameter(styleLoadedEventData, "<destruct>");
        styleLoadedEventData.getBegin();
        styleLoadedEventData.getEnd();
        rNMBXMapView.handleMapChangedEvent(EventTypes.DID_FINISH_LOADING_STYLE);
    }

    public static final void createMapView$lambda$41(RNMBXMapView rNMBXMapView, MapboxMap mapboxMap, StyleImageMissingEventData styleImageMissingEventData) {
        Intrinsics.checkNotNullParameter(styleImageMissingEventData, "<destruct>");
        styleImageMissingEventData.getBegin();
        styleImageMissingEventData.getEnd();
        String strComponent3 = styleImageMissingEventData.getId();
        Iterator<RNMBXImages> it = rNMBXMapView.mImages.iterator();
        while (it.hasNext()) {
            if (it.next().addMissingImageToStyle(strComponent3, mapboxMap)) {
                return;
            }
        }
        Iterator<RNMBXImages> it2 = rNMBXMapView.mImages.iterator();
        while (it2.hasNext()) {
            it2.next().sendImageMissingEvent(strComponent3, mapboxMap);
        }
    }

    private final int toGravity(String kind, int viewPosition) {
        if (viewPosition == 0) {
            return 8388659;
        }
        if (viewPosition == 1) {
            return 8388661;
        }
        if (viewPosition == 2) {
            return 8388691;
        }
        if (viewPosition == 3) {
            return 8388693;
        }
        Logger.INSTANCE.e("MapView", "Unexpected viewPosition for " + kind + ": " + viewPosition + " should be between 0 and 3");
        return 0;
    }

    private final void updateOrnament(String kind, OrnamentSettings from, GenericOrnamentSettings to) {
        Boolean enabled = from.getEnabled();
        if (enabled != null) {
            to.setEnabled(enabled.booleanValue());
        }
        if (from.getPosition() >= 0) {
            to.setPosition(toGravity(kind, from.getPosition()));
        }
        ReadableMap margins = from.getMargins();
        if (margins != null) {
            double d = getResources().getDisplayMetrics().density;
            int i = (int) (margins.getDouble("x") * d);
            int i2 = (int) (margins.getDouble(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE) * d);
            int position = to.getPosition() & 7;
            int position2 = to.getPosition() & 112;
            if (position == 1) {
                float f = i;
                to.setHMargins(Float.valueOf(f), Float.valueOf(f));
            } else if (position == 3) {
                to.setHMargins(Float.valueOf(i), Float.valueOf(0.0f));
            } else if (position == 5) {
                to.setHMargins(Float.valueOf(0.0f), Float.valueOf(i));
            } else {
                Logger.INSTANCE.e("MapView", kind + "ViewMargins: unexpected absolute pos: " + position);
            }
            if (position2 == 16) {
                float f2 = i2;
                to.setVMargins(Float.valueOf(f2), Float.valueOf(f2));
            } else if (position2 == 48) {
                to.setVMargins(Float.valueOf(i2), Float.valueOf(0.0f));
            } else if (position2 == 80) {
                to.setVMargins(Float.valueOf(0.0f), Float.valueOf(i2));
            } else {
                Logger.INSTANCE.e("MapView", kind + "ViewMargins: unexpected vertical pos: " + position2);
            }
        }
    }

    public final OrnamentSettings getMCompassSettings() {
        return this.mCompassSettings;
    }

    public final void setMCompassSettings(OrnamentSettings ornamentSettings) {
        Intrinsics.checkNotNullParameter(ornamentSettings, "<set-?>");
        this.mCompassSettings = ornamentSettings;
    }

    public final boolean getMCompassFadeWhenNorth() {
        return this.mCompassFadeWhenNorth;
    }

    public final void setMCompassFadeWhenNorth(boolean z) {
        this.mCompassFadeWhenNorth = z;
    }

    public final void setReactCompassEnabled(boolean compassEnabled) {
        this.mCompassSettings.setEnabled(Boolean.valueOf(compassEnabled));
        this.changes.add(Property.COMPASS);
    }

    public final void setReactCompassFadeWhenNorth(boolean compassFadeWhenNorth) {
        this.mCompassFadeWhenNorth = compassFadeWhenNorth;
        this.changes.add(Property.COMPASS);
    }

    public final void setReactCompassViewMargins(ReadableMap compassViewMargins) {
        Intrinsics.checkNotNullParameter(compassViewMargins, "compassViewMargins");
        this.mCompassSettings.setMargins(compassViewMargins);
        this.changes.add(Property.COMPASS);
    }

    public final void setReactCompassViewPosition(int compassViewPosition) {
        this.mCompassSettings.setPosition(compassViewPosition);
        this.changes.add(Property.COMPASS);
    }

    public final void setReactCompassPosition(ReadableMap compassPosition) {
        Intrinsics.checkNotNullParameter(compassPosition, "compassPosition");
        RNMBXMapViewKt.setPosAndMargins(this.mCompassSettings, compassPosition);
        this.changes.add(Property.COMPASS);
    }

    public final void applyCompass() {
        CompassUtils.getCompass(getMapView()).updateSettings(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.applyCompass$lambda$46(this.f$0, (CompassSettings.Builder) obj);
            }
        });
        workaroundToRelayoutChildOfMapView();
    }

    public static final Unit applyCompass$lambda$46(RNMBXMapView rNMBXMapView, CompassSettings.Builder updateSettings) {
        Intrinsics.checkNotNullParameter(updateSettings, "$this$updateSettings");
        updateSettings.m1069setFadeWhenFacingNorth(rNMBXMapView.mCompassFadeWhenNorth);
        rNMBXMapView.updateOrnament("compass", rNMBXMapView.mCompassSettings, OrnamentSettingsKt.toGenericOrnamentSettings(updateSettings));
        return Unit.INSTANCE;
    }

    public final OrnamentSettings getMScaleBarSettings() {
        return this.mScaleBarSettings;
    }

    public final void setMScaleBarSettings(OrnamentSettings ornamentSettings) {
        Intrinsics.checkNotNullParameter(ornamentSettings, "<set-?>");
        this.mScaleBarSettings = ornamentSettings;
    }

    public final void setReactScaleBarEnabled(boolean scaleBarEnabled) {
        this.mScaleBarSettings.setEnabled(Boolean.valueOf(scaleBarEnabled));
        this.changes.add(Property.SCALEBAR);
    }

    public final void setReactScaleBarViewMargins(ReadableMap scaleBarMargins) {
        Intrinsics.checkNotNullParameter(scaleBarMargins, "scaleBarMargins");
        this.mScaleBarSettings.setMargins(scaleBarMargins);
        this.changes.add(Property.SCALEBAR);
    }

    public final void setReactScaleBarViewPosition(int scaleBarPosition) {
        this.mScaleBarSettings.setPosition(scaleBarPosition);
        this.changes.add(Property.SCALEBAR);
    }

    public final void setReactScaleBarPosition(ReadableMap scaleBarPosition) {
        Intrinsics.checkNotNullParameter(scaleBarPosition, "scaleBarPosition");
        RNMBXMapViewKt.setPosAndMargins(this.mScaleBarSettings, scaleBarPosition);
        this.changes.add(Property.SCALEBAR);
    }

    public final void applyScaleBar() {
        ScaleBarUtils.getScaleBar(getMapView()).updateSettings(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.applyScaleBar$lambda$47(this.f$0, (ScaleBarSettings.Builder) obj);
            }
        });
        workaroundToRelayoutChildOfMapView();
    }

    public static final Unit applyScaleBar$lambda$47(RNMBXMapView rNMBXMapView, ScaleBarSettings.Builder updateSettings) {
        Intrinsics.checkNotNullParameter(updateSettings, "$this$updateSettings");
        rNMBXMapView.updateOrnament("scaleBar", rNMBXMapView.mScaleBarSettings, OrnamentSettingsKt.toGenericOrnamentSettings(updateSettings));
        return Unit.INSTANCE;
    }

    public final void workaroundToRelayoutChildOfMapView() {
        if (getMapView().getWidth() == 0 && getMapView().getHeight() == 0) {
            return;
        }
        getMapView().requestLayout();
        getMapView().forceLayout();
        getMapView().measure(View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getHeight(), 1073741824));
        getMapView().layout(getMapView().getLeft(), getMapView().getTop(), getMapView().getRight(), getMapView().getBottom());
    }

    private final Pair<Integer, int[]> getGravityAndMargin(ReadableMap position) {
        int i = position.hasKey(ViewProps.LEFT) ? GravityCompat.START : 0;
        if (position.hasKey(ViewProps.RIGHT)) {
            i |= GravityCompat.END;
        }
        if (position.hasKey(ViewProps.TOP)) {
            i |= 48;
        }
        if (position.hasKey(ViewProps.BOTTOM)) {
            i |= 80;
        }
        float displayDensity = getDisplayDensity();
        return new Pair<>(Integer.valueOf(i), new int[]{position.hasKey(ViewProps.LEFT) ? ((int) displayDensity) * position.getInt(ViewProps.LEFT) : 0, position.hasKey(ViewProps.TOP) ? ((int) displayDensity) * position.getInt(ViewProps.TOP) : 0, position.hasKey(ViewProps.RIGHT) ? ((int) displayDensity) * position.getInt(ViewProps.RIGHT) : 0, position.hasKey(ViewProps.BOTTOM) ? ((int) displayDensity) * position.getInt(ViewProps.BOTTOM) : 0});
    }

    public final OrnamentSettings getMAttributionSettings() {
        return this.mAttributionSettings;
    }

    public final void setMAttributionSettings(OrnamentSettings ornamentSettings) {
        Intrinsics.checkNotNullParameter(ornamentSettings, "<set-?>");
        this.mAttributionSettings = ornamentSettings;
    }

    public final void setReactAttributionEnabled(Boolean attributionEnabled) {
        this.mAttributionSettings.setEnabled(attributionEnabled);
        this.changes.add(Property.ATTRIBUTION);
    }

    public final void setReactAttributionViewMargins(ReadableMap margins) {
        Intrinsics.checkNotNullParameter(margins, "margins");
        this.mAttributionSettings.setMargins(margins);
        this.changes.add(Property.ATTRIBUTION);
    }

    public final void setReactAttributionViewPosition(int position) {
        this.mAttributionSettings.setPosition(position);
        this.changes.add(Property.ATTRIBUTION);
    }

    public final void setReactAttributionPosition(ReadableMap position) {
        RNMBXMapViewKt.setPosAndMargins(this.mAttributionSettings, position);
        this.changes.add(Property.ATTRIBUTION);
    }

    public final void applyAttribution() {
        AttributionUtils.getAttribution(getMapView()).updateSettings(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.applyAttribution$lambda$48(this.f$0, (AttributionSettings.Builder) obj);
            }
        });
        workaroundToRelayoutChildOfMapView();
    }

    public static final Unit applyAttribution$lambda$48(RNMBXMapView rNMBXMapView, AttributionSettings.Builder updateSettings) {
        Intrinsics.checkNotNullParameter(updateSettings, "$this$updateSettings");
        rNMBXMapView.updateOrnament("attribution", rNMBXMapView.mAttributionSettings, OrnamentSettingsKt.toGenericOrnamentSettings(updateSettings));
        return Unit.INSTANCE;
    }

    public final OrnamentSettings getMLogoSettings() {
        return this.mLogoSettings;
    }

    public final void setMLogoSettings(OrnamentSettings ornamentSettings) {
        Intrinsics.checkNotNullParameter(ornamentSettings, "<set-?>");
        this.mLogoSettings = ornamentSettings;
    }

    public final void setReactLogoEnabled(Boolean enabled) {
        this.mLogoSettings.setEnabled(enabled);
        this.changes.add(Property.LOGO);
    }

    public final void setReactLogoMargins(ReadableMap margins) {
        Intrinsics.checkNotNullParameter(margins, "margins");
        this.mLogoSettings.setMargins(margins);
        this.changes.add(Property.LOGO);
    }

    public final void setReactLogoViewPosition(int position) {
        this.mLogoSettings.setPosition(position);
        this.changes.add(Property.LOGO);
    }

    public final void setReactLogoPosition(ReadableMap position) {
        RNMBXMapViewKt.setPosAndMargins(this.mLogoSettings, position);
        this.changes.add(Property.LOGO);
    }

    public final void applyLogo() {
        LogoUtils.getLogo(getMapView()).updateSettings(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXMapView.applyLogo$lambda$49(this.f$0, (LogoSettings.Builder) obj);
            }
        });
        workaroundToRelayoutChildOfMapView();
    }

    public static final Unit applyLogo$lambda$49(RNMBXMapView rNMBXMapView, LogoSettings.Builder updateSettings) {
        Intrinsics.checkNotNullParameter(updateSettings, "$this$updateSettings");
        rNMBXMapView.updateOrnament("logo", rNMBXMapView.mLogoSettings, OrnamentSettingsKt.toGenericOrnamentSettings(updateSettings));
        return Unit.INSTANCE;
    }

    private final RNMBXLifeCycle getLifecycle() {
        return (RNMBXLifeCycle) this.lifecycle.getValue();
    }

    public static final RNMBXLifeCycle lifecycle_delegate$lambda$50() {
        return new RNMBXLifeCycle();
    }

    public final Lifecycle.State getLifecycleState() {
        return getLifecycle().getState();
    }

    @Override
    protected void onDetachedFromWindow() {
        getLifecycle().onDetachedFromWindow();
        super.onDetachedFromWindow();
    }

    public final void onDropViewInstance() {
        removeAllFeaturesFromMap(RemovalReason.ON_DESTROY);
        getMapView().getViewAnnotationManager().removeAllViewAnnotations();
        getLifecycle().onDestroy();
    }

    @Override
    protected void onAttachedToWindow() {
        getLifecycle().onAttachedToWindow(this);
        super.onAttachedToWindow();
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public final void run() {
                RNMBXMapView.onAttachedToWindow$lambda$51(this.f$0);
            }
        });
    }

    public static final void onAttachedToWindow$lambda$51(RNMBXMapView rNMBXMapView) {
        rNMBXMapView.getLifecycle().afterAttachFromLooper();
    }

    public final void callIfAttachedToWindow(Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        getLifecycle().callIfAttachedToWindow(callback);
    }

    @Override
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        getMapView().post(new Runnable() {
            @Override
            public final void run() {
                RNMBXMapView.onLayoutChange$lambda$52(this.f$0);
            }
        });
    }

    public static final void onLayoutChange$lambda$52(RNMBXMapView rNMBXMapView) {
        rNMBXMapView.getMapView().measure(View.MeasureSpec.makeMeasureSpec(rNMBXMapView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(rNMBXMapView.getHeight(), 1073741824));
        rNMBXMapView.getMapView().layout(rNMBXMapView.getMapView().getLeft(), rNMBXMapView.getMapView().getTop(), rNMBXMapView.getMapView().getRight(), rNMBXMapView.getMapView().getBottom());
    }
}
