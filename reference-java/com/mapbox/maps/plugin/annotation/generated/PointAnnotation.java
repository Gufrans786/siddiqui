package com.mapbox.maps.plugin.annotation.generated;

import android.graphics.Bitmap;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.views.text.ReactBaseTextShadowNode;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.android.gestures.MoveDistancesObject;
import com.mapbox.geojson.Point;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.extension.style.layers.properties.generated.IconAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.IconTextFit;
import com.mapbox.maps.extension.style.layers.properties.generated.TextAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.TextJustify;
import com.mapbox.maps.extension.style.layers.properties.generated.TextTransform;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.plugin.annotation.Annotation;
import com.mapbox.maps.plugin.annotation.AnnotationManager;
import com.mapbox.maps.plugin.annotation.AnnotationType;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0006\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 ½\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002½\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012&\u0010\u0005\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0000\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0002\u0010\nJ\u001f\u0010´\u0001\u001a\u0004\u0018\u00010\u00022\b\u0010µ\u0001\u001a\u00030¶\u00012\b\u0010·\u0001\u001a\u00030¸\u0001H\u0016J\n\u0010¹\u0001\u001a\u00030º\u0001H\u0016J\n\u0010»\u0001\u001a\u00030¼\u0001H\u0016R.\u0010\u0005\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0000\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R*\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00128G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R(\u0010\u0018\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR(\u0010!\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R(\u0010&\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R*\u0010)\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00128G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\u0015\"\u0004\b+\u0010\u0017R(\u0010,\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010\u001a\"\u0004\b.\u0010\u001cR(\u0010/\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010\u001a\"\u0004\b1\u0010\u001cR(\u00102\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b3\u0010#\"\u0004\b4\u0010%R(\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b6\u0010\u001a\"\u0004\b7\u0010\u001cR(\u00109\u001a\u0004\u0018\u0001082\b\u0010\u000b\u001a\u0004\u0018\u000108@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R.\u0010>\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b?\u0010@\u001a\u0004\bA\u0010#\"\u0004\bB\u0010%R(\u0010C\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bD\u0010#\"\u0004\bE\u0010%R4\u0010G\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010F2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010F8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR(\u0010L\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010#\"\u0004\bN\u0010%R(\u0010O\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010#\"\u0004\bQ\u0010%R(\u0010R\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bS\u0010#\"\u0004\bT\u0010%R(\u0010V\u001a\u0004\u0018\u00010U2\b\u0010\u000b\u001a\u0004\u0018\u00010U8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR4\u0010[\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010F2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010F8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\\\u0010I\"\u0004\b]\u0010KR$\u0010^\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR(\u0010c\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bd\u0010#\"\u0004\be\u0010%R(\u0010f\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bg\u0010#\"\u0004\bh\u0010%R(\u0010j\u001a\u0004\u0018\u00010i2\b\u0010\u000b\u001a\u0004\u0018\u00010i8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR*\u0010o\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00128G@FX\u0086\u000e¢\u0006\f\u001a\u0004\bp\u0010\u0015\"\u0004\bq\u0010\u0017R(\u0010r\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bs\u0010\u001a\"\u0004\bt\u0010\u001cR(\u0010u\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bv\u0010\u001a\"\u0004\bw\u0010\u001cR(\u0010x\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\by\u0010#\"\u0004\bz\u0010%R(\u0010{\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b|\u0010\u001a\"\u0004\b}\u0010\u001cR)\u0010~\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\r\u001a\u0004\b\u007f\u0010#\"\u0005\b\u0080\u0001\u0010%R-\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00128G@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0082\u0001\u0010\u0015\"\u0005\b\u0083\u0001\u0010\u0017R+\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0085\u0001\u0010\u001a\"\u0005\b\u0086\u0001\u0010\u001cR+\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0088\u0001\u0010\u001a\"\u0005\b\u0089\u0001\u0010\u001cR+\u0010\u008a\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u008b\u0001\u0010#\"\u0005\b\u008c\u0001\u0010%R/\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u008d\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R+\u0010\u0093\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0094\u0001\u0010#\"\u0005\b\u0095\u0001\u0010%R+\u0010\u0096\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0097\u0001\u0010#\"\u0005\b\u0098\u0001\u0010%R+\u0010\u0099\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u009a\u0001\u0010#\"\u0005\b\u009b\u0001\u0010%R+\u0010\u009c\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u009d\u0001\u0010#\"\u0005\b\u009e\u0001\u0010%R7\u0010\u009f\u0001\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010F2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010F8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b \u0001\u0010I\"\u0005\b¡\u0001\u0010KR+\u0010¢\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b£\u0001\u0010#\"\u0005\b¤\u0001\u0010%R+\u0010¥\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¦\u0001\u0010#\"\u0005\b§\u0001\u0010%R+\u0010¨\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b©\u0001\u0010#\"\u0005\bª\u0001\u0010%R+\u0010«\u0001\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¬\u0001\u0010#\"\u0005\b\u00ad\u0001\u0010%R/\u0010¯\u0001\u001a\u0005\u0018\u00010®\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010®\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b°\u0001\u0010±\u0001\"\u0006\b²\u0001\u0010³\u0001¨\u0006¾\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotation;", "Lcom/mapbox/maps/plugin/annotation/Annotation;", "Lcom/mapbox/geojson/Point;", "id", "", "annotationManager", "Lcom/mapbox/maps/plugin/annotation/AnnotationManager;", "jsonObject", "Lcom/google/gson/JsonObject;", "geometry", "(Ljava/lang/String;Lcom/mapbox/maps/plugin/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Point;)V", "value", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "iconAnchor", "getIconAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "setIconAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;)V", "", "iconColorInt", "getIconColorInt", "()Ljava/lang/Integer;", "setIconColorInt", "(Ljava/lang/Integer;)V", "iconColorString", "getIconColorString", "()Ljava/lang/String;", "setIconColorString", "(Ljava/lang/String;)V", "iconColorUseTheme", "getIconColorUseTheme", "setIconColorUseTheme", "", "iconEmissiveStrength", "getIconEmissiveStrength", "()Ljava/lang/Double;", "setIconEmissiveStrength", "(Ljava/lang/Double;)V", "iconHaloBlur", "getIconHaloBlur", "setIconHaloBlur", "iconHaloColorInt", "getIconHaloColorInt", "setIconHaloColorInt", "iconHaloColorString", "getIconHaloColorString", "setIconHaloColorString", "iconHaloColorUseTheme", "getIconHaloColorUseTheme", "setIconHaloColorUseTheme", "iconHaloWidth", "getIconHaloWidth", "setIconHaloWidth", "iconImage", "getIconImage", "setIconImage", "Landroid/graphics/Bitmap;", "iconImageBitmap", "getIconImageBitmap", "()Landroid/graphics/Bitmap;", "setIconImageBitmap", "(Landroid/graphics/Bitmap;)V", "iconImageCrossFade", "getIconImageCrossFade$annotations", "()V", "getIconImageCrossFade", "setIconImageCrossFade", "iconOcclusionOpacity", "getIconOcclusionOpacity", "setIconOcclusionOpacity", "", "iconOffset", "getIconOffset", "()Ljava/util/List;", "setIconOffset", "(Ljava/util/List;)V", "iconOpacity", "getIconOpacity", "setIconOpacity", "iconRotate", "getIconRotate", "setIconRotate", "iconSize", "getIconSize", "setIconSize", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "iconTextFit", "getIconTextFit", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "setIconTextFit", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;)V", "iconTextFitPadding", "getIconTextFitPadding", "setIconTextFitPadding", "point", "getPoint", "()Lcom/mapbox/geojson/Point;", "setPoint", "(Lcom/mapbox/geojson/Point;)V", "symbolSortKey", "getSymbolSortKey", "setSymbolSortKey", "symbolZOffset", "getSymbolZOffset", "setSymbolZOffset", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", "textAnchor", "getTextAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", "setTextAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;)V", "textColorInt", "getTextColorInt", "setTextColorInt", "textColorString", "getTextColorString", "setTextColorString", "textColorUseTheme", "getTextColorUseTheme", "setTextColorUseTheme", "textEmissiveStrength", "getTextEmissiveStrength", "setTextEmissiveStrength", "textField", "getTextField", "setTextField", "textHaloBlur", "getTextHaloBlur", "setTextHaloBlur", "textHaloColorInt", "getTextHaloColorInt", "setTextHaloColorInt", "textHaloColorString", "getTextHaloColorString", "setTextHaloColorString", "textHaloColorUseTheme", "getTextHaloColorUseTheme", "setTextHaloColorUseTheme", "textHaloWidth", "getTextHaloWidth", "setTextHaloWidth", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "textJustify", "getTextJustify", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "setTextJustify", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;)V", "textLetterSpacing", "getTextLetterSpacing", "setTextLetterSpacing", "textLineHeight", "getTextLineHeight", "setTextLineHeight", "textMaxWidth", "getTextMaxWidth", "setTextMaxWidth", "textOcclusionOpacity", "getTextOcclusionOpacity", "setTextOcclusionOpacity", "textOffset", "getTextOffset", "setTextOffset", "textOpacity", "getTextOpacity", "setTextOpacity", "textRadialOffset", "getTextRadialOffset", "setTextRadialOffset", "textRotate", "getTextRotate", "setTextRotate", "textSize", "getTextSize", "setTextSize", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", ReactBaseTextShadowNode.PROP_TEXT_TRANSFORM, "getTextTransform", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", "setTextTransform", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;)V", "getOffsetGeometry", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "moveDistancesObject", "Lcom/mapbox/android/gestures/MoveDistancesObject;", "getType", "Lcom/mapbox/maps/plugin/annotation/AnnotationType;", "setUsedDataDrivenProperties", "", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PointAnnotation extends Annotation<Point> {
    public static final String ICON_DEFAULT_NAME_PREFIX = "icon_default_name_";
    public static final String ID_KEY = "PointAnnotation";
    private final AnnotationManager<Point, PointAnnotation, ?, ?, ?, ?, ?> annotationManager;
    private Bitmap iconImageBitmap;

    @Deprecated(message = "This property has been deprecated and will do no operations. Use PointAnnotationManager.iconImageCrossFade instead")
    public static void getIconImageCrossFade$annotations() {
    }

    public final Double getIconImageCrossFade() {
        return null;
    }

    public final void setIconImageCrossFade(Double d) {
    }

    public PointAnnotation(String id, AnnotationManager<Point, PointAnnotation, ?, ?, ?, ?, ?> annotationManager, JsonObject jsonObject, Point geometry) {
        super(id, jsonObject, geometry);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(annotationManager, "annotationManager");
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        this.annotationManager = annotationManager;
        jsonObject.addProperty(ID_KEY, id);
    }

    @Override
    public AnnotationType getType() {
        return AnnotationType.PointAnnotation;
    }

    public final Point getPoint() {
        return getGeometry();
    }

    public final void setPoint(Point value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setGeometry(value);
    }

    public final Bitmap getIconImageBitmap() {
        return this.iconImageBitmap;
    }

    public final void setIconImageBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            if (Intrinsics.areEqual(this.iconImageBitmap, bitmap)) {
                return;
            }
            this.iconImageBitmap = bitmap;
            if (getIconImage() != null) {
                String iconImage = getIconImage();
                Intrinsics.checkNotNull(iconImage);
                if (!StringsKt.startsWith$default(iconImage, ICON_DEFAULT_NAME_PREFIX, false, 2, (Object) null)) {
                    return;
                }
            }
            setIconImage(ICON_DEFAULT_NAME_PREFIX + bitmap.hashCode());
            return;
        }
        this.iconImageBitmap = null;
        getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
    }

    public final IconAnchor getIconAnchor() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_ANCHOR);
        if (jsonElement == null) {
            return null;
        }
        IconAnchor.Companion companion = IconAnchor.INSTANCE;
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = asString.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    public final void setIconAnchor(IconAnchor iconAnchor) {
        if (iconAnchor != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_ANCHOR, iconAnchor.getValue());
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_ANCHOR);
        }
    }

    public final String getIconImage() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconImage(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
        }
    }

    public final List<Double> getIconOffset() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_OFFSET);
        JsonArray jsonArray = jsonElement instanceof JsonArray ? (JsonArray) jsonElement : null;
        if (jsonArray == null) {
            return null;
        }
        JsonArray jsonArray2 = jsonArray;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray2, 10));
        Iterator<JsonElement> it = jsonArray2.iterator();
        while (it.hasNext()) {
            String string = it.next().toString();
            Intrinsics.checkNotNullExpressionValue(string, "it.toString()");
            arrayList.add(Double.valueOf(Double.parseDouble(string)));
        }
        return arrayList;
    }

    public final void setIconOffset(List<Double> list) {
        List<Double> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            JsonArray jsonArray = new JsonArray(list.size());
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                jsonArray.add(Double.valueOf(((Number) it.next()).doubleValue()));
            }
            getJsonObject().add(PointAnnotationOptions.PROPERTY_ICON_OFFSET, jsonArray);
            return;
        }
        getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_OFFSET);
    }

    public final Double getIconRotate() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_ROTATE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconRotate(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_ROTATE, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_ROTATE);
        }
    }

    public final Double getIconSize() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_SIZE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconSize(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_SIZE, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_SIZE);
        }
    }

    public final IconTextFit getIconTextFit() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT);
        if (jsonElement == null) {
            return null;
        }
        IconTextFit.Companion companion = IconTextFit.INSTANCE;
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = asString.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    public final void setIconTextFit(IconTextFit iconTextFit) {
        if (iconTextFit != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT, iconTextFit.getValue());
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT);
        }
    }

    public final List<Double> getIconTextFitPadding() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING);
        JsonArray jsonArray = jsonElement instanceof JsonArray ? (JsonArray) jsonElement : null;
        if (jsonArray == null) {
            return null;
        }
        JsonArray jsonArray2 = jsonArray;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray2, 10));
        Iterator<JsonElement> it = jsonArray2.iterator();
        while (it.hasNext()) {
            String string = it.next().toString();
            Intrinsics.checkNotNullExpressionValue(string, "it.toString()");
            arrayList.add(Double.valueOf(Double.parseDouble(string)));
        }
        return arrayList;
    }

    public final void setIconTextFitPadding(List<Double> list) {
        List<Double> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            JsonArray jsonArray = new JsonArray(list.size());
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                jsonArray.add(Double.valueOf(((Number) it.next()).doubleValue()));
            }
            getJsonObject().add(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING, jsonArray);
            return;
        }
        getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING);
    }

    public final Double getSymbolSortKey() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setSymbolSortKey(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY);
        }
    }

    public final TextAnchor getTextAnchor() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR);
        if (jsonElement == null) {
            return null;
        }
        TextAnchor.Companion companion = TextAnchor.INSTANCE;
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = asString.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    public final void setTextAnchor(TextAnchor textAnchor) {
        if (textAnchor != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR, textAnchor.getValue());
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR);
        }
    }

    public final String getTextField() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_FIELD);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextField(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_FIELD, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_FIELD);
        }
    }

    public final TextJustify getTextJustify() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY);
        if (jsonElement == null) {
            return null;
        }
        TextJustify.Companion companion = TextJustify.INSTANCE;
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = asString.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    public final void setTextJustify(TextJustify textJustify) {
        if (textJustify != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY, textJustify.getValue());
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY);
        }
    }

    public final Double getTextLetterSpacing() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextLetterSpacing(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING);
        }
    }

    public final Double getTextLineHeight() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextLineHeight(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT);
        }
    }

    public final Double getTextMaxWidth() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextMaxWidth(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH);
        }
    }

    public final List<Double> getTextOffset() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_OFFSET);
        JsonArray jsonArray = jsonElement instanceof JsonArray ? (JsonArray) jsonElement : null;
        if (jsonArray == null) {
            return null;
        }
        JsonArray jsonArray2 = jsonArray;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArray2, 10));
        Iterator<JsonElement> it = jsonArray2.iterator();
        while (it.hasNext()) {
            String string = it.next().toString();
            Intrinsics.checkNotNullExpressionValue(string, "it.toString()");
            arrayList.add(Double.valueOf(Double.parseDouble(string)));
        }
        return arrayList;
    }

    public final void setTextOffset(List<Double> list) {
        List<Double> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            JsonArray jsonArray = new JsonArray(list.size());
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                jsonArray.add(Double.valueOf(((Number) it.next()).doubleValue()));
            }
            getJsonObject().add(PointAnnotationOptions.PROPERTY_TEXT_OFFSET, jsonArray);
            return;
        }
        getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_OFFSET);
    }

    public final Double getTextRadialOffset() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextRadialOffset(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET);
        }
    }

    public final Double getTextRotate() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_ROTATE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextRotate(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_ROTATE, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_ROTATE);
        }
    }

    public final Double getTextSize() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_SIZE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextSize(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_SIZE, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_SIZE);
        }
    }

    public final TextTransform getTextTransform() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM);
        if (jsonElement == null) {
            return null;
        }
        TextTransform.Companion companion = TextTransform.INSTANCE;
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = asString.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    public final void setTextTransform(TextTransform textTransform) {
        if (textTransform != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM, textTransform.getValue());
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM);
        }
    }

    public final Integer getIconColorInt() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setIconColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        } else {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getIconColorString() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        }
    }

    public final Double getIconEmissiveStrength() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconEmissiveStrength(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH);
        }
    }

    public final Double getIconHaloBlur() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconHaloBlur(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR);
        }
    }

    public final Integer getIconHaloColorInt() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setIconHaloColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        } else {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getIconHaloColorString() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconHaloColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        }
    }

    public final Double getIconHaloWidth() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconHaloWidth(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH);
        }
    }

    public final Double getIconOcclusionOpacity() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconOcclusionOpacity(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY);
        }
    }

    public final Double getIconOpacity() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconOpacity(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_OPACITY, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_OPACITY);
        }
    }

    public final Double getSymbolZOffset() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setSymbolZOffset(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET);
        }
    }

    public final Integer getTextColorInt() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setTextColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        } else {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getTextColorString() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        }
    }

    public final Double getTextEmissiveStrength() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextEmissiveStrength(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH);
        }
    }

    public final Double getTextHaloBlur() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextHaloBlur(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR);
        }
    }

    public final Integer getTextHaloColorInt() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setTextHaloColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        } else {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getTextHaloColorString() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextHaloColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        }
    }

    public final Double getTextHaloWidth() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextHaloWidth(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH);
        }
    }

    public final Double getTextOcclusionOpacity() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextOcclusionOpacity(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY);
        }
    }

    public final Double getTextOpacity() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextOpacity(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_OPACITY, d);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_OPACITY);
        }
    }

    public final String getIconColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME);
        }
    }

    public final String getIconHaloColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconHaloColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME);
        }
    }

    public final String getTextColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME);
        }
    }

    public final String getTextHaloColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextHaloColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME);
        }
    }

    @Override
    public Point getOffsetGeometry(MapCameraManagerDelegate mapCameraManagerDelegate, MoveDistancesObject moveDistancesObject) {
        Intrinsics.checkNotNullParameter(mapCameraManagerDelegate, "mapCameraManagerDelegate");
        Intrinsics.checkNotNullParameter(moveDistancesObject, "moveDistancesObject");
        Point pointCoordinateForPixel = mapCameraManagerDelegate.coordinateForPixel(new ScreenCoordinate(moveDistancesObject.getCurrentX(), moveDistancesObject.getCurrentY()));
        if (pointCoordinateForPixel.latitude() > 85.05112877980659d || pointCoordinateForPixel.latitude() < -85.05112877980659d) {
            return null;
        }
        return pointCoordinateForPixel;
    }

    @Override
    public void setUsedDataDrivenProperties() {
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_ANCHOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_ANCHOR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_IMAGE) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_OFFSET) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_OFFSET);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_ROTATE) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_ROTATE);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_SIZE) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_SIZE);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_FIELD) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_FIELD);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_OFFSET) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_OFFSET);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_ROTATE) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_ROTATE);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_SIZE) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_SIZE);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_OPACITY) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_OPACITY);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_OPACITY) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_OPACITY);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME);
        }
        if (getJsonObject().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME);
        }
    }
}
