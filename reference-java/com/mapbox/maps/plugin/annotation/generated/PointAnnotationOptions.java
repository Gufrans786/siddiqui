package com.mapbox.maps.plugin.annotation.generated;

import android.graphics.Bitmap;
import com.facebook.react.views.text.ReactBaseTextShadowNode;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.MapboxAnnotationException;
import com.mapbox.maps.extension.style.layers.properties.generated.IconAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.IconTextFit;
import com.mapbox.maps.extension.style.layers.properties.generated.TextAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.TextJustify;
import com.mapbox.maps.extension.style.layers.properties.generated.TextTransform;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.plugin.annotation.Annotation;
import com.mapbox.maps.plugin.annotation.AnnotationManager;
import com.mapbox.maps.plugin.annotation.AnnotationOptions;
import com.mapbox.maps.plugin.annotation.ConvertUtils;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b)\u0018\u0000 Ò\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002Ò\u0001B\u0005¢\u0006\u0002\u0010\u0004J<\u0010\u009b\u0001\u001a\u00020\u00032\u0007\u0010\u009c\u0001\u001a\u00020\u000f2(\u0010\u009d\u0001\u001a#\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u009e\u0001H\u0016J\t\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0006J\u0007\u0010 \u0001\u001a\u00020OJ\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u0002J\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u0002J\u0010\u0010£\u0001\u001a\u00020\u00002\u0007\u0010¤\u0001\u001a\u00020\u0006J\u0010\u0010¥\u0001\u001a\u00020\u00002\u0007\u0010¦\u0001\u001a\u00020OJ\u000f\u0010§\u0001\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\u000f\u0010¨\u0001\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0012\u0010©\u0001\u001a\u00020\u00002\t\b\u0001\u0010\u000e\u001a\u00030ª\u0001J\u000f\u0010©\u0001\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000f\u0010«\u0001\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000fJ\u000f\u0010¬\u0001\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000f\u0010\u00ad\u0001\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0018J\u0012\u0010®\u0001\u001a\u00020\u00002\t\b\u0001\u0010!\u001a\u00030ª\u0001J\u000f\u0010®\u0001\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u000fJ\u000f\u0010¯\u0001\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u000fJ\u000f\u0010°\u0001\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0018J\u000f\u0010±\u0001\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.J\u000f\u0010±\u0001\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u000fJ\u0011\u0010²\u0001\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0018H\u0007J\u000f\u0010³\u0001\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0018J\u0015\u0010´\u0001\u001a\u00020\u00002\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001807J\u000f\u0010µ\u0001\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0018J\u000f\u0010¶\u0001\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u0018J\u000f\u0010·\u0001\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0018J\u000f\u0010¸\u0001\u001a\u00020\u00002\u0006\u0010E\u001a\u00020FJ\u0015\u0010¹\u0001\u001a\u00020\u00002\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\u001807J\u0010\u0010º\u0001\u001a\u00020\u00002\u0007\u0010»\u0001\u001a\u00020\u0002J\u000f\u0010¼\u0001\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\u0018J\u000f\u0010½\u0001\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0018J\u000f\u0010¾\u0001\u001a\u00020\u00002\u0006\u0010V\u001a\u00020WJ\u0012\u0010¿\u0001\u001a\u00020\u00002\t\b\u0001\u0010\\\u001a\u00030ª\u0001J\u000f\u0010¿\u0001\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u000fJ\u000f\u0010À\u0001\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u000fJ\u000f\u0010Á\u0001\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u0018J\u000f\u0010Â\u0001\u001a\u00020\u00002\u0006\u0010e\u001a\u00020\u000fJ\u000f\u0010Ã\u0001\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0018J\u0012\u0010Ä\u0001\u001a\u00020\u00002\t\b\u0001\u0010k\u001a\u00030ª\u0001J\u000f\u0010Ä\u0001\u001a\u00020\u00002\u0006\u0010k\u001a\u00020\u000fJ\u000f\u0010Å\u0001\u001a\u00020\u00002\u0006\u0010n\u001a\u00020\u000fJ\u000f\u0010Æ\u0001\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0018J\u000f\u0010Ç\u0001\u001a\u00020\u00002\u0006\u0010t\u001a\u00020uJ\u000f\u0010È\u0001\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u0018J\u000f\u0010É\u0001\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\u0018J\u0010\u0010Ê\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u00020\u0018J\u0010\u0010Ë\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\u0018J\u0016\u0010Ì\u0001\u001a\u00020\u00002\r\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020\u001807J\u0010\u0010Í\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0018J\u0010\u0010Î\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\u0018J\u0010\u0010Ï\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020\u0018J\u0010\u0010Ð\u0001\u001a\u00020\u00002\u0007\u0010\u0092\u0001\u001a\u00020\u0018J\u0011\u0010Ñ\u0001\u001a\u00020\u00002\b\u0010\u0095\u0001\u001a\u00030\u0096\u0001R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0002X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\u001c\u0010!\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\u001c\u0010$\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0011\"\u0004\b&\u0010\u0013R\u001e\u0010'\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b(\u0010\u001a\"\u0004\b)\u0010\u001cR\u001c\u0010*\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0011\"\u0004\b,\u0010\u0013R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010/\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u0010\u001d\u0012\u0004\b0\u0010\u0004\u001a\u0004\b1\u0010\u001a\"\u0004\b2\u0010\u001cR\u001e\u00103\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b4\u0010\u001a\"\u0004\b5\u0010\u001cR\"\u00106\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u000107X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001e\u0010<\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b=\u0010\u001a\"\u0004\b>\u0010\u001cR\u001e\u0010?\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b@\u0010\u001a\"\u0004\bA\u0010\u001cR\u001e\u0010B\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\bC\u0010\u001a\"\u0004\bD\u0010\u001cR\u001c\u0010E\u001a\u0004\u0018\u00010FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010K\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u000107X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u00109\"\u0004\bM\u0010;R\u000e\u0010N\u001a\u00020OX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010P\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\bQ\u0010\u001a\"\u0004\bR\u0010\u001cR\u001e\u0010S\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\bT\u0010\u001a\"\u0004\bU\u0010\u001cR\u001c\u0010V\u001a\u0004\u0018\u00010WX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R\u001c\u0010\\\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010\u0011\"\u0004\b^\u0010\u0013R\u001c\u0010_\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010\u0011\"\u0004\ba\u0010\u0013R\u001e\u0010b\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\bc\u0010\u001a\"\u0004\bd\u0010\u001cR\u001c\u0010e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010\u0011\"\u0004\bg\u0010\u0013R\u001e\u0010h\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\bi\u0010\u001a\"\u0004\bj\u0010\u001cR\u001c\u0010k\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010\u0011\"\u0004\bm\u0010\u0013R\u001c\u0010n\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010\u0011\"\u0004\bp\u0010\u0013R\u001e\u0010q\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\br\u0010\u001a\"\u0004\bs\u0010\u001cR\u001c\u0010t\u001a\u0004\u0018\u00010uX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR\u001e\u0010z\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b{\u0010\u001a\"\u0004\b|\u0010\u001cR\u001e\u0010}\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b~\u0010\u001a\"\u0004\b\u007f\u0010\u001cR!\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u001d\u001a\u0005\b\u0081\u0001\u0010\u001a\"\u0005\b\u0082\u0001\u0010\u001cR!\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u001d\u001a\u0005\b\u0084\u0001\u0010\u001a\"\u0005\b\u0085\u0001\u0010\u001cR%\u0010\u0086\u0001\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u000107X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0087\u0001\u00109\"\u0005\b\u0088\u0001\u0010;R!\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u001d\u001a\u0005\b\u008a\u0001\u0010\u001a\"\u0005\b\u008b\u0001\u0010\u001cR!\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u001d\u001a\u0005\b\u008d\u0001\u0010\u001a\"\u0005\b\u008e\u0001\u0010\u001cR!\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u001d\u001a\u0005\b\u0090\u0001\u0010\u001a\"\u0005\b\u0091\u0001\u0010\u001cR!\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0012\n\u0002\u0010\u001d\u001a\u0005\b\u0093\u0001\u0010\u001a\"\u0005\b\u0094\u0001\u0010\u001cR\"\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001¨\u0006Ó\u0001"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationOptions;", "Lcom/mapbox/maps/plugin/annotation/AnnotationOptions;", "Lcom/mapbox/geojson/Point;", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotation;", "()V", "data", "Lcom/google/gson/JsonElement;", "geometry", "iconAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "getIconAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "setIconAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;)V", "iconColor", "", "getIconColor", "()Ljava/lang/String;", "setIconColor", "(Ljava/lang/String;)V", "iconColorUseTheme", "getIconColorUseTheme", "setIconColorUseTheme", "iconEmissiveStrength", "", "getIconEmissiveStrength", "()Ljava/lang/Double;", "setIconEmissiveStrength", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "iconHaloBlur", "getIconHaloBlur", "setIconHaloBlur", "iconHaloColor", "getIconHaloColor", "setIconHaloColor", "iconHaloColorUseTheme", "getIconHaloColorUseTheme", "setIconHaloColorUseTheme", "iconHaloWidth", "getIconHaloWidth", "setIconHaloWidth", "iconImage", "getIconImage", "setIconImage", "iconImageBitmap", "Landroid/graphics/Bitmap;", "iconImageCrossFade", "getIconImageCrossFade$annotations", "getIconImageCrossFade", "setIconImageCrossFade", "iconOcclusionOpacity", "getIconOcclusionOpacity", "setIconOcclusionOpacity", "iconOffset", "", "getIconOffset", "()Ljava/util/List;", "setIconOffset", "(Ljava/util/List;)V", "iconOpacity", "getIconOpacity", "setIconOpacity", "iconRotate", "getIconRotate", "setIconRotate", "iconSize", "getIconSize", "setIconSize", "iconTextFit", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "getIconTextFit", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "setIconTextFit", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;)V", "iconTextFitPadding", "getIconTextFitPadding", "setIconTextFitPadding", "isDraggable", "", "symbolSortKey", "getSymbolSortKey", "setSymbolSortKey", "symbolZOffset", "getSymbolZOffset", "setSymbolZOffset", "textAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", "getTextAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", "setTextAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;)V", Common.TEXT_COLOR, "getTextColor", "setTextColor", "textColorUseTheme", "getTextColorUseTheme", "setTextColorUseTheme", "textEmissiveStrength", "getTextEmissiveStrength", "setTextEmissiveStrength", "textField", "getTextField", "setTextField", "textHaloBlur", "getTextHaloBlur", "setTextHaloBlur", "textHaloColor", "getTextHaloColor", "setTextHaloColor", "textHaloColorUseTheme", "getTextHaloColorUseTheme", "setTextHaloColorUseTheme", "textHaloWidth", "getTextHaloWidth", "setTextHaloWidth", "textJustify", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "getTextJustify", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "setTextJustify", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;)V", "textLetterSpacing", "getTextLetterSpacing", "setTextLetterSpacing", "textLineHeight", "getTextLineHeight", "setTextLineHeight", "textMaxWidth", "getTextMaxWidth", "setTextMaxWidth", "textOcclusionOpacity", "getTextOcclusionOpacity", "setTextOcclusionOpacity", "textOffset", "getTextOffset", "setTextOffset", "textOpacity", "getTextOpacity", "setTextOpacity", "textRadialOffset", "getTextRadialOffset", "setTextRadialOffset", "textRotate", "getTextRotate", "setTextRotate", "textSize", "getTextSize", "setTextSize", ReactBaseTextShadowNode.PROP_TEXT_TRANSFORM, "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", "getTextTransform", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", "setTextTransform", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;)V", "build", "id", "annotationManager", "Lcom/mapbox/maps/plugin/annotation/AnnotationManager;", "getData", "getDraggable", "getGeometry", "getPoint", "withData", "jsonElement", "withDraggable", "draggable", "withGeometry", "withIconAnchor", "withIconColor", "", "withIconColorUseTheme", "withIconEmissiveStrength", "withIconHaloBlur", "withIconHaloColor", "withIconHaloColorUseTheme", "withIconHaloWidth", "withIconImage", "withIconImageCrossFade", "withIconOcclusionOpacity", "withIconOffset", "withIconOpacity", "withIconRotate", "withIconSize", "withIconTextFit", "withIconTextFitPadding", "withPoint", "point", "withSymbolSortKey", "withSymbolZOffset", "withTextAnchor", "withTextColor", "withTextColorUseTheme", "withTextEmissiveStrength", "withTextField", "withTextHaloBlur", "withTextHaloColor", "withTextHaloColorUseTheme", "withTextHaloWidth", "withTextJustify", "withTextLetterSpacing", "withTextLineHeight", "withTextMaxWidth", "withTextOcclusionOpacity", "withTextOffset", "withTextOpacity", "withTextRadialOffset", "withTextRotate", "withTextSize", "withTextTransform", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PointAnnotationOptions implements AnnotationOptions<Point, PointAnnotation> {

    public static final Companion INSTANCE = new Companion(null);
    public static final String PROPERTY_ICON_ANCHOR = "icon-anchor";
    public static final String PROPERTY_ICON_COLOR = "icon-color";
    public static final String PROPERTY_ICON_COLOR_USE_THEME = "icon-color-use-theme";
    public static final String PROPERTY_ICON_EMISSIVE_STRENGTH = "icon-emissive-strength";
    public static final String PROPERTY_ICON_HALO_BLUR = "icon-halo-blur";
    public static final String PROPERTY_ICON_HALO_COLOR = "icon-halo-color";
    public static final String PROPERTY_ICON_HALO_COLOR_USE_THEME = "icon-halo-color-use-theme";
    public static final String PROPERTY_ICON_HALO_WIDTH = "icon-halo-width";
    public static final String PROPERTY_ICON_IMAGE = "icon-image";
    public static final String PROPERTY_ICON_IMAGE_CROSS_FADE = "icon-image-cross-fade";
    public static final String PROPERTY_ICON_OCCLUSION_OPACITY = "icon-occlusion-opacity";
    public static final String PROPERTY_ICON_OFFSET = "icon-offset";
    public static final String PROPERTY_ICON_OPACITY = "icon-opacity";
    public static final String PROPERTY_ICON_ROTATE = "icon-rotate";
    public static final String PROPERTY_ICON_SIZE = "icon-size";
    public static final String PROPERTY_ICON_TEXT_FIT = "icon-text-fit";
    public static final String PROPERTY_ICON_TEXT_FIT_PADDING = "icon-text-fit-padding";
    private static final String PROPERTY_IS_DRAGGABLE = "is-draggable";
    public static final String PROPERTY_SYMBOL_SORT_KEY = "symbol-sort-key";
    public static final String PROPERTY_SYMBOL_Z_OFFSET = "symbol-z-offset";
    public static final String PROPERTY_TEXT_ANCHOR = "text-anchor";
    public static final String PROPERTY_TEXT_COLOR = "text-color";
    public static final String PROPERTY_TEXT_COLOR_USE_THEME = "text-color-use-theme";
    public static final String PROPERTY_TEXT_EMISSIVE_STRENGTH = "text-emissive-strength";
    public static final String PROPERTY_TEXT_FIELD = "text-field";
    public static final String PROPERTY_TEXT_HALO_BLUR = "text-halo-blur";
    public static final String PROPERTY_TEXT_HALO_COLOR = "text-halo-color";
    public static final String PROPERTY_TEXT_HALO_COLOR_USE_THEME = "text-halo-color-use-theme";
    public static final String PROPERTY_TEXT_HALO_WIDTH = "text-halo-width";
    public static final String PROPERTY_TEXT_JUSTIFY = "text-justify";
    public static final String PROPERTY_TEXT_LETTER_SPACING = "text-letter-spacing";
    public static final String PROPERTY_TEXT_LINE_HEIGHT = "text-line-height";
    public static final String PROPERTY_TEXT_MAX_WIDTH = "text-max-width";
    public static final String PROPERTY_TEXT_OCCLUSION_OPACITY = "text-occlusion-opacity";
    public static final String PROPERTY_TEXT_OFFSET = "text-offset";
    public static final String PROPERTY_TEXT_OPACITY = "text-opacity";
    public static final String PROPERTY_TEXT_RADIAL_OFFSET = "text-radial-offset";
    public static final String PROPERTY_TEXT_ROTATE = "text-rotate";
    public static final String PROPERTY_TEXT_SIZE = "text-size";
    public static final String PROPERTY_TEXT_TRANSFORM = "text-transform";
    private JsonElement data;
    private Point geometry;
    private IconAnchor iconAnchor;
    private String iconColor;
    private String iconColorUseTheme;
    private Double iconEmissiveStrength;
    private Double iconHaloBlur;
    private String iconHaloColor;
    private String iconHaloColorUseTheme;
    private Double iconHaloWidth;
    private String iconImage;
    private Bitmap iconImageBitmap;
    private Double iconImageCrossFade;
    private Double iconOcclusionOpacity;
    private List<Double> iconOffset;
    private Double iconOpacity;
    private Double iconRotate;
    private Double iconSize;
    private IconTextFit iconTextFit;
    private List<Double> iconTextFitPadding;
    private boolean isDraggable;
    private Double symbolSortKey;
    private Double symbolZOffset;
    private TextAnchor textAnchor;
    private String textColor;
    private String textColorUseTheme;
    private Double textEmissiveStrength;
    private String textField;
    private Double textHaloBlur;
    private String textHaloColor;
    private String textHaloColorUseTheme;
    private Double textHaloWidth;
    private TextJustify textJustify;
    private Double textLetterSpacing;
    private Double textLineHeight;
    private Double textMaxWidth;
    private Double textOcclusionOpacity;
    private List<Double> textOffset;
    private Double textOpacity;
    private Double textRadialOffset;
    private Double textRotate;
    private Double textSize;
    private TextTransform textTransform;

    @Deprecated(message = "Use PointAnnotationManager.iconImageCrossFadeTransition instead")
    public static void getIconImageCrossFade$annotations() {
    }

    @Override
    public Annotation build(String str, AnnotationManager annotationManager) {
        return build(str, (AnnotationManager<Point, PointAnnotation, ?, ?, ?, ?, ?>) annotationManager);
    }

    public final PointAnnotationOptions withIconImage(Bitmap iconImageBitmap) {
        Intrinsics.checkNotNullParameter(iconImageBitmap, "iconImageBitmap");
        this.iconImageBitmap = iconImageBitmap;
        return this;
    }

    public final IconAnchor getIconAnchor() {
        return this.iconAnchor;
    }

    public final void setIconAnchor(IconAnchor iconAnchor) {
        this.iconAnchor = iconAnchor;
    }

    public final PointAnnotationOptions withIconAnchor(IconAnchor iconAnchor) {
        Intrinsics.checkNotNullParameter(iconAnchor, "iconAnchor");
        this.iconAnchor = iconAnchor;
        return this;
    }

    public final String getIconImage() {
        return this.iconImage;
    }

    public final void setIconImage(String str) {
        this.iconImage = str;
    }

    public final PointAnnotationOptions withIconImage(String iconImage) {
        Intrinsics.checkNotNullParameter(iconImage, "iconImage");
        this.iconImage = iconImage;
        return this;
    }

    public final List<Double> getIconOffset() {
        return this.iconOffset;
    }

    public final void setIconOffset(List<Double> list) {
        this.iconOffset = list;
    }

    public final PointAnnotationOptions withIconOffset(List<Double> iconOffset) {
        Intrinsics.checkNotNullParameter(iconOffset, "iconOffset");
        this.iconOffset = iconOffset;
        return this;
    }

    public final Double getIconRotate() {
        return this.iconRotate;
    }

    public final void setIconRotate(Double d) {
        this.iconRotate = d;
    }

    public final PointAnnotationOptions withIconRotate(double iconRotate) {
        this.iconRotate = Double.valueOf(iconRotate);
        return this;
    }

    public final Double getIconSize() {
        return this.iconSize;
    }

    public final void setIconSize(Double d) {
        this.iconSize = d;
    }

    public final PointAnnotationOptions withIconSize(double iconSize) {
        this.iconSize = Double.valueOf(iconSize);
        return this;
    }

    public final IconTextFit getIconTextFit() {
        return this.iconTextFit;
    }

    public final void setIconTextFit(IconTextFit iconTextFit) {
        this.iconTextFit = iconTextFit;
    }

    public final PointAnnotationOptions withIconTextFit(IconTextFit iconTextFit) {
        Intrinsics.checkNotNullParameter(iconTextFit, "iconTextFit");
        this.iconTextFit = iconTextFit;
        return this;
    }

    public final List<Double> getIconTextFitPadding() {
        return this.iconTextFitPadding;
    }

    public final void setIconTextFitPadding(List<Double> list) {
        this.iconTextFitPadding = list;
    }

    public final PointAnnotationOptions withIconTextFitPadding(List<Double> iconTextFitPadding) {
        Intrinsics.checkNotNullParameter(iconTextFitPadding, "iconTextFitPadding");
        this.iconTextFitPadding = iconTextFitPadding;
        return this;
    }

    public final Double getSymbolSortKey() {
        return this.symbolSortKey;
    }

    public final void setSymbolSortKey(Double d) {
        this.symbolSortKey = d;
    }

    public final PointAnnotationOptions withSymbolSortKey(double symbolSortKey) {
        this.symbolSortKey = Double.valueOf(symbolSortKey);
        return this;
    }

    public final TextAnchor getTextAnchor() {
        return this.textAnchor;
    }

    public final void setTextAnchor(TextAnchor textAnchor) {
        this.textAnchor = textAnchor;
    }

    public final PointAnnotationOptions withTextAnchor(TextAnchor textAnchor) {
        Intrinsics.checkNotNullParameter(textAnchor, "textAnchor");
        this.textAnchor = textAnchor;
        return this;
    }

    public final String getTextField() {
        return this.textField;
    }

    public final void setTextField(String str) {
        this.textField = str;
    }

    public final PointAnnotationOptions withTextField(String textField) {
        Intrinsics.checkNotNullParameter(textField, "textField");
        this.textField = textField;
        return this;
    }

    public final TextJustify getTextJustify() {
        return this.textJustify;
    }

    public final void setTextJustify(TextJustify textJustify) {
        this.textJustify = textJustify;
    }

    public final PointAnnotationOptions withTextJustify(TextJustify textJustify) {
        Intrinsics.checkNotNullParameter(textJustify, "textJustify");
        this.textJustify = textJustify;
        return this;
    }

    public final Double getTextLetterSpacing() {
        return this.textLetterSpacing;
    }

    public final void setTextLetterSpacing(Double d) {
        this.textLetterSpacing = d;
    }

    public final PointAnnotationOptions withTextLetterSpacing(double textLetterSpacing) {
        this.textLetterSpacing = Double.valueOf(textLetterSpacing);
        return this;
    }

    public final Double getTextLineHeight() {
        return this.textLineHeight;
    }

    public final void setTextLineHeight(Double d) {
        this.textLineHeight = d;
    }

    public final PointAnnotationOptions withTextLineHeight(double textLineHeight) {
        this.textLineHeight = Double.valueOf(textLineHeight);
        return this;
    }

    public final Double getTextMaxWidth() {
        return this.textMaxWidth;
    }

    public final void setTextMaxWidth(Double d) {
        this.textMaxWidth = d;
    }

    public final PointAnnotationOptions withTextMaxWidth(double textMaxWidth) {
        this.textMaxWidth = Double.valueOf(textMaxWidth);
        return this;
    }

    public final List<Double> getTextOffset() {
        return this.textOffset;
    }

    public final void setTextOffset(List<Double> list) {
        this.textOffset = list;
    }

    public final PointAnnotationOptions withTextOffset(List<Double> textOffset) {
        Intrinsics.checkNotNullParameter(textOffset, "textOffset");
        this.textOffset = textOffset;
        return this;
    }

    public final Double getTextRadialOffset() {
        return this.textRadialOffset;
    }

    public final void setTextRadialOffset(Double d) {
        this.textRadialOffset = d;
    }

    public final PointAnnotationOptions withTextRadialOffset(double textRadialOffset) {
        this.textRadialOffset = Double.valueOf(textRadialOffset);
        return this;
    }

    public final Double getTextRotate() {
        return this.textRotate;
    }

    public final void setTextRotate(Double d) {
        this.textRotate = d;
    }

    public final PointAnnotationOptions withTextRotate(double textRotate) {
        this.textRotate = Double.valueOf(textRotate);
        return this;
    }

    public final Double getTextSize() {
        return this.textSize;
    }

    public final void setTextSize(Double d) {
        this.textSize = d;
    }

    public final PointAnnotationOptions withTextSize(double textSize) {
        this.textSize = Double.valueOf(textSize);
        return this;
    }

    public final TextTransform getTextTransform() {
        return this.textTransform;
    }

    public final void setTextTransform(TextTransform textTransform) {
        this.textTransform = textTransform;
    }

    public final PointAnnotationOptions withTextTransform(TextTransform textTransform) {
        Intrinsics.checkNotNullParameter(textTransform, "textTransform");
        this.textTransform = textTransform;
        return this;
    }

    public final String getIconColor() {
        return this.iconColor;
    }

    public final void setIconColor(String str) {
        this.iconColor = str;
    }

    public final PointAnnotationOptions withIconColor(String iconColor) {
        Intrinsics.checkNotNullParameter(iconColor, "iconColor");
        this.iconColor = iconColor;
        return this;
    }

    public final PointAnnotationOptions withIconColor(int iconColor) {
        this.iconColor = ColorUtils.INSTANCE.colorToRgbaString(iconColor);
        return this;
    }

    public final Double getIconEmissiveStrength() {
        return this.iconEmissiveStrength;
    }

    public final void setIconEmissiveStrength(Double d) {
        this.iconEmissiveStrength = d;
    }

    public final PointAnnotationOptions withIconEmissiveStrength(double iconEmissiveStrength) {
        this.iconEmissiveStrength = Double.valueOf(iconEmissiveStrength);
        return this;
    }

    public final Double getIconHaloBlur() {
        return this.iconHaloBlur;
    }

    public final void setIconHaloBlur(Double d) {
        this.iconHaloBlur = d;
    }

    public final PointAnnotationOptions withIconHaloBlur(double iconHaloBlur) {
        this.iconHaloBlur = Double.valueOf(iconHaloBlur);
        return this;
    }

    public final String getIconHaloColor() {
        return this.iconHaloColor;
    }

    public final void setIconHaloColor(String str) {
        this.iconHaloColor = str;
    }

    public final PointAnnotationOptions withIconHaloColor(String iconHaloColor) {
        Intrinsics.checkNotNullParameter(iconHaloColor, "iconHaloColor");
        this.iconHaloColor = iconHaloColor;
        return this;
    }

    public final PointAnnotationOptions withIconHaloColor(int iconHaloColor) {
        this.iconHaloColor = ColorUtils.INSTANCE.colorToRgbaString(iconHaloColor);
        return this;
    }

    public final Double getIconHaloWidth() {
        return this.iconHaloWidth;
    }

    public final void setIconHaloWidth(Double d) {
        this.iconHaloWidth = d;
    }

    public final PointAnnotationOptions withIconHaloWidth(double iconHaloWidth) {
        this.iconHaloWidth = Double.valueOf(iconHaloWidth);
        return this;
    }

    public final Double getIconOcclusionOpacity() {
        return this.iconOcclusionOpacity;
    }

    public final void setIconOcclusionOpacity(Double d) {
        this.iconOcclusionOpacity = d;
    }

    public final PointAnnotationOptions withIconOcclusionOpacity(double iconOcclusionOpacity) {
        this.iconOcclusionOpacity = Double.valueOf(iconOcclusionOpacity);
        return this;
    }

    public final Double getIconOpacity() {
        return this.iconOpacity;
    }

    public final void setIconOpacity(Double d) {
        this.iconOpacity = d;
    }

    public final PointAnnotationOptions withIconOpacity(double iconOpacity) {
        this.iconOpacity = Double.valueOf(iconOpacity);
        return this;
    }

    public final Double getSymbolZOffset() {
        return this.symbolZOffset;
    }

    public final void setSymbolZOffset(Double d) {
        this.symbolZOffset = d;
    }

    public final PointAnnotationOptions withSymbolZOffset(double symbolZOffset) {
        this.symbolZOffset = Double.valueOf(symbolZOffset);
        return this;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(String str) {
        this.textColor = str;
    }

    public final PointAnnotationOptions withTextColor(String textColor) {
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        this.textColor = textColor;
        return this;
    }

    public final PointAnnotationOptions withTextColor(int textColor) {
        this.textColor = ColorUtils.INSTANCE.colorToRgbaString(textColor);
        return this;
    }

    public final Double getTextEmissiveStrength() {
        return this.textEmissiveStrength;
    }

    public final void setTextEmissiveStrength(Double d) {
        this.textEmissiveStrength = d;
    }

    public final PointAnnotationOptions withTextEmissiveStrength(double textEmissiveStrength) {
        this.textEmissiveStrength = Double.valueOf(textEmissiveStrength);
        return this;
    }

    public final Double getTextHaloBlur() {
        return this.textHaloBlur;
    }

    public final void setTextHaloBlur(Double d) {
        this.textHaloBlur = d;
    }

    public final PointAnnotationOptions withTextHaloBlur(double textHaloBlur) {
        this.textHaloBlur = Double.valueOf(textHaloBlur);
        return this;
    }

    public final String getTextHaloColor() {
        return this.textHaloColor;
    }

    public final void setTextHaloColor(String str) {
        this.textHaloColor = str;
    }

    public final PointAnnotationOptions withTextHaloColor(String textHaloColor) {
        Intrinsics.checkNotNullParameter(textHaloColor, "textHaloColor");
        this.textHaloColor = textHaloColor;
        return this;
    }

    public final PointAnnotationOptions withTextHaloColor(int textHaloColor) {
        this.textHaloColor = ColorUtils.INSTANCE.colorToRgbaString(textHaloColor);
        return this;
    }

    public final Double getTextHaloWidth() {
        return this.textHaloWidth;
    }

    public final void setTextHaloWidth(Double d) {
        this.textHaloWidth = d;
    }

    public final PointAnnotationOptions withTextHaloWidth(double textHaloWidth) {
        this.textHaloWidth = Double.valueOf(textHaloWidth);
        return this;
    }

    public final Double getTextOcclusionOpacity() {
        return this.textOcclusionOpacity;
    }

    public final void setTextOcclusionOpacity(Double d) {
        this.textOcclusionOpacity = d;
    }

    public final PointAnnotationOptions withTextOcclusionOpacity(double textOcclusionOpacity) {
        this.textOcclusionOpacity = Double.valueOf(textOcclusionOpacity);
        return this;
    }

    public final Double getTextOpacity() {
        return this.textOpacity;
    }

    public final void setTextOpacity(Double d) {
        this.textOpacity = d;
    }

    public final PointAnnotationOptions withTextOpacity(double textOpacity) {
        this.textOpacity = Double.valueOf(textOpacity);
        return this;
    }

    public final String getIconColorUseTheme() {
        return this.iconColorUseTheme;
    }

    public final void setIconColorUseTheme(String str) {
        this.iconColorUseTheme = str;
    }

    public final PointAnnotationOptions withIconColorUseTheme(String iconColorUseTheme) {
        Intrinsics.checkNotNullParameter(iconColorUseTheme, "iconColorUseTheme");
        this.iconColorUseTheme = iconColorUseTheme;
        return this;
    }

    public final String getIconHaloColorUseTheme() {
        return this.iconHaloColorUseTheme;
    }

    public final void setIconHaloColorUseTheme(String str) {
        this.iconHaloColorUseTheme = str;
    }

    public final PointAnnotationOptions withIconHaloColorUseTheme(String iconHaloColorUseTheme) {
        Intrinsics.checkNotNullParameter(iconHaloColorUseTheme, "iconHaloColorUseTheme");
        this.iconHaloColorUseTheme = iconHaloColorUseTheme;
        return this;
    }

    public final String getTextColorUseTheme() {
        return this.textColorUseTheme;
    }

    public final void setTextColorUseTheme(String str) {
        this.textColorUseTheme = str;
    }

    public final PointAnnotationOptions withTextColorUseTheme(String textColorUseTheme) {
        Intrinsics.checkNotNullParameter(textColorUseTheme, "textColorUseTheme");
        this.textColorUseTheme = textColorUseTheme;
        return this;
    }

    public final String getTextHaloColorUseTheme() {
        return this.textHaloColorUseTheme;
    }

    public final void setTextHaloColorUseTheme(String str) {
        this.textHaloColorUseTheme = str;
    }

    public final PointAnnotationOptions withTextHaloColorUseTheme(String textHaloColorUseTheme) {
        Intrinsics.checkNotNullParameter(textHaloColorUseTheme, "textHaloColorUseTheme");
        this.textHaloColorUseTheme = textHaloColorUseTheme;
        return this;
    }

    public final PointAnnotationOptions withPoint(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.geometry = point;
        return this;
    }

    public final Point getPoint() {
        return this.geometry;
    }

    public final PointAnnotationOptions withGeometry(Point geometry) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        this.geometry = geometry;
        return this;
    }

    public final Point getGeometry() {
        return this.geometry;
    }

    public final Double getIconImageCrossFade() {
        return this.iconImageCrossFade;
    }

    public final void setIconImageCrossFade(Double d) {
        this.iconImageCrossFade = d;
    }

    @Deprecated(message = "Use PointAnnotationManager.iconImageCrossFadeTransition instead")
    public final PointAnnotationOptions withIconImageCrossFade(double iconImageCrossFade) {
        this.iconImageCrossFade = Double.valueOf(iconImageCrossFade);
        return this;
    }

    public final boolean getIsDraggable() {
        return this.isDraggable;
    }

    public final PointAnnotationOptions withDraggable(boolean draggable) {
        this.isDraggable = draggable;
        return this;
    }

    public final PointAnnotationOptions withData(JsonElement jsonElement) {
        Intrinsics.checkNotNullParameter(jsonElement, "jsonElement");
        this.data = jsonElement;
        return this;
    }

    public final JsonElement getData() {
        return this.data;
    }

    @Override
    public PointAnnotation build(String id, AnnotationManager<Point, PointAnnotation, ?, ?, ?, ?, ?> annotationManager) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(annotationManager, "annotationManager");
        if (this.geometry == null) {
            throw new MapboxAnnotationException("geometry field is required");
        }
        JsonObject jsonObject = new JsonObject();
        IconAnchor iconAnchor = this.iconAnchor;
        if (iconAnchor != null) {
            jsonObject.addProperty(PROPERTY_ICON_ANCHOR, iconAnchor.getValue());
        }
        String str = this.iconImage;
        if (str != null) {
            jsonObject.addProperty(PROPERTY_ICON_IMAGE, str);
        }
        List<Double> list = this.iconOffset;
        if (list != null) {
            jsonObject.add(PROPERTY_ICON_OFFSET, ConvertUtils.INSTANCE.convertDoubleArray(list));
        }
        Double d = this.iconRotate;
        if (d != null) {
            jsonObject.addProperty(PROPERTY_ICON_ROTATE, Double.valueOf(d.doubleValue()));
        }
        Double d2 = this.iconSize;
        if (d2 != null) {
            jsonObject.addProperty(PROPERTY_ICON_SIZE, Double.valueOf(d2.doubleValue()));
        }
        IconTextFit iconTextFit = this.iconTextFit;
        if (iconTextFit != null) {
            jsonObject.addProperty(PROPERTY_ICON_TEXT_FIT, iconTextFit.getValue());
        }
        List<Double> list2 = this.iconTextFitPadding;
        if (list2 != null) {
            jsonObject.add(PROPERTY_ICON_TEXT_FIT_PADDING, ConvertUtils.INSTANCE.convertDoubleArray(list2));
        }
        Double d3 = this.symbolSortKey;
        if (d3 != null) {
            jsonObject.addProperty(PROPERTY_SYMBOL_SORT_KEY, Double.valueOf(d3.doubleValue()));
        }
        TextAnchor textAnchor = this.textAnchor;
        if (textAnchor != null) {
            jsonObject.addProperty(PROPERTY_TEXT_ANCHOR, textAnchor.getValue());
        }
        String str2 = this.textField;
        if (str2 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_FIELD, str2);
        }
        TextJustify textJustify = this.textJustify;
        if (textJustify != null) {
            jsonObject.addProperty(PROPERTY_TEXT_JUSTIFY, textJustify.getValue());
        }
        Double d4 = this.textLetterSpacing;
        if (d4 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_LETTER_SPACING, Double.valueOf(d4.doubleValue()));
        }
        Double d5 = this.textLineHeight;
        if (d5 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_LINE_HEIGHT, Double.valueOf(d5.doubleValue()));
        }
        Double d6 = this.textMaxWidth;
        if (d6 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_MAX_WIDTH, Double.valueOf(d6.doubleValue()));
        }
        List<Double> list3 = this.textOffset;
        if (list3 != null) {
            jsonObject.add(PROPERTY_TEXT_OFFSET, ConvertUtils.INSTANCE.convertDoubleArray(list3));
        }
        Double d7 = this.textRadialOffset;
        if (d7 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_RADIAL_OFFSET, Double.valueOf(d7.doubleValue()));
        }
        Double d8 = this.textRotate;
        if (d8 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_ROTATE, Double.valueOf(d8.doubleValue()));
        }
        Double d9 = this.textSize;
        if (d9 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_SIZE, Double.valueOf(d9.doubleValue()));
        }
        TextTransform textTransform = this.textTransform;
        if (textTransform != null) {
            jsonObject.addProperty(PROPERTY_TEXT_TRANSFORM, textTransform.getValue());
        }
        String str3 = this.iconColor;
        if (str3 != null) {
            jsonObject.addProperty(PROPERTY_ICON_COLOR, str3);
        }
        Double d10 = this.iconEmissiveStrength;
        if (d10 != null) {
            jsonObject.addProperty(PROPERTY_ICON_EMISSIVE_STRENGTH, Double.valueOf(d10.doubleValue()));
        }
        Double d11 = this.iconHaloBlur;
        if (d11 != null) {
            jsonObject.addProperty(PROPERTY_ICON_HALO_BLUR, Double.valueOf(d11.doubleValue()));
        }
        String str4 = this.iconHaloColor;
        if (str4 != null) {
            jsonObject.addProperty(PROPERTY_ICON_HALO_COLOR, str4);
        }
        Double d12 = this.iconHaloWidth;
        if (d12 != null) {
            jsonObject.addProperty(PROPERTY_ICON_HALO_WIDTH, Double.valueOf(d12.doubleValue()));
        }
        Double d13 = this.iconOcclusionOpacity;
        if (d13 != null) {
            jsonObject.addProperty(PROPERTY_ICON_OCCLUSION_OPACITY, Double.valueOf(d13.doubleValue()));
        }
        Double d14 = this.iconOpacity;
        if (d14 != null) {
            jsonObject.addProperty(PROPERTY_ICON_OPACITY, Double.valueOf(d14.doubleValue()));
        }
        Double d15 = this.symbolZOffset;
        if (d15 != null) {
            jsonObject.addProperty(PROPERTY_SYMBOL_Z_OFFSET, Double.valueOf(d15.doubleValue()));
        }
        String str5 = this.textColor;
        if (str5 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_COLOR, str5);
        }
        Double d16 = this.textEmissiveStrength;
        if (d16 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_EMISSIVE_STRENGTH, Double.valueOf(d16.doubleValue()));
        }
        Double d17 = this.textHaloBlur;
        if (d17 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_HALO_BLUR, Double.valueOf(d17.doubleValue()));
        }
        String str6 = this.textHaloColor;
        if (str6 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_HALO_COLOR, str6);
        }
        Double d18 = this.textHaloWidth;
        if (d18 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_HALO_WIDTH, Double.valueOf(d18.doubleValue()));
        }
        Double d19 = this.textOcclusionOpacity;
        if (d19 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_OCCLUSION_OPACITY, Double.valueOf(d19.doubleValue()));
        }
        Double d20 = this.textOpacity;
        if (d20 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_OPACITY, Double.valueOf(d20.doubleValue()));
        }
        String str7 = this.iconColorUseTheme;
        if (str7 != null) {
            jsonObject.addProperty(PROPERTY_ICON_COLOR_USE_THEME, str7);
        }
        String str8 = this.iconHaloColorUseTheme;
        if (str8 != null) {
            jsonObject.addProperty(PROPERTY_ICON_HALO_COLOR_USE_THEME, str8);
        }
        String str9 = this.textColorUseTheme;
        if (str9 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_COLOR_USE_THEME, str9);
        }
        String str10 = this.textHaloColorUseTheme;
        if (str10 != null) {
            jsonObject.addProperty(PROPERTY_TEXT_HALO_COLOR_USE_THEME, str10);
        }
        Point point = this.geometry;
        Intrinsics.checkNotNull(point);
        PointAnnotation pointAnnotation = new PointAnnotation(id, annotationManager, jsonObject, point);
        Bitmap bitmap = this.iconImageBitmap;
        if (bitmap != null) {
            pointAnnotation.setIconImageBitmap(bitmap);
        }
        pointAnnotation.setDraggable(this.isDraggable);
        pointAnnotation.setData(this.data);
        return pointAnnotation;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationOptions$Companion;", "", "()V", "PROPERTY_ICON_ANCHOR", "", "PROPERTY_ICON_COLOR", "PROPERTY_ICON_COLOR_USE_THEME", "PROPERTY_ICON_EMISSIVE_STRENGTH", "PROPERTY_ICON_HALO_BLUR", "PROPERTY_ICON_HALO_COLOR", "PROPERTY_ICON_HALO_COLOR_USE_THEME", "PROPERTY_ICON_HALO_WIDTH", "PROPERTY_ICON_IMAGE", "PROPERTY_ICON_IMAGE_CROSS_FADE", "PROPERTY_ICON_OCCLUSION_OPACITY", "PROPERTY_ICON_OFFSET", "PROPERTY_ICON_OPACITY", "PROPERTY_ICON_ROTATE", "PROPERTY_ICON_SIZE", "PROPERTY_ICON_TEXT_FIT", "PROPERTY_ICON_TEXT_FIT_PADDING", "PROPERTY_IS_DRAGGABLE", "PROPERTY_SYMBOL_SORT_KEY", "PROPERTY_SYMBOL_Z_OFFSET", "PROPERTY_TEXT_ANCHOR", "PROPERTY_TEXT_COLOR", "PROPERTY_TEXT_COLOR_USE_THEME", "PROPERTY_TEXT_EMISSIVE_STRENGTH", "PROPERTY_TEXT_FIELD", "PROPERTY_TEXT_HALO_BLUR", "PROPERTY_TEXT_HALO_COLOR", "PROPERTY_TEXT_HALO_COLOR_USE_THEME", "PROPERTY_TEXT_HALO_WIDTH", "PROPERTY_TEXT_JUSTIFY", "PROPERTY_TEXT_LETTER_SPACING", "PROPERTY_TEXT_LINE_HEIGHT", "PROPERTY_TEXT_MAX_WIDTH", "PROPERTY_TEXT_OCCLUSION_OPACITY", "PROPERTY_TEXT_OFFSET", "PROPERTY_TEXT_OPACITY", "PROPERTY_TEXT_RADIAL_OFFSET", "PROPERTY_TEXT_ROTATE", "PROPERTY_TEXT_SIZE", "PROPERTY_TEXT_TRANSFORM", "fromFeature", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationOptions;", "feature", "Lcom/mapbox/geojson/Feature;", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PointAnnotationOptions fromFeature(Feature feature) {
            Intrinsics.checkNotNullParameter(feature, "feature");
            if (feature.geometry() == null) {
                throw new MapboxAnnotationException("geometry field is required");
            }
            if (!(feature.geometry() instanceof Point)) {
                return null;
            }
            PointAnnotationOptions pointAnnotationOptions = new PointAnnotationOptions();
            Geometry geometry = feature.geometry();
            Intrinsics.checkNotNull(geometry, "null cannot be cast to non-null type com.mapbox.geojson.Point");
            pointAnnotationOptions.geometry = (Point) geometry;
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_ANCHOR)) {
                IconAnchor.Companion companion = IconAnchor.INSTANCE;
                String asString = feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_ANCHOR).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString, "feature.getProperty(PROPERTY_ICON_ANCHOR).asString");
                pointAnnotationOptions.setIconAnchor(companion.valueOf(asString));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE)) {
                pointAnnotationOptions.setIconImage(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_OFFSET)) {
                pointAnnotationOptions.setIconOffset(ConvertUtils.INSTANCE.toDoubleArray(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_OFFSET).getAsJsonArray()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_ROTATE)) {
                pointAnnotationOptions.setIconRotate(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_ROTATE).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_SIZE)) {
                pointAnnotationOptions.setIconSize(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_SIZE).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT)) {
                IconTextFit.Companion companion2 = IconTextFit.INSTANCE;
                String asString2 = feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString2, "feature.getProperty(PROP…Y_ICON_TEXT_FIT).asString");
                pointAnnotationOptions.setIconTextFit(companion2.valueOf(asString2));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING)) {
                pointAnnotationOptions.setIconTextFitPadding(ConvertUtils.INSTANCE.toDoubleArray(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING).getAsJsonArray()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY)) {
                pointAnnotationOptions.setSymbolSortKey(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR)) {
                TextAnchor.Companion companion3 = TextAnchor.INSTANCE;
                String asString3 = feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString3, "feature.getProperty(PROPERTY_TEXT_ANCHOR).asString");
                pointAnnotationOptions.setTextAnchor(companion3.valueOf(asString3));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_FIELD)) {
                pointAnnotationOptions.setTextField(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_FIELD).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY)) {
                TextJustify.Companion companion4 = TextJustify.INSTANCE;
                String asString4 = feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString4, "feature.getProperty(PROP…TY_TEXT_JUSTIFY).asString");
                pointAnnotationOptions.setTextJustify(companion4.valueOf(asString4));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING)) {
                pointAnnotationOptions.setTextLetterSpacing(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT)) {
                pointAnnotationOptions.setTextLineHeight(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH)) {
                pointAnnotationOptions.setTextMaxWidth(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_OFFSET)) {
                pointAnnotationOptions.setTextOffset(ConvertUtils.INSTANCE.toDoubleArray(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_OFFSET).getAsJsonArray()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET)) {
                pointAnnotationOptions.setTextRadialOffset(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_ROTATE)) {
                pointAnnotationOptions.setTextRotate(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_ROTATE).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_SIZE)) {
                pointAnnotationOptions.setTextSize(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_SIZE).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM)) {
                TextTransform.Companion companion5 = TextTransform.INSTANCE;
                String asString5 = feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString5, "feature.getProperty(PROP…_TEXT_TRANSFORM).asString");
                pointAnnotationOptions.setTextTransform(companion5.valueOf(asString5));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR)) {
                pointAnnotationOptions.setIconColor(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH)) {
                pointAnnotationOptions.setIconEmissiveStrength(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR)) {
                pointAnnotationOptions.setIconHaloBlur(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR)) {
                pointAnnotationOptions.setIconHaloColor(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH)) {
                pointAnnotationOptions.setIconHaloWidth(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY)) {
                pointAnnotationOptions.setIconOcclusionOpacity(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_OPACITY)) {
                pointAnnotationOptions.setIconOpacity(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_OPACITY).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET)) {
                pointAnnotationOptions.setSymbolZOffset(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR)) {
                pointAnnotationOptions.setTextColor(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH)) {
                pointAnnotationOptions.setTextEmissiveStrength(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR)) {
                pointAnnotationOptions.setTextHaloBlur(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR)) {
                pointAnnotationOptions.setTextHaloColor(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH)) {
                pointAnnotationOptions.setTextHaloWidth(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY)) {
                pointAnnotationOptions.setTextOcclusionOpacity(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_OPACITY)) {
                pointAnnotationOptions.setTextOpacity(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_OPACITY).getAsDouble()));
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME)) {
                pointAnnotationOptions.setIconColorUseTheme(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME)) {
                pointAnnotationOptions.setIconHaloColorUseTheme(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME)) {
                pointAnnotationOptions.setTextColorUseTheme(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME)) {
                pointAnnotationOptions.setTextHaloColorUseTheme(feature.getProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME).getAsString());
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_IS_DRAGGABLE)) {
                pointAnnotationOptions.isDraggable = feature.getProperty(PointAnnotationOptions.PROPERTY_IS_DRAGGABLE).getAsBoolean();
            }
            if (feature.hasProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE_CROSS_FADE)) {
                pointAnnotationOptions.setIconImageCrossFade(Double.valueOf(feature.getProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE_CROSS_FADE).getAsDouble()));
            }
            return pointAnnotationOptions;
        }
    }
}
