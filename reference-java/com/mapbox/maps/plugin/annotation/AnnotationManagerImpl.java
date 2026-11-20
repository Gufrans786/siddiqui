package com.mapbox.maps.plugin.annotation;

import android.graphics.Bitmap;
import android.graphics.PointF;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.android.gestures.MoveDistancesObject;
import com.mapbox.android.gestures.MoveGestureDetector;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.ClickInteraction;
import com.mapbox.maps.DragInteraction;
import com.mapbox.maps.InteractionContext;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.LongClickInteraction;
import com.mapbox.maps.MapInteraction;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.PlatformEventInfo;
import com.mapbox.maps.PlatformEventType;
import com.mapbox.maps.QueriedFeature;
import com.mapbox.maps.QueriedRenderedFeature;
import com.mapbox.maps.QueryRenderedFeaturesCallback;
import com.mapbox.maps.RenderedQueryGeometry;
import com.mapbox.maps.RenderedQueryOptions;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.image.ImageUtils;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.LayerUtils;
import com.mapbox.maps.extension.style.layers.generated.CircleLayer;
import com.mapbox.maps.extension.style.layers.generated.CircleLayerDsl;
import com.mapbox.maps.extension.style.layers.generated.CircleLayerKt;
import com.mapbox.maps.extension.style.layers.generated.SymbolLayer;
import com.mapbox.maps.extension.style.layers.generated.SymbolLayerDsl;
import com.mapbox.maps.extension.style.layers.generated.SymbolLayerKt;
import com.mapbox.maps.extension.style.sources.SourceUtils;
import com.mapbox.maps.extension.style.sources.generated.GeoJsonSource;
import com.mapbox.maps.extension.style.sources.generated.GeoJsonSourceKt;
import com.mapbox.maps.interactions.FeatureState;
import com.mapbox.maps.interactions.FeaturesetFeature;
import com.mapbox.maps.plugin.InvalidPluginConfigurationException;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.annotation.Annotation;
import com.mapbox.maps.plugin.annotation.AnnotationOptions;
import com.mapbox.maps.plugin.annotation.OnAnnotationClickListener;
import com.mapbox.maps.plugin.annotation.OnAnnotationDragListener;
import com.mapbox.maps.plugin.annotation.OnAnnotationInteractionListener;
import com.mapbox.maps.plugin.annotation.OnAnnotationLongClickListener;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotation;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapFeatureQueryDelegate;
import com.mapbox.maps.plugin.delegates.MapInteractionDelegate;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.mapbox.maps.plugin.gestures.OnMapClickListener;
import com.mapbox.maps.plugin.gestures.OnMapLongClickListener;
import com.mapbox.maps.plugin.gestures.OnMoveListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000´\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 °\u0001*\b\b\u0000\u0010\u0001*\u00020\u0002*\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00010\u0004*\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0006*\u000e\b\u0003\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00030\b*\u000e\b\u0004\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\n*\u000e\b\u0005\u0010\u000b*\b\u0012\u0004\u0012\u0002H\u00030\f*\u000e\b\u0006\u0010\r*\b\u0012\u0004\u0012\u0002H\u00030\u000e*\b\b\u0007\u0010\u000f*\u00020\u00102,\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\r0\u0011:\b°\u0001±\u0001²\u0001³\u0001Ba\b\u0000\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u00126\u0010\u001a\u001a2\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00028\u00070\u001b¢\u0006\u0002\u0010 J\u001e\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020q2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010rH\u0002J\u001d\u0010s\u001a\u00020o2\u0006\u0010t\u001a\u00020\u00192\u0006\u0010u\u001a\u00020vH\u0000¢\u0006\u0002\bwJ\u001c\u0010x\u001a\b\u0012\u0004\u0012\u00020y0%2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010rH\u0002J\u0015\u0010z\u001a\u00028\u00012\u0006\u0010{\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010|J\u001c\u0010z\u001a\b\u0012\u0004\u0012\u00028\u00010%2\f\u0010}\u001a\b\u0012\u0004\u0012\u00028\u00020%H\u0016JI\u0010~\u001a\u00020\u007f2\u0007\u0010\u0080\u0001\u001a\u00020N2\u001a\u0010\u0081\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020N0\u0082\u00010%2\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J&\u0010\u0085\u0001\u001a\u00030\u0086\u00012\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001e\u0010\u0087\u0001\u001a\u00020C2\u0007\u0010\u0088\u0001\u001a\u00020\u00192\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001H\u0002J\u001d\u0010\u0089\u0001\u001a\u00020C2\u0006\u0010\u001f\u001a\u00020\u00192\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001H\u0002J\u0018\u0010\u008a\u0001\u001a\u00020o2\u0007\u0010\u008b\u0001\u001a\u00028\u0001H\u0016¢\u0006\u0003\u0010\u008c\u0001J\u0017\u0010\u008a\u0001\u001a\u00020o2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0016J\t\u0010\u008d\u0001\u001a\u00020oH\u0016J\t\u0010\u008e\u0001\u001a\u00020oH\u0002J\u0012\u0010\u008f\u0001\u001a\u00020o2\u0007\u0010\u0090\u0001\u001a\u00020\u0019H\u0016J\t\u0010\u0091\u0001\u001a\u00020\u0019H&J-\u0010\u0092\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00020q2\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0093\u0001\u001a\u00020o2\u0007\u0010\u0094\u0001\u001a\u00020\u0019H\u0002J\t\u0010\u0095\u0001\u001a\u00020oH\u0016J\u0019\u0010\u0096\u0001\u001a\u00020o2\u0006\u0010m\u001a\u00020N2\u0006\u0010M\u001a\u00020NH\u0016J\u0019\u0010\u0097\u0001\u001a\u0004\u0018\u00018\u00012\b\u0010\u0098\u0001\u001a\u00030\u0099\u0001¢\u0006\u0003\u0010\u009a\u0001J\u0019\u0010\u0097\u0001\u001a\u0004\u0018\u00018\u00012\b\u0010\u009b\u0001\u001a\u00030\u009c\u0001¢\u0006\u0003\u0010\u009d\u0001J\t\u0010\u009e\u0001\u001a\u00020oH\u0002J\u0018\u0010\u009f\u0001\u001a\u00020o2\u0007\u0010\u008b\u0001\u001a\u00028\u0001H\u0016¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010 \u0001\u001a\u00020o2\u0007\u0010\u0090\u0001\u001a\u00020\u0019H$J\u001c\u0010¡\u0001\u001a\u00020o2\b\u0010¢\u0001\u001a\u00030£\u00012\u0007\u0010¤\u0001\u001a\u00020\u0019H\u0004J\u0018\u0010¥\u0001\u001a\u0002042\u0007\u0010\u008b\u0001\u001a\u00028\u0001H\u0002¢\u0006\u0003\u0010¦\u0001J\t\u0010§\u0001\u001a\u00020oH\u0002J\t\u0010¨\u0001\u001a\u00020oH\u0002J\u0018\u0010©\u0001\u001a\u00020o2\u0007\u0010\u008b\u0001\u001a\u00028\u0001H\u0016¢\u0006\u0003\u0010\u008c\u0001J\u0017\u0010©\u0001\u001a\u00020o2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0016J\t\u0010ª\u0001\u001a\u00020oH\u0002J\t\u0010«\u0001\u001a\u00020oH\u0002J\r\u0010¬\u0001\u001a\u00020/*\u00020/H\u0002J\u0015\u0010\u00ad\u0001\u001a\u000204*\n\u0012\u0005\u0012\u00030¯\u00010®\u0001H\u0002R*\u0010!\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00028\u00010\"j\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00028\u0001`#X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00190)8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010'R\u0014\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00190)X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00040)X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010'R\u0014\u0010.\u001a\u00020/X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020403X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R*\u00109\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00028\u00010\"j\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00028\u0001`#X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010;\u001a\u00028\u00072\u0006\u0010:\u001a\u00028\u0007@AX\u0080\u000e¢\u0006\u0010\n\u0002\u0010@\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00030)X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010'R$\u0010D\u001a\u00020C2\u0006\u0010:\u001a\u00020C@AX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u0012\u0010I\u001a\u0004\u0018\u00018\u0001X\u0082\u000e¢\u0006\u0004\n\u0002\u0010JR\u000e\u0010K\u001a\u00020LX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020NX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00028\u00060)X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u0010'R\u0014\u0010Q\u001a\b\u0012\u0004\u0012\u00020S0RX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010T\u001a\u00028\u00072\u0006\u0010:\u001a\u00028\u0007@AX\u0080\u000e¢\u0006\u0010\n\u0002\u0010@\u001a\u0004\bU\u0010=\"\u0004\bV\u0010?R\u001a\u0010W\u001a\u0004\u0018\u00010XX¦\u000e¢\u0006\f\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u001a\u0010]\u001a\b\u0012\u0004\u0012\u00028\u00050)X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u0010'R\u000e\u0010_\u001a\u00020`X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010a\u001a\u00020bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010c\u001a\u00020dX\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\be\u0010fR\u0016\u0010g\u001a\n i*\u0004\u0018\u00010h0hX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010j\u001a\u00020C2\u0006\u0010:\u001a\u00020C@AX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010F\"\u0004\bl\u0010HR\u000e\u0010m\u001a\u00020NX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006´\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;", "G", "Lcom/mapbox/geojson/Geometry;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/plugin/annotation/Annotation;", ExifInterface.LATITUDE_SOUTH, "Lcom/mapbox/maps/plugin/annotation/AnnotationOptions;", "D", "Lcom/mapbox/maps/plugin/annotation/OnAnnotationDragListener;", "U", "Lcom/mapbox/maps/plugin/annotation/OnAnnotationClickListener;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/mapbox/maps/plugin/annotation/OnAnnotationLongClickListener;", "I", "Lcom/mapbox/maps/plugin/annotation/OnAnnotationInteractionListener;", "L", "Lcom/mapbox/maps/extension/style/layers/Layer;", "Lcom/mapbox/maps/plugin/annotation/AnnotationManager;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "annotationConfig", "Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;", "id", "", "typeName", "", "createLayerFunction", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "layerId", "sourceId", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;JLjava/lang/String;Lkotlin/jvm/functions/Function2;)V", "annotationMap", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "annotations", "", "getAnnotations", "()Ljava/util/List;", "associatedLayers", "", "getAssociatedLayers", "associatedSources", "clickListeners", "getClickListeners", "dataDrivenPropertyDefaultValues", "Lcom/google/gson/JsonObject;", "getDataDrivenPropertyDefaultValues$plugin_annotation_release", "()Lcom/google/gson/JsonObject;", "dataDrivenPropertyUsageMap", "", "", "getDataDrivenPropertyUsageMap", "()Ljava/util/Map;", "getDelegateProvider", "()Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "dragAnnotationMap", "<set-?>", "dragLayer", "getDragLayer$plugin_annotation_release", "()Lcom/mapbox/maps/extension/style/layers/Layer;", "setDragLayer$plugin_annotation_release", "(Lcom/mapbox/maps/extension/style/layers/Layer;)V", "Lcom/mapbox/maps/extension/style/layers/Layer;", "dragListeners", "getDragListeners", "Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "dragSource", "getDragSource$plugin_annotation_release", "()Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;", "setDragSource$plugin_annotation_release", "(Lcom/mapbox/maps/extension/style/sources/generated/GeoJsonSource;)V", "draggingAnnotation", "Lcom/mapbox/maps/plugin/annotation/Annotation;", "gesturesPlugin", "Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "height", "", "interactionListener", "getInteractionListener", "interactionsCancelableSet", "", "Lcom/mapbox/common/Cancelable;", "layer", "getLayer$plugin_annotation_release", "setLayer$plugin_annotation_release", "layerFilter", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getLayerFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "setLayerFilter", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "longClickListeners", "getLongClickListeners", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapFeatureQueryDelegate", "Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "mapInteractionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "getMapInteractionDelegate$annotations", "()V", "mapMoveDetector", "Lcom/mapbox/android/gestures/MoveGestureDetector;", "kotlin.jvm.PlatformType", "source", "getSource$plugin_annotation_release", "setSource$plugin_annotation_release", "width", "addIconToStyle", "", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "", "addStyleImage", "imageId", "bitmap", "Landroid/graphics/Bitmap;", "addStyleImage$plugin_annotation_release", "convertAnnotationsToFeatures", "Lcom/mapbox/geojson/Feature;", "create", "option", "(Lcom/mapbox/maps/plugin/annotation/AnnotationOptions;)Lcom/mapbox/maps/plugin/annotation/Annotation;", "options", "createClusterLevelLayer", "Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;", "level", "colorLevels", "Lkotlin/Pair;", "annotationSourceOptions", "Lcom/mapbox/maps/plugin/annotation/AnnotationSourceOptions;", "createClusterTextLayer", "Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;", "createDragSource", "dragSourceId", "createSource", "delete", "annotation", "(Lcom/mapbox/maps/plugin/annotation/Annotation;)V", "deleteAll", "drag", "enableDataDrivenProperty", "property", "getAnnotationIdKey", "initClusterLayers", "initClusterListener", "clusterLayerId", "onDestroy", "onSizeChanged", "queryMapForFeatures", "point", "Lcom/mapbox/geojson/Point;", "(Lcom/mapbox/geojson/Point;)Lcom/mapbox/maps/plugin/annotation/Annotation;", "screenCoordinate", "Lcom/mapbox/maps/ScreenCoordinate;", "(Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/maps/plugin/annotation/Annotation;", "registerInteractions", "selectAnnotation", "setDataDrivenPropertyIsUsed", "setLayerProperty", "value", "Lcom/mapbox/bindgen/Value;", "propertyName", "startDragging", "(Lcom/mapbox/maps/plugin/annotation/Annotation;)Z", "stopDragging", "unregisterInteractions", "update", "updateDragSource", "updateSource", "applyPropertyDefaults", "isCluster", "Lcom/mapbox/maps/interactions/FeaturesetFeature;", "Lcom/mapbox/maps/interactions/FeatureState;", "Companion", "MapClick", "MapLongClick", "MapMove", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class AnnotationManagerImpl<G extends Geometry, T extends Annotation<G>, S extends AnnotationOptions<G, T>, D extends OnAnnotationDragListener<? extends T>, U extends OnAnnotationClickListener<T>, V extends OnAnnotationLongClickListener<T>, I extends OnAnnotationInteractionListener<T>, L extends Layer> implements AnnotationManager<G, T, S, D, U, V, I> {

    @Deprecated
    private static final long QUERY_WAIT_TIME = 2;

    @Deprecated
    private static final String TAG = "AnnotationManagerImpl";
    private final LinkedHashMap<String, T> annotationMap;
    private final List<String> associatedLayers;
    private final List<String> associatedSources;
    private final List<U> clickListeners;
    private final JsonObject dataDrivenPropertyDefaultValues;
    private final Map<String, Boolean> dataDrivenPropertyUsageMap;
    private final MapDelegateProvider delegateProvider;
    private final LinkedHashMap<String, T> dragAnnotationMap;
    private L dragLayer;
    private final List<D> dragListeners;
    private GeoJsonSource dragSource;
    private T draggingAnnotation;
    private GesturesPlugin gesturesPlugin;
    private int height;
    private final List<I> interactionListener;
    private final Set<Cancelable> interactionsCancelableSet;
    private L layer;
    private final List<V> longClickListeners;
    private final MapCameraManagerDelegate mapCameraManagerDelegate;
    private final MapFeatureQueryDelegate mapFeatureQueryDelegate;
    private final MapInteractionDelegate mapInteractionDelegate;
    private final MoveGestureDetector mapMoveDetector;
    private GeoJsonSource source;
    private int width;
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String POINT_COUNT = "point_count";

    @Deprecated
    private static final Expression DEFAULT_TEXT_FIELD = Expression.INSTANCE.get(POINT_COUNT);

    private static void getMapInteractionDelegate$annotations() {
    }

    public abstract String getAnnotationIdKey();

    public abstract Expression getLayerFilter();

    protected abstract void setDataDrivenPropertyIsUsed(String property);

    public abstract void setLayerFilter(Expression expression);

    public AnnotationManagerImpl(MapDelegateProvider delegateProvider, AnnotationConfig annotationConfig, long j, String typeName, Function2<? super String, ? super String, ? extends L> createLayerFunction) throws InvalidPluginConfigurationException {
        String belowLayerId;
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        Intrinsics.checkNotNullParameter(typeName, "typeName");
        Intrinsics.checkNotNullParameter(createLayerFunction, "createLayerFunction");
        this.delegateProvider = delegateProvider;
        this.dataDrivenPropertyUsageMap = new LinkedHashMap();
        this.mapCameraManagerDelegate = delegateProvider.getMapCameraManagerDelegate();
        this.mapFeatureQueryDelegate = delegateProvider.getMapFeatureQueryDelegate();
        this.mapInteractionDelegate = delegateProvider.getMapInteractionDelegate();
        this.annotationMap = new LinkedHashMap<>();
        this.dragAnnotationMap = new LinkedHashMap<>();
        this.dataDrivenPropertyDefaultValues = new JsonObject();
        this.interactionsCancelableSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        this.associatedLayers = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.associatedSources = arrayList2;
        GesturesPlugin gesturesPlugin = (GesturesPlugin) delegateProvider.getMapPluginProviderDelegate().getPlugin(Plugin.MAPBOX_GESTURES_PLUGIN_ID);
        if (gesturesPlugin == null) {
            throw new InvalidPluginConfigurationException("Can't look up an instance of plugin, is it available on the clazz path and loaded through the map?");
        }
        this.gesturesPlugin = gesturesPlugin;
        this.mapMoveDetector = gesturesPlugin.getGesturesManager().getMoveGestureDetector();
        this.dragListeners = new ArrayList();
        this.clickListeners = new ArrayList();
        this.longClickListeners = new ArrayList();
        this.interactionListener = new ArrayList();
        AnnotationSourceOptions annotationSourceOptions = annotationConfig != null ? annotationConfig.getAnnotationSourceOptions() : null;
        MapboxStyleManager mapStyleManagerDelegate = delegateProvider.getMapStyleManagerDelegate();
        String layerId = (annotationConfig == null || (layerId = annotationConfig.getLayerId()) == null) ? "mapbox-android-" + typeName + "-layer-" + j : layerId;
        String sourceId = (annotationConfig == null || (sourceId = annotationConfig.getSourceId()) == null) ? "mapbox-android-" + typeName + "-source-" + j : sourceId;
        this.source = createSource(sourceId, annotationSourceOptions);
        this.layer = createLayerFunction.invoke(layerId, sourceId);
        String str = "mapbox-android-" + typeName + "-dragsource-" + j;
        this.dragSource = createDragSource(str, annotationSourceOptions);
        this.dragLayer = createLayerFunction.invoke("mapbox-android-" + typeName + "-draglayer-" + j, str);
        if (!mapStyleManagerDelegate.styleSourceExists(this.source.getSourceId())) {
            SourceUtils.addSource(mapStyleManagerDelegate, this.source);
            arrayList2.add(this.source.getSourceId());
        }
        if (!mapStyleManagerDelegate.styleLayerExists(this.layer.getLayerId())) {
            if (annotationConfig != null && (belowLayerId = annotationConfig.getBelowLayerId()) != null) {
                if (mapStyleManagerDelegate.styleLayerExists(belowLayerId)) {
                    LayerUtils.addPersistentLayer(mapStyleManagerDelegate, this.layer, new LayerPosition(null, annotationConfig.getBelowLayerId(), null));
                } else {
                    MapboxLogger.logW(TAG, "Layer with id " + belowLayerId + " doesn't exist in style " + mapStyleManagerDelegate.getStyleURI() + ", will add annotation layer directly.");
                    LayerUtils.addPersistentLayer$default(mapStyleManagerDelegate, this.layer, null, 2, null);
                }
            } else {
                LayerUtils.addPersistentLayer$default(mapStyleManagerDelegate, this.layer, null, 2, null);
            }
            arrayList.add(this.layer.getLayerId());
        }
        if (!mapStyleManagerDelegate.styleSourceExists(this.dragSource.getSourceId())) {
            SourceUtils.addSource(mapStyleManagerDelegate, this.dragSource);
            arrayList2.add(this.dragSource.getSourceId());
        }
        if (!mapStyleManagerDelegate.styleLayerExists(this.dragLayer.getLayerId())) {
            LayerUtils.addPersistentLayer(mapStyleManagerDelegate, this.dragLayer, new LayerPosition(this.layer.getLayerId(), null, null));
            arrayList.add(this.dragLayer.getLayerId());
        }
        L l = this.layer;
        if ((l instanceof SymbolLayer) || (l instanceof CircleLayer)) {
            initClusterLayers(mapStyleManagerDelegate, annotationSourceOptions, typeName, j);
        }
        updateSource();
        registerInteractions();
    }

    @Override
    public boolean addClickListener(U u) {
        return AnnotationManager.DefaultImpls.addClickListener(this, u);
    }

    @Override
    public boolean addDragListener(D d) {
        return AnnotationManager.DefaultImpls.addDragListener(this, d);
    }

    @Override
    public boolean addInteractionListener(I i) {
        return AnnotationManager.DefaultImpls.addInteractionListener(this, i);
    }

    @Override
    public boolean addLongClickListener(V v) {
        return AnnotationManager.DefaultImpls.addLongClickListener(this, v);
    }

    @Override
    public boolean removeClickListener(U u) {
        return AnnotationManager.DefaultImpls.removeClickListener(this, u);
    }

    @Override
    public boolean removeDragListener(D d) {
        return AnnotationManager.DefaultImpls.removeDragListener(this, d);
    }

    @Override
    public boolean removeInteractionListener(I i) {
        return AnnotationManager.DefaultImpls.removeInteractionListener(this, i);
    }

    @Override
    public boolean removeLongClickListener(V v) {
        return AnnotationManager.DefaultImpls.removeLongClickListener(this, v);
    }

    @Override
    public final MapDelegateProvider getDelegateProvider() {
        return this.delegateProvider;
    }

    protected final Map<String, Boolean> getDataDrivenPropertyUsageMap() {
        return this.dataDrivenPropertyUsageMap;
    }

    public final JsonObject getDataDrivenPropertyDefaultValues() {
        return this.dataDrivenPropertyDefaultValues;
    }

    public final List<String> getAssociatedLayers() {
        return this.associatedLayers;
    }

    public final L getLayer$plugin_annotation_release() {
        return this.layer;
    }

    public final void setLayer$plugin_annotation_release(Layer layer) {
        Intrinsics.checkNotNullParameter(layer, "<set-?>");
        this.layer = layer;
    }

    public final GeoJsonSource getSource() {
        return this.source;
    }

    public final void setSource$plugin_annotation_release(GeoJsonSource geoJsonSource) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<set-?>");
        this.source = geoJsonSource;
    }

    public final L getDragLayer$plugin_annotation_release() {
        return this.dragLayer;
    }

    public final void setDragLayer$plugin_annotation_release(Layer layer) {
        Intrinsics.checkNotNullParameter(layer, "<set-?>");
        this.dragLayer = layer;
    }

    public final GeoJsonSource getDragSource() {
        return this.dragSource;
    }

    public final void setDragSource$plugin_annotation_release(GeoJsonSource geoJsonSource) {
        Intrinsics.checkNotNullParameter(geoJsonSource, "<set-?>");
        this.dragSource = geoJsonSource;
    }

    @Override
    public List<T> getAnnotations() {
        Collection<T> collectionValues = this.annotationMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "annotationMap.values");
        Collection<T> collectionValues2 = this.dragAnnotationMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues2, "dragAnnotationMap.values");
        return CollectionsKt.plus((Collection) collectionValues, (Iterable) collectionValues2);
    }

    @Override
    public List<D> getDragListeners() {
        return this.dragListeners;
    }

    @Override
    public List<U> getClickListeners() {
        return this.clickListeners;
    }

    @Override
    public List<V> getLongClickListeners() {
        return this.longClickListeners;
    }

    @Override
    public List<I> getInteractionListener() {
        return this.interactionListener;
    }

    private final void registerInteractions() {
        Function2 function2 = new Function2<String, Map<String, ? extends T>, MapInteraction>(this) {
            final AnnotationManagerImpl<G, T, S, D, U, V, I, L> this$0;

            {
                super(2);
                this.this$0 = this;
            }

            @Override
            public final MapInteraction invoke(String layerId, final Map<String, ? extends T> map) {
                Intrinsics.checkNotNullParameter(layerId, "layerId");
                Intrinsics.checkNotNullParameter(map, "map");
                ClickInteraction.Companion companion = ClickInteraction.INSTANCE;
                final AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl = this.this$0;
                return ClickInteraction.Companion.layer$default(companion, layerId, null, null, new Function2<FeaturesetFeature<FeatureState>, InteractionContext, Boolean>() {
                    {
                        super(2);
                    }

                    @Override
                    public final Boolean invoke(FeaturesetFeature<FeatureState> selectedFeature, InteractionContext interactionContext) {
                        Annotation annotation;
                        Intrinsics.checkNotNullParameter(selectedFeature, "selectedFeature");
                        Intrinsics.checkNotNullParameter(interactionContext, "<anonymous parameter 1>");
                        String strOptString = selectedFeature.getProperties().optString(annotationManagerImpl.getAnnotationIdKey(), "");
                        boolean z = false;
                        if (!Intrinsics.areEqual(strOptString, "") && (annotation = (Annotation) map.get(strOptString)) != null) {
                            AnnotationManager annotationManager = annotationManagerImpl;
                            List clickListeners = annotationManager.getClickListeners();
                            if (!(clickListeners instanceof Collection) || !clickListeners.isEmpty()) {
                                Iterator<T> it = clickListeners.iterator();
                                while (it.hasNext()) {
                                    if (((OnAnnotationClickListener) it.next()).onAnnotationClick(annotation)) {
                                        z = true;
                                        break;
                                    }
                                }
                            }
                            annotationManager.selectAnnotation(annotation);
                            return Boolean.valueOf(z);
                        }
                        return false;
                    }
                }, 6, null);
            }
        };
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction((MapInteraction) function2.invoke(this.layer.getLayerId(), this.annotationMap)));
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction((MapInteraction) function2.invoke(this.dragLayer.getLayerId(), this.dragAnnotationMap)));
        Function2 function3 = new Function2<String, Map<String, ? extends T>, MapInteraction>(this) {
            final AnnotationManagerImpl<G, T, S, D, U, V, I, L> this$0;

            {
                super(2);
                this.this$0 = this;
            }

            @Override
            public final MapInteraction invoke(String layerId, final Map<String, ? extends T> map) {
                Intrinsics.checkNotNullParameter(layerId, "layerId");
                Intrinsics.checkNotNullParameter(map, "map");
                LongClickInteraction.Companion companion = LongClickInteraction.INSTANCE;
                final AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl = this.this$0;
                return LongClickInteraction.Companion.layer$default(companion, layerId, null, null, new Function2<FeaturesetFeature<FeatureState>, InteractionContext, Boolean>() {
                    {
                        super(2);
                    }

                    @Override
                    public final Boolean invoke(FeaturesetFeature<FeatureState> selectedFeature, InteractionContext interactionContext) {
                        Annotation annotation;
                        Intrinsics.checkNotNullParameter(selectedFeature, "selectedFeature");
                        Intrinsics.checkNotNullParameter(interactionContext, "<anonymous parameter 1>");
                        String strOptString = selectedFeature.getProperties().optString(annotationManagerImpl.getAnnotationIdKey(), "");
                        boolean z = false;
                        if (!Intrinsics.areEqual(strOptString, "") && (annotation = (Annotation) map.get(strOptString)) != null) {
                            List longClickListeners = annotationManagerImpl.getLongClickListeners();
                            if (!(longClickListeners instanceof Collection) || !longClickListeners.isEmpty()) {
                                Iterator<T> it = longClickListeners.iterator();
                                while (it.hasNext()) {
                                    if (((OnAnnotationLongClickListener) it.next()).onAnnotationLongClick(annotation)) {
                                        z = true;
                                        break;
                                    }
                                }
                            }
                            return Boolean.valueOf(z);
                        }
                        return false;
                    }
                }, 6, null);
            }
        };
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction((MapInteraction) function3.invoke(this.layer.getLayerId(), this.annotationMap)));
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction((MapInteraction) function3.invoke(this.dragLayer.getLayerId(), this.dragAnnotationMap)));
        Function2 function4 = new Function2<String, Map<String, ? extends T>, MapInteraction>(this) {
            final AnnotationManagerImpl<G, T, S, D, U, V, I, L> this$0;

            {
                super(2);
                this.this$0 = this;
            }

            @Override
            public final MapInteraction invoke(String layerId, final Map<String, ? extends T> map) {
                Intrinsics.checkNotNullParameter(layerId, "layerId");
                Intrinsics.checkNotNullParameter(map, "map");
                DragInteraction.Companion companion = DragInteraction.INSTANCE;
                final AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl = this.this$0;
                Function2<FeaturesetFeature<FeatureState>, InteractionContext, Boolean> function5 = new Function2<FeaturesetFeature<FeatureState>, InteractionContext, Boolean>() {
                    {
                        super(2);
                    }

                    @Override
                    public final Boolean invoke(FeaturesetFeature<FeatureState> selectedFeature, InteractionContext interactionContext) {
                        Annotation annotation;
                        Intrinsics.checkNotNullParameter(selectedFeature, "selectedFeature");
                        Intrinsics.checkNotNullParameter(interactionContext, "<anonymous parameter 1>");
                        String strOptString = selectedFeature.getProperties().optString(annotationManagerImpl.getAnnotationIdKey(), "");
                        if (!Intrinsics.areEqual(strOptString, "") && (annotation = (Annotation) map.get(strOptString)) != null) {
                            return Boolean.valueOf(annotationManagerImpl.startDragging(annotation));
                        }
                        return false;
                    }
                };
                final AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl2 = this.this$0;
                Function1<InteractionContext, Unit> function1 = new Function1<InteractionContext, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(InteractionContext interactionContext) {
                        invoke2(interactionContext);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(InteractionContext it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        annotationManagerImpl2.drag();
                    }
                };
                final AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl3 = this.this$0;
                return DragInteraction.Companion.layer$default(companion, layerId, null, function5, function1, new Function1<InteractionContext, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(InteractionContext interactionContext) {
                        invoke2(interactionContext);
                        return Unit.INSTANCE;
                    }

                    public final void invoke2(InteractionContext it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        annotationManagerImpl3.stopDragging();
                    }
                }, 2, null);
            }
        };
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction((MapInteraction) function4.invoke(this.layer.getLayerId(), this.annotationMap)));
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction((MapInteraction) function4.invoke(this.dragLayer.getLayerId(), this.dragAnnotationMap)));
    }

    public final void drag() {
        T t = this.draggingAnnotation;
        if (t != null) {
            ScreenCoordinate screenCoordinate = new ScreenCoordinate(this.mapMoveDetector.getFocalPoint().x, this.mapMoveDetector.getFocalPoint().y);
            if (this.mapMoveDetector.getPointersCount() > 1 || !t.getIsDraggable()) {
                stopDragging();
                this.mapInteractionDelegate.dispatch(new PlatformEventInfo(PlatformEventType.DRAG_END, screenCoordinate));
                return;
            }
            MoveDistancesObject moveObject = this.mapMoveDetector.getMoveObject(0);
            PointF pointF = new PointF(moveObject.getCurrentX(), moveObject.getCurrentY());
            if (pointF.x < 0.0f || pointF.y < 0.0f || pointF.x > this.width || pointF.y > this.height) {
                stopDragging();
                this.mapInteractionDelegate.dispatch(new PlatformEventInfo(PlatformEventType.DRAG_END, screenCoordinate));
            }
            if (this.annotationMap.containsKey(t.getId())) {
                this.annotationMap.remove(t.getId());
                this.dragAnnotationMap.put(t.getId(), t);
                updateSource();
                updateDragSource();
            }
            MapCameraManagerDelegate mapCameraManagerDelegate = this.delegateProvider.getMapCameraManagerDelegate();
            Intrinsics.checkNotNullExpressionValue(moveObject, "moveObject");
            Geometry offsetGeometry = t.getOffsetGeometry(mapCameraManagerDelegate, moveObject);
            if (offsetGeometry != null) {
                t.setGeometry(offsetGeometry);
                updateDragSource();
                Iterator<T> it = getDragListeners().iterator();
                while (it.hasNext()) {
                    ((OnAnnotationDragListener) it.next()).onAnnotationDrag(t);
                }
            }
        }
    }

    private final void unregisterInteractions() {
        Iterator<T> it = this.interactionsCancelableSet.iterator();
        while (it.hasNext()) {
            ((Cancelable) it.next()).cancel();
        }
        this.interactionsCancelableSet.clear();
    }

    private final GeoJsonSource createSource(String sourceId, final AnnotationSourceOptions annotationSourceOptions) {
        return GeoJsonSourceKt.geoJsonSource(sourceId, new Function1<GeoJsonSource.Builder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GeoJsonSource.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            public final void invoke2(GeoJsonSource.Builder geoJsonSource) {
                Intrinsics.checkNotNullParameter(geoJsonSource, "$this$geoJsonSource");
                AnnotationSourceOptions annotationSourceOptions2 = annotationSourceOptions;
                if (annotationSourceOptions2 != null) {
                    Long maxZoom = annotationSourceOptions2.getMaxZoom();
                    if (maxZoom != null) {
                        geoJsonSource.maxzoom(maxZoom.longValue());
                    }
                    Long buffer = annotationSourceOptions2.getBuffer();
                    if (buffer != null) {
                        geoJsonSource.buffer(buffer.longValue());
                    }
                    Boolean lineMetrics = annotationSourceOptions2.getLineMetrics();
                    if (lineMetrics != null) {
                        geoJsonSource.lineMetrics(lineMetrics.booleanValue());
                    }
                    Double tolerance = annotationSourceOptions2.getTolerance();
                    if (tolerance != null) {
                        geoJsonSource.tolerance(tolerance.doubleValue());
                    }
                    ClusterOptions clusterOptions = annotationSourceOptions2.getClusterOptions();
                    if (clusterOptions != null) {
                        geoJsonSource.cluster(clusterOptions.getCluster());
                        geoJsonSource.clusterMaxZoom(clusterOptions.getClusterMaxZoom());
                        geoJsonSource.clusterMinPoints(clusterOptions.getClusterMinPoints());
                        geoJsonSource.clusterRadius(clusterOptions.getClusterRadius());
                        HashMap<String, Object> clusterProperties = clusterOptions.getClusterProperties();
                        if (clusterProperties != null) {
                            geoJsonSource.clusterProperties(clusterProperties);
                        }
                    }
                }
            }
        });
    }

    private final GeoJsonSource createDragSource(String dragSourceId, final AnnotationSourceOptions annotationSourceOptions) {
        return GeoJsonSourceKt.geoJsonSource(dragSourceId, new Function1<GeoJsonSource.Builder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GeoJsonSource.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            public final void invoke2(GeoJsonSource.Builder geoJsonSource) {
                Intrinsics.checkNotNullParameter(geoJsonSource, "$this$geoJsonSource");
                AnnotationSourceOptions annotationSourceOptions2 = annotationSourceOptions;
                if (annotationSourceOptions2 != null) {
                    Long maxZoom = annotationSourceOptions2.getMaxZoom();
                    if (maxZoom != null) {
                        geoJsonSource.maxzoom(maxZoom.longValue());
                    }
                    Long buffer = annotationSourceOptions2.getBuffer();
                    if (buffer != null) {
                        geoJsonSource.buffer(buffer.longValue());
                    }
                    Boolean lineMetrics = annotationSourceOptions2.getLineMetrics();
                    if (lineMetrics != null) {
                        geoJsonSource.lineMetrics(lineMetrics.booleanValue());
                    }
                    Double tolerance = annotationSourceOptions2.getTolerance();
                    if (tolerance != null) {
                        geoJsonSource.tolerance(tolerance.doubleValue());
                    }
                }
            }
        });
    }

    private final void initClusterLayers(MapboxStyleManager style, AnnotationSourceOptions annotationSourceOptions, String typeName, long id) {
        ClusterOptions clusterOptions;
        if (annotationSourceOptions == null || (clusterOptions = annotationSourceOptions.getClusterOptions()) == null) {
            return;
        }
        int i = 0;
        for (Object obj : clusterOptions.getColorLevels()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            CircleLayer circleLayerCreateClusterLevelLayer = createClusterLevelLayer(i, clusterOptions.getColorLevels(), annotationSourceOptions, typeName, id);
            if (!style.styleLayerExists(circleLayerCreateClusterLevelLayer.getLayerId())) {
                LayerUtils.addPersistentLayer(style, circleLayerCreateClusterLevelLayer, new LayerPosition((String) CollectionsKt.lastOrNull((List) this.associatedLayers), null, null));
                this.associatedLayers.add(circleLayerCreateClusterLevelLayer.getLayerId());
                initClusterListener(circleLayerCreateClusterLevelLayer.getLayerId());
            }
            i = i2;
        }
        SymbolLayer symbolLayerCreateClusterTextLayer = createClusterTextLayer(annotationSourceOptions, typeName, id);
        if (style.styleLayerExists(symbolLayerCreateClusterTextLayer.getLayerId())) {
            return;
        }
        LayerUtils.addPersistentLayer(style, symbolLayerCreateClusterTextLayer, new LayerPosition((String) CollectionsKt.lastOrNull((List) this.associatedLayers), null, null));
        this.associatedLayers.add(symbolLayerCreateClusterTextLayer.getLayerId());
    }

    private final void initClusterListener(String clusterLayerId) {
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction(ClickInteraction.Companion.layer$default(ClickInteraction.INSTANCE, clusterLayerId, null, null, new Function2<FeaturesetFeature<FeatureState>, InteractionContext, Boolean>(this) {
            final AnnotationManagerImpl<G, T, S, D, U, V, I, L> this$0;

            {
                super(2);
                this.this$0 = this;
            }

            @Override
            public final Boolean invoke(FeaturesetFeature<FeatureState> selectedFeature, InteractionContext interactionContext) {
                Intrinsics.checkNotNullParameter(selectedFeature, "selectedFeature");
                Intrinsics.checkNotNullParameter(interactionContext, "<anonymous parameter 1>");
                boolean z = false;
                if (this.this$0.isCluster(selectedFeature)) {
                    AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl = this.this$0;
                    if (annotationManagerImpl instanceof ClusterAnnotationManager) {
                        List<OnClusterClickListener> clusterClickListeners = ((ClusterAnnotationManager) annotationManagerImpl).getClusterClickListeners();
                        if (!(clusterClickListeners instanceof Collection) || !clusterClickListeners.isEmpty()) {
                            Iterator<T> it = clusterClickListeners.iterator();
                            while (it.hasNext()) {
                                if (((OnClusterClickListener) it.next()).onClusterClick(new ClusterFeature(selectedFeature))) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        return Boolean.valueOf(z);
                    }
                }
                return false;
            }
        }, 6, null)));
        this.interactionsCancelableSet.add(this.mapInteractionDelegate.addInteraction(LongClickInteraction.Companion.layer$default(LongClickInteraction.INSTANCE, clusterLayerId, null, null, new Function2<FeaturesetFeature<FeatureState>, InteractionContext, Boolean>(this) {
            final AnnotationManagerImpl<G, T, S, D, U, V, I, L> this$0;

            {
                super(2);
                this.this$0 = this;
            }

            @Override
            public final Boolean invoke(FeaturesetFeature<FeatureState> selectedFeature, InteractionContext interactionContext) {
                Intrinsics.checkNotNullParameter(selectedFeature, "selectedFeature");
                Intrinsics.checkNotNullParameter(interactionContext, "<anonymous parameter 1>");
                boolean z = false;
                if (this.this$0.isCluster(selectedFeature)) {
                    AnnotationManagerImpl<G, T, S, D, U, V, I, L> annotationManagerImpl = this.this$0;
                    if (annotationManagerImpl instanceof ClusterAnnotationManager) {
                        List<OnClusterLongClickListener> clusterLongClickListeners = ((ClusterAnnotationManager) annotationManagerImpl).getClusterLongClickListeners();
                        if (!(clusterLongClickListeners instanceof Collection) || !clusterLongClickListeners.isEmpty()) {
                            Iterator<T> it = clusterLongClickListeners.iterator();
                            while (it.hasNext()) {
                                if (((OnClusterLongClickListener) it.next()).onClusterLongClick(new ClusterFeature(selectedFeature))) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        return Boolean.valueOf(z);
                    }
                }
                return false;
            }
        }, 6, null)));
    }

    private final CircleLayer createClusterLevelLayer(final int level, final List<Pair<Integer, Integer>> colorLevels, final AnnotationSourceOptions annotationSourceOptions, String typeName, long id) {
        return CircleLayerKt.circleLayer("mapbox-android-" + typeName + "-cluster-circle-layer-" + level + CoreConstants.DASH_CHAR + id, this.source.getSourceId(), new Function1<CircleLayerDsl, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(CircleLayerDsl circleLayerDsl) {
                invoke2(circleLayerDsl);
                return Unit.INSTANCE;
            }

            public final void invoke2(CircleLayerDsl circleLayer) {
                Expression expressionAll;
                ClusterOptions clusterOptions;
                Intrinsics.checkNotNullParameter(circleLayer, "$this$circleLayer");
                circleLayer.circleColor(colorLevels.get(level).getSecond().intValue());
                AnnotationSourceOptions annotationSourceOptions2 = annotationSourceOptions;
                if (annotationSourceOptions2 != null && (clusterOptions = annotationSourceOptions2.getClusterOptions()) != null) {
                    if (clusterOptions.getCircleRadiusExpression() == null) {
                        circleLayer.circleRadius(clusterOptions.getCircleRadius());
                    } else {
                        Value circleRadiusExpression = clusterOptions.getCircleRadiusExpression();
                        Intrinsics.checkNotNull(circleRadiusExpression, "null cannot be cast to non-null type com.mapbox.maps.extension.style.expressions.generated.Expression");
                        circleLayer.circleRadius((Expression) circleRadiusExpression);
                    }
                }
                Expression number = Expression.INSTANCE.toNumber(Expression.INSTANCE.get(AnnotationManagerImpl.POINT_COUNT));
                if (level == 0) {
                    expressionAll = Expression.INSTANCE.all(Expression.INSTANCE.has(AnnotationManagerImpl.POINT_COUNT), Expression.INSTANCE.gte(number, ExpressionDslKt.literal(colorLevels.get(level).getFirst().intValue())));
                } else {
                    expressionAll = Expression.INSTANCE.all(Expression.INSTANCE.has(AnnotationManagerImpl.POINT_COUNT), Expression.INSTANCE.gt(number, ExpressionDslKt.literal(colorLevels.get(level).getFirst().intValue())), Expression.INSTANCE.lt(number, ExpressionDslKt.literal(colorLevels.get(level - 1).getFirst().intValue())));
                }
                circleLayer.filter(expressionAll);
            }
        });
    }

    private final SymbolLayer createClusterTextLayer(final AnnotationSourceOptions annotationSourceOptions, String typeName, long id) {
        return SymbolLayerKt.symbolLayer("mapbox-android-" + typeName + "-cluster-text-layer-" + id, this.source.getSourceId(), new Function1<SymbolLayerDsl, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(SymbolLayerDsl symbolLayerDsl) {
                invoke2(symbolLayerDsl);
                return Unit.INSTANCE;
            }

            public final void invoke2(SymbolLayerDsl symbolLayer) {
                ClusterOptions clusterOptions;
                Expression expression;
                Intrinsics.checkNotNullParameter(symbolLayer, "$this$symbolLayer");
                AnnotationSourceOptions annotationSourceOptions2 = annotationSourceOptions;
                if (annotationSourceOptions2 == null || (clusterOptions = annotationSourceOptions2.getClusterOptions()) == null) {
                    return;
                }
                if (clusterOptions.getTextField() == null) {
                    expression = AnnotationManagerImpl.DEFAULT_TEXT_FIELD;
                } else {
                    Value textField = clusterOptions.getTextField();
                    Intrinsics.checkNotNull(textField, "null cannot be cast to non-null type com.mapbox.maps.extension.style.expressions.generated.Expression");
                    expression = (Expression) textField;
                }
                symbolLayer.textField(expression);
                if (clusterOptions.getTextSizeExpression() == null) {
                    symbolLayer.textSize(clusterOptions.getTextSize());
                } else {
                    Value textSizeExpression = clusterOptions.getTextSizeExpression();
                    Intrinsics.checkNotNull(textSizeExpression, "null cannot be cast to non-null type com.mapbox.maps.extension.style.expressions.generated.Expression");
                    symbolLayer.textSize((Expression) textSizeExpression);
                }
                if (clusterOptions.getTextColorExpression() == null) {
                    symbolLayer.textColor(clusterOptions.getTextColor());
                } else {
                    Value textColorExpression = clusterOptions.getTextColorExpression();
                    Intrinsics.checkNotNull(textColorExpression, "null cannot be cast to non-null type com.mapbox.maps.extension.style.expressions.generated.Expression");
                    symbolLayer.textColor((Expression) textColorExpression);
                }
                symbolLayer.textIgnorePlacement(true);
                symbolLayer.textAllowOverlap(true);
            }
        });
    }

    @Override
    public T create(S option) {
        Intrinsics.checkNotNullParameter(option, "option");
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        T t = (T) option.build(string, this);
        this.annotationMap.put(t.getId(), t);
        updateSource();
        return t;
    }

    @Override
    public List<T> create(List<? extends S> options) {
        Intrinsics.checkNotNullParameter(options, "options");
        List<? extends S> list = options;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            AnnotationOptions annotationOptions = (AnnotationOptions) it.next();
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            Annotation annotationBuild = annotationOptions.build(string, this);
            this.annotationMap.put(annotationBuild.getId(), annotationBuild);
            arrayList.add(annotationBuild);
        }
        ArrayList arrayList2 = arrayList;
        updateSource();
        return arrayList2;
    }

    @Override
    public void delete(T annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        if (this.annotationMap.remove(annotation.getId()) != null) {
            updateSource();
        } else if (this.dragAnnotationMap.remove(annotation.getId()) != null) {
            updateDragSource();
        } else {
            MapboxLogger.logE(TAG, "Can't delete annotation: " + annotation + ", the annotation isn't an active annotation.");
        }
    }

    @Override
    public void delete(List<? extends T> annotations) {
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Iterator<T> it = annotations.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            Annotation annotation = (Annotation) it.next();
            if (this.annotationMap.remove(annotation.getId()) != null) {
                z = true;
            } else if (this.dragAnnotationMap.remove(annotation.getId()) != null) {
                z2 = true;
            }
        }
        if (z) {
            updateSource();
        }
        if (z2) {
            updateDragSource();
        }
    }

    @Override
    public void deleteAll() {
        if (!this.annotationMap.isEmpty()) {
            this.annotationMap.clear();
            updateSource();
        }
        if (this.dragAnnotationMap.isEmpty()) {
            return;
        }
        this.dragAnnotationMap.clear();
        updateDragSource();
    }

    private final void updateDragSource() {
        MapboxStyleManager mapStyleManagerDelegate = this.delegateProvider.getMapStyleManagerDelegate();
        if (!mapStyleManagerDelegate.styleSourceExists(this.dragSource.getSourceId()) || !mapStyleManagerDelegate.styleLayerExists(this.dragLayer.getLayerId())) {
            MapboxLogger.logE(TAG, "Can't update dragSource: drag source or layer has not been added to style.");
            return;
        }
        Collection<? extends T> collectionValues = this.dragAnnotationMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "dragAnnotationMap.values");
        addIconToStyle(mapStyleManagerDelegate, collectionValues);
        Collection<? extends T> collectionValues2 = this.dragAnnotationMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues2, "dragAnnotationMap.values");
        List<Feature> listConvertAnnotationsToFeatures = convertAnnotationsToFeatures(collectionValues2);
        GeoJsonSource geoJsonSource = this.dragSource;
        FeatureCollection featureCollectionFromFeatures = FeatureCollection.fromFeatures(listConvertAnnotationsToFeatures);
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromFeatures, "fromFeatures(features)");
        GeoJsonSource.featureCollection$default(geoJsonSource, featureCollectionFromFeatures, null, 2, null);
    }

    private final void updateSource() {
        MapboxStyleManager mapStyleManagerDelegate = this.delegateProvider.getMapStyleManagerDelegate();
        if (!mapStyleManagerDelegate.styleSourceExists(this.source.getSourceId()) || !mapStyleManagerDelegate.styleLayerExists(this.layer.getLayerId())) {
            MapboxLogger.logE(TAG, "Can't update source: source or layer has not been added to style.");
            return;
        }
        Collection<? extends T> collectionValues = this.annotationMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "annotationMap.values");
        addIconToStyle(mapStyleManagerDelegate, collectionValues);
        Collection<? extends T> collectionValues2 = this.annotationMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues2, "annotationMap.values");
        List<Feature> listConvertAnnotationsToFeatures = convertAnnotationsToFeatures(collectionValues2);
        GeoJsonSource geoJsonSource = this.source;
        FeatureCollection featureCollectionFromFeatures = FeatureCollection.fromFeatures(listConvertAnnotationsToFeatures);
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromFeatures, "fromFeatures(features)");
        GeoJsonSource.featureCollection$default(geoJsonSource, featureCollectionFromFeatures, null, 2, null);
    }

    public final void addStyleImage$plugin_annotation_release(String imageId, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        ImageUtils.addImage(this.delegateProvider.getMapStyleManagerDelegate(), ImageUtils.image$default(imageId, bitmap, (Function1) null, 4, (Object) null));
    }

    private final void addIconToStyle(MapboxStyleManager style, Collection<? extends T> annotations) {
        String iconImage;
        Bitmap iconImageBitmap;
        Iterator<T> it = annotations.iterator();
        while (it.hasNext()) {
            Annotation annotation = (Annotation) it.next();
            PointAnnotation pointAnnotation = annotation instanceof PointAnnotation ? (PointAnnotation) annotation : null;
            if (pointAnnotation != null && (iconImage = pointAnnotation.getIconImage()) != null && StringsKt.startsWith$default(iconImage, PointAnnotation.ICON_DEFAULT_NAME_PREFIX, false, 2, (Object) null) && !style.hasStyleImage(iconImage) && (iconImageBitmap = pointAnnotation.getIconImageBitmap()) != null) {
                ImageUtils.addImage(style, ImageUtils.image$default(iconImage, iconImageBitmap, (Function1) null, 4, (Object) null));
            }
        }
    }

    private final JsonObject applyPropertyDefaults(JsonObject jsonObject) {
        Set<Map.Entry<String, JsonElement>> setEntrySet = this.dataDrivenPropertyDefaultValues.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "dataDrivenPropertyDefaultValues.entrySet()");
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!jsonObject.has((String) entry.getKey())) {
                jsonObject.add((String) entry.getKey(), (JsonElement) entry.getValue());
            }
        }
        return jsonObject;
    }

    private final List<Feature> convertAnnotationsToFeatures(Collection<? extends T> annotations) {
        Collection<? extends T> collection = annotations;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            Annotation annotation = (Annotation) it.next();
            annotation.setUsedDataDrivenProperties();
            arrayList.add(Feature.fromGeometry(annotation.getGeometry(), applyPropertyDefaults(annotation.getJsonObjectCopy()), annotation.getId()));
        }
        return arrayList;
    }

    @Override
    public void update(T annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        if (this.annotationMap.containsKey(annotation.getId())) {
            this.annotationMap.put(annotation.getId(), annotation);
            updateSource();
        } else if (this.dragAnnotationMap.containsKey(annotation.getId())) {
            this.dragAnnotationMap.put(annotation.getId(), annotation);
            updateDragSource();
        } else {
            MapboxLogger.logE(TAG, "Can't update annotation: " + annotation + ", the annotation isn't an active annotation.");
        }
    }

    @Override
    public void update(List<? extends T> annotations) {
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Iterator<T> it = annotations.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            Annotation annotation = (Annotation) it.next();
            if (this.annotationMap.containsKey(annotation.getId())) {
                this.annotationMap.put(annotation.getId(), annotation);
                z = true;
            } else if (this.dragAnnotationMap.containsKey(annotation.getId())) {
                this.dragAnnotationMap.put(annotation.getId(), annotation);
                z2 = true;
            } else {
                MapboxLogger.logE(TAG, "Can't update annotation: " + annotation + ", the annotation isn't an active annotation.");
            }
        }
        if (z) {
            updateSource();
        }
        if (z2) {
            updateDragSource();
        }
    }

    @Override
    public void onDestroy() {
        MapboxStyleManager mapStyleManagerDelegate = this.delegateProvider.getMapStyleManagerDelegate();
        for (String str : this.associatedLayers) {
            if (mapStyleManagerDelegate.styleLayerExists(str)) {
                mapStyleManagerDelegate.removeStyleLayer(str);
            }
        }
        for (String str2 : this.associatedSources) {
            if (mapStyleManagerDelegate.styleSourceExists(str2)) {
                mapStyleManagerDelegate.removeStyleSource(str2);
            }
        }
        unregisterInteractions();
        this.annotationMap.clear();
        this.dragAnnotationMap.clear();
        getDragListeners().clear();
        getClickListeners().clear();
        getLongClickListeners().clear();
        getInteractionListener().clear();
        if (this instanceof ClusterAnnotationManager) {
            ClusterAnnotationManager clusterAnnotationManager = (ClusterAnnotationManager) this;
            clusterAnnotationManager.getClusterClickListeners().clear();
            clusterAnnotationManager.getClusterLongClickListeners().clear();
        }
    }

    @Override
    public void selectAnnotation(T annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        if (this.annotationMap.containsKey(annotation.getId())) {
            annotation.setSelected(!annotation.getIsSelected());
            this.annotationMap.put(annotation.getId(), annotation);
            for (I i : getInteractionListener()) {
                if (annotation.getIsSelected()) {
                    i.onSelectAnnotation(annotation);
                } else {
                    i.onDeselectAnnotation(annotation);
                }
            }
            return;
        }
        if (this.dragAnnotationMap.containsKey(annotation.getId())) {
            annotation.setSelected(!annotation.getIsSelected());
            this.dragAnnotationMap.put(annotation.getId(), annotation);
            for (I i2 : getInteractionListener()) {
                if (annotation.getIsSelected()) {
                    i2.onSelectAnnotation(annotation);
                } else {
                    i2.onDeselectAnnotation(annotation);
                }
            }
            return;
        }
        MapboxLogger.logE(TAG, "Can't select annotation: " + annotation + ", the annotation isn't an active annotation.");
    }

    public final boolean startDragging(T annotation) {
        if (!annotation.getIsDraggable()) {
            return false;
        }
        Iterator<T> it = getDragListeners().iterator();
        while (it.hasNext()) {
            ((OnAnnotationDragListener) it.next()).onAnnotationDragStarted(annotation);
        }
        this.draggingAnnotation = annotation;
        return true;
    }

    public final void stopDragging() {
        T t = this.draggingAnnotation;
        if (t != null) {
            Iterator<T> it = getDragListeners().iterator();
            while (it.hasNext()) {
                ((OnAnnotationDragListener) it.next()).onAnnotationDragFinished(t);
            }
            this.draggingAnnotation = null;
        }
    }

    @Override
    public void onSizeChanged(int width, int height) {
        this.width = width;
        this.height = height;
    }

    @Override
    public void enableDataDrivenProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        if (Intrinsics.areEqual((Object) this.dataDrivenPropertyUsageMap.get(property), (Object) false)) {
            this.dataDrivenPropertyUsageMap.put(property, true);
            setDataDrivenPropertyIsUsed(property);
        }
    }

    public final T queryMapForFeatures(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        return (T) queryMapForFeatures(this.mapCameraManagerDelegate.pixelForCoordinate(point));
    }

    public final T queryMapForFeatures(final ScreenCoordinate screenCoordinate) throws InterruptedException {
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final ArrayList arrayList = new ArrayList();
        arrayList.add(this.layer.getLayerId());
        arrayList.add(this.dragLayer.getLayerId());
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.mapFeatureQueryDelegate.executeOnRenderThread(new Runnable() {
            @Override
            public final void run() {
                AnnotationManagerImpl.queryMapForFeatures$lambda$28(this.f$0, screenCoordinate, arrayList, countDownLatch, objectRef);
            }
        });
        countDownLatch.await(QUERY_WAIT_TIME, TimeUnit.SECONDS);
        return (T) objectRef.element;
    }

    public static final void queryMapForFeatures$lambda$28(final AnnotationManagerImpl this$0, ScreenCoordinate screenCoordinate, List layerList, final CountDownLatch latch, final Ref.ObjectRef annotation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(screenCoordinate, "$screenCoordinate");
        Intrinsics.checkNotNullParameter(layerList, "$layerList");
        Intrinsics.checkNotNullParameter(latch, "$latch");
        Intrinsics.checkNotNullParameter(annotation, "$annotation");
        this$0.mapFeatureQueryDelegate.queryRenderedFeatures(new RenderedQueryGeometry(screenCoordinate), new RenderedQueryOptions(layerList, ExpressionDslKt.literal(true)), new QueryRenderedFeaturesCallback() {
            @Override
            public final void run(Expected expected) {
                AnnotationManagerImpl.queryMapForFeatures$lambda$28$lambda$27(this.f$0, latch, annotation, expected);
            }
        });
    }

    public static final void queryMapForFeatures$lambda$28$lambda$27(AnnotationManagerImpl this$0, CountDownLatch latch, Ref.ObjectRef annotation, Expected features) {
        QueriedRenderedFeature queriedRenderedFeature;
        QueriedFeature queriedFeature;
        Feature feature;
        JsonElement property;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(latch, "$latch");
        Intrinsics.checkNotNullParameter(annotation, "$annotation");
        Intrinsics.checkNotNullParameter(features, "features");
        List list = (List) features.getValue();
        if (list != null && (queriedRenderedFeature = (QueriedRenderedFeature) CollectionsKt.firstOrNull(list)) != null && (queriedFeature = queriedRenderedFeature.getQueriedFeature()) != null && (feature = queriedFeature.getFeature()) != null && (property = feature.getProperty(this$0.getAnnotationIdKey())) != null) {
            String asString = property.getAsString();
            if (this$0.annotationMap.containsKey(asString)) {
                annotation.element = this$0.annotationMap.get(asString);
            } else if (this$0.dragAnnotationMap.containsKey(asString)) {
                annotation.element = this$0.dragAnnotationMap.get(asString);
            } else {
                MapboxLogger.logE(TAG, "The queried id: " + asString + ", doesn't belong to an active annotation.");
            }
        }
        latch.countDown();
    }

    protected final void setLayerProperty(Value value, String propertyName) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        try {
            MapboxStyleManager mapStyleManagerDelegate = this.delegateProvider.getMapStyleManagerDelegate();
            mapStyleManagerDelegate.setStyleLayerProperty(this.layer.getLayerId(), propertyName, value);
            mapStyleManagerDelegate.setStyleLayerProperty(this.dragLayer.getLayerId(), propertyName, value);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Incorrect property value for " + propertyName + ": " + e.getMessage(), e.getCause());
        }
    }

    @Deprecated(message = "Should not be used, will be removed in the next major version")
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl$MapClick;", "Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;", "(Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;)V", "onMapClick", "", "point", "Lcom/mapbox/geojson/Point;", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class MapClick implements OnMapClickListener {
        @Override
        public boolean onMapClick(Point point) {
            Intrinsics.checkNotNullParameter(point, "point");
            return false;
        }

        public MapClick() {
        }
    }

    @Deprecated(message = "Should not be used, will be removed in the next major version")
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl$MapLongClick;", "Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;", "(Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;)V", "onMapLongClick", "", "point", "Lcom/mapbox/geojson/Point;", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class MapLongClick implements OnMapLongClickListener {
        @Override
        public boolean onMapLongClick(Point point) {
            Intrinsics.checkNotNullParameter(point, "point");
            return false;
        }

        public MapLongClick() {
        }
    }

    @Deprecated(message = "Should not be used, will be removed in the next major version")
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0087\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl$MapMove;", "Lcom/mapbox/maps/plugin/gestures/OnMoveListener;", "(Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;)V", "onMove", "", "detector", "Lcom/mapbox/android/gestures/MoveGestureDetector;", "onMoveBegin", "", "onMoveEnd", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class MapMove implements OnMoveListener {
        @Override
        public boolean onMove(MoveGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            return false;
        }

        @Override
        public void onMoveBegin(MoveGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
        }

        @Override
        public void onMoveEnd(MoveGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
        }

        public MapMove() {
        }
    }

    public final boolean isCluster(FeaturesetFeature<FeatureState> featuresetFeature) {
        return featuresetFeature.getProperties().optBoolean("cluster", false);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl$Companion;", "", "()V", "DEFAULT_TEXT_FIELD", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "POINT_COUNT", "", "QUERY_WAIT_TIME", "", "TAG", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
