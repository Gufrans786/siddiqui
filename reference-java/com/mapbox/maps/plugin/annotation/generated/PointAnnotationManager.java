package com.mapbox.maps.plugin.annotation.generated;

import android.graphics.Bitmap;
import com.facebook.react.views.text.ReactBaseTextShadowNode;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.generated.SymbolLayer;
import com.mapbox.maps.extension.style.layers.properties.generated.IconAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.IconPitchAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.IconRotationAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.IconTextFit;
import com.mapbox.maps.extension.style.layers.properties.generated.IconTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.SymbolElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.SymbolPlacement;
import com.mapbox.maps.extension.style.layers.properties.generated.SymbolZOrder;
import com.mapbox.maps.extension.style.layers.properties.generated.TextAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.TextJustify;
import com.mapbox.maps.extension.style.layers.properties.generated.TextPitchAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.TextRotationAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.TextTransform;
import com.mapbox.maps.extension.style.layers.properties.generated.TextTranslateAnchor;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.plugin.annotation.AnnotationConfig;
import com.mapbox.maps.plugin.annotation.AnnotationManagerImpl;
import com.mapbox.maps.plugin.annotation.ClusterAnnotationManager;
import com.mapbox.maps.plugin.annotation.OnClusterClickListener;
import com.mapbox.maps.plugin.annotation.OnClusterLongClickListener;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 Õ\u000222\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00012\u00020\n:\u0002Õ\u0002B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u0017\u0010Í\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030d2\b\u0010Î\u0002\u001a\u00030Ï\u0002J\u0016\u0010Í\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030d2\u0007\u0010Ð\u0002\u001a\u000201J\t\u0010Ñ\u0002\u001a\u000201H\u0016J\u0013\u0010Ò\u0002\u001a\u00030Ó\u00022\u0007\u0010Ô\u0002\u001a\u000201H\u0014R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R(\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u001f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R*\u0010&\u001a\u0004\u0018\u00010%2\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010%8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R(\u0010,\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R(\u00102\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b3\u00104\"\u0004\b5\u00106R.\u00107\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b8\u00109\u001a\u0004\b:\u00104\"\u0004\b;\u00106R(\u0010<\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010.\"\u0004\b>\u00100R(\u0010?\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010.\"\u0004\bA\u00100R*\u0010B\u001a\u0004\u0018\u00010%2\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010%8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010(\"\u0004\bD\u0010*R(\u0010E\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bF\u00104\"\u0004\bG\u00106R.\u0010H\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\bI\u00109\u001a\u0004\bJ\u00104\"\u0004\bK\u00106R(\u0010L\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010.\"\u0004\bN\u00100R(\u0010O\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010\u001c\"\u0004\bQ\u0010\u001eR(\u0010R\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bS\u00104\"\u0004\bT\u00106R(\u0010V\u001a\u0004\u0018\u00010U2\b\u0010\u0018\u001a\u0004\u0018\u00010U@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR(\u0010[\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\\\u0010.\"\u0004\b]\u00100R(\u0010^\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b_\u0010\u001c\"\u0004\b`\u0010\u001eR(\u0010a\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bb\u0010.\"\u0004\bc\u00100R4\u0010e\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bf\u0010\u0014\"\u0004\bg\u0010hR(\u0010i\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bj\u0010.\"\u0004\bk\u00100R(\u0010l\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bm\u0010\u001c\"\u0004\bn\u0010\u001eR(\u0010o\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bp\u0010.\"\u0004\bq\u00100R(\u0010s\u001a\u0004\u0018\u00010r2\b\u0010\u0018\u001a\u0004\u0018\u00010r8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR(\u0010x\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\by\u0010.\"\u0004\bz\u00100R)\u0010|\u001a\u0004\u0018\u00010{2\b\u0010\u0018\u001a\u0004\u0018\u00010{8F@FX\u0086\u000e¢\u0006\r\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R+\u0010\u0081\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0082\u0001\u0010.\"\u0005\b\u0083\u0001\u00100R>\u0010\u0084\u0001\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\b\u0085\u0001\u00109\u001a\u0005\b\u0086\u0001\u0010\u0014\"\u0005\b\u0087\u0001\u0010hR/\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010\u0088\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R7\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u008f\u0001\u0010\u0014\"\u0005\b\u0090\u0001\u0010hR7\u0010\u0091\u0001\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0092\u0001\u0010\u0014\"\u0005\b\u0093\u0001\u0010hR/\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010\u0094\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R/\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u009a\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010\u009a\u00018V@VX\u0096\u000e¢\u0006\u0010\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0006\b\u009e\u0001\u0010\u009f\u0001R+\u0010 \u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¡\u0001\u0010.\"\u0005\b¢\u0001\u00100R+\u0010£\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¤\u0001\u0010.\"\u0005\b¥\u0001\u00100R+\u0010¦\u0001\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b§\u0001\u00104\"\u0005\b¨\u0001\u00106R+\u0010©\u0001\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bª\u0001\u0010\u001c\"\u0005\b«\u0001\u0010\u001eR6\u0010\u00ad\u0001\u001a\u0005\u0018\u00010¬\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010¬\u00018F@FX\u0087\u000e¢\u0006\u0017\u0012\u0005\b®\u0001\u00109\u001a\u0006\b¯\u0001\u0010°\u0001\"\u0006\b±\u0001\u0010²\u0001R/\u0010´\u0001\u001a\u0005\u0018\u00010³\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010³\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bµ\u0001\u0010¶\u0001\"\u0006\b·\u0001\u0010¸\u0001R+\u0010¹\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bº\u0001\u0010.\"\u0005\b»\u0001\u00100R+\u0010¼\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b½\u0001\u0010.\"\u0005\b¾\u0001\u00100R+\u0010¿\u0001\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bÀ\u0001\u0010\u001c\"\u0005\bÁ\u0001\u0010\u001eR2\u0010Â\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\bÃ\u0001\u00109\u001a\u0005\bÄ\u0001\u0010.\"\u0005\bÅ\u0001\u00100R/\u0010Ç\u0001\u001a\u0005\u0018\u00010Æ\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010Æ\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÈ\u0001\u0010É\u0001\"\u0006\bÊ\u0001\u0010Ë\u0001R+\u0010Ì\u0001\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bÍ\u0001\u0010\u001c\"\u0005\bÎ\u0001\u0010\u001eR/\u0010Ð\u0001\u001a\u0005\u0018\u00010Ï\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010Ï\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÑ\u0001\u0010Ò\u0001\"\u0006\bÓ\u0001\u0010Ô\u0001R-\u0010Õ\u0001\u001a\u0004\u0018\u00010%2\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010%8G@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bÖ\u0001\u0010(\"\u0005\b×\u0001\u0010*R+\u0010Ø\u0001\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bÙ\u0001\u00104\"\u0005\bÚ\u0001\u00106R2\u0010Û\u0001\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\bÜ\u0001\u00109\u001a\u0005\bÝ\u0001\u00104\"\u0005\bÞ\u0001\u00106R+\u0010ß\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bà\u0001\u0010.\"\u0005\bá\u0001\u00100R+\u0010â\u0001\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bã\u0001\u00104\"\u0005\bä\u0001\u00106R7\u0010å\u0001\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bæ\u0001\u0010\u0014\"\u0005\bç\u0001\u0010hR+\u0010è\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bé\u0001\u0010.\"\u0005\bê\u0001\u00100R-\u0010ë\u0001\u001a\u0004\u0018\u00010%2\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010%8G@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bì\u0001\u0010(\"\u0005\bí\u0001\u0010*R+\u0010î\u0001\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bï\u0001\u00104\"\u0005\bð\u0001\u00106R2\u0010ñ\u0001\u001a\u0004\u0018\u0001012\b\u0010\u0018\u001a\u0004\u0018\u0001018F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\bò\u0001\u00109\u001a\u0005\bó\u0001\u00104\"\u0005\bô\u0001\u00106R+\u0010õ\u0001\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bö\u0001\u0010.\"\u0005\b÷\u0001\u00100R+\u0010ø\u0001\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bù\u0001\u0010\u001c\"\u0005\bú\u0001\u0010\u001eR/\u0010ü\u0001\u001a\u0005\u0018\u00010û\u00012\t\u0010\u0018\u001a\u0005\u0018\u00010û\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bý\u0001\u0010þ\u0001\"\u0006\bÿ\u0001\u0010\u0080\u0002R+\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0082\u0002\u0010\u001c\"\u0005\b\u0083\u0002\u0010\u001eR+\u0010\u0084\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0085\u0002\u0010.\"\u0005\b\u0086\u0002\u00100R+\u0010\u0087\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0088\u0002\u0010.\"\u0005\b\u0089\u0002\u00100R+\u0010\u008a\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u008b\u0002\u0010.\"\u0005\b\u008c\u0002\u00100R+\u0010\u008d\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u008e\u0002\u0010.\"\u0005\b\u008f\u0002\u00100R+\u0010\u0090\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0091\u0002\u0010.\"\u0005\b\u0092\u0002\u00100R7\u0010\u0093\u0002\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0094\u0002\u0010\u0014\"\u0005\b\u0095\u0002\u0010hR+\u0010\u0096\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0097\u0002\u0010.\"\u0005\b\u0098\u0002\u00100R+\u0010\u0099\u0002\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u009a\u0002\u0010\u001c\"\u0005\b\u009b\u0002\u0010\u001eR+\u0010\u009c\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u009d\u0002\u0010.\"\u0005\b\u009e\u0002\u00100R/\u0010 \u0002\u001a\u0005\u0018\u00010\u009f\u00022\t\u0010\u0018\u001a\u0005\u0018\u00010\u009f\u00028F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b¡\u0002\u0010¢\u0002\"\u0006\b£\u0002\u0010¤\u0002R+\u0010¥\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¦\u0002\u0010.\"\u0005\b§\u0002\u00100R+\u0010¨\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b©\u0002\u0010.\"\u0005\bª\u0002\u00100R/\u0010¬\u0002\u001a\u0005\u0018\u00010«\u00022\t\u0010\u0018\u001a\u0005\u0018\u00010«\u00028F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u00ad\u0002\u0010®\u0002\"\u0006\b¯\u0002\u0010°\u0002R+\u0010±\u0002\u001a\u0004\u0018\u00010+2\b\u0010\u0018\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b²\u0002\u0010.\"\u0005\b³\u0002\u00100R>\u0010´\u0002\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0087\u000e¢\u0006\u0015\u0012\u0005\bµ\u0002\u00109\u001a\u0005\b¶\u0002\u0010\u0014\"\u0005\b·\u0002\u0010hR/\u0010¹\u0002\u001a\u0005\u0018\u00010¸\u00022\t\u0010\u0018\u001a\u0005\u0018\u00010¸\u00028F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bº\u0002\u0010»\u0002\"\u0006\b¼\u0002\u0010½\u0002R7\u0010¾\u0002\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¿\u0002\u0010\u0014\"\u0005\bÀ\u0002\u0010hR/\u0010Â\u0002\u001a\u0005\u0018\u00010Á\u00022\t\u0010\u0018\u001a\u0005\u0018\u00010Á\u00028F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÃ\u0002\u0010Ä\u0002\"\u0006\bÅ\u0002\u0010Æ\u0002R7\u0010Ç\u0002\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bÈ\u0002\u0010\u0014\"\u0005\bÉ\u0002\u0010hR7\u0010Ê\u0002\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010d2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010d8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bË\u0002\u0010\u0014\"\u0005\bÌ\u0002\u0010h¨\u0006Ö\u0002"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationManager;", "Lcom/mapbox/maps/plugin/annotation/AnnotationManagerImpl;", "Lcom/mapbox/geojson/Point;", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotation;", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationOptions;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPointAnnotationDragListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPointAnnotationClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPointAnnotationLongClickListener;", "Lcom/mapbox/maps/plugin/annotation/generated/OnPointAnnotationInteractionListener;", "Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;", "Lcom/mapbox/maps/plugin/annotation/ClusterAnnotationManager;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "annotationConfig", "Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/annotation/AnnotationConfig;)V", "clusterClickListeners", "", "Lcom/mapbox/maps/plugin/annotation/OnClusterClickListener;", "getClusterClickListeners", "()Ljava/util/List;", "clusterLongClickListeners", "Lcom/mapbox/maps/plugin/annotation/OnClusterLongClickListener;", "getClusterLongClickListeners", "value", "", "iconAllowOverlap", "getIconAllowOverlap", "()Ljava/lang/Boolean;", "setIconAllowOverlap", "(Ljava/lang/Boolean;)V", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "iconAnchor", "getIconAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "setIconAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;)V", "", "iconColorInt", "getIconColorInt", "()Ljava/lang/Integer;", "setIconColorInt", "(Ljava/lang/Integer;)V", "", "iconColorSaturation", "getIconColorSaturation", "()Ljava/lang/Double;", "setIconColorSaturation", "(Ljava/lang/Double;)V", "", "iconColorString", "getIconColorString", "()Ljava/lang/String;", "setIconColorString", "(Ljava/lang/String;)V", "iconColorUseTheme", "getIconColorUseTheme$annotations", "()V", "getIconColorUseTheme", "setIconColorUseTheme", "iconEmissiveStrength", "getIconEmissiveStrength", "setIconEmissiveStrength", "iconHaloBlur", "getIconHaloBlur", "setIconHaloBlur", "iconHaloColorInt", "getIconHaloColorInt", "setIconHaloColorInt", "iconHaloColorString", "getIconHaloColorString", "setIconHaloColorString", "iconHaloColorUseTheme", "getIconHaloColorUseTheme$annotations", "getIconHaloColorUseTheme", "setIconHaloColorUseTheme", "iconHaloWidth", "getIconHaloWidth", "setIconHaloWidth", "iconIgnorePlacement", "getIconIgnorePlacement", "setIconIgnorePlacement", "iconImage", "getIconImage", "setIconImage", "Landroid/graphics/Bitmap;", "iconImageBitmap", "getIconImageBitmap", "()Landroid/graphics/Bitmap;", "setIconImageBitmap", "(Landroid/graphics/Bitmap;)V", "iconImageCrossFade", "getIconImageCrossFade", "setIconImageCrossFade", "iconKeepUpright", "getIconKeepUpright", "setIconKeepUpright", "iconOcclusionOpacity", "getIconOcclusionOpacity", "setIconOcclusionOpacity", "", "iconOffset", "getIconOffset", "setIconOffset", "(Ljava/util/List;)V", "iconOpacity", "getIconOpacity", "setIconOpacity", "iconOptional", "getIconOptional", "setIconOptional", "iconPadding", "getIconPadding", "setIconPadding", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconPitchAlignment;", "iconPitchAlignment", "getIconPitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconPitchAlignment;", "setIconPitchAlignment", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconPitchAlignment;)V", "iconRotate", "getIconRotate", "setIconRotate", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconRotationAlignment;", "iconRotationAlignment", "getIconRotationAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconRotationAlignment;", "setIconRotationAlignment", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconRotationAlignment;)V", "iconSize", "getIconSize", "setIconSize", "iconSizeScaleRange", "getIconSizeScaleRange$annotations", "getIconSizeScaleRange", "setIconSizeScaleRange", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "iconTextFit", "getIconTextFit", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "setIconTextFit", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;)V", "iconTextFitPadding", "getIconTextFitPadding", "setIconTextFitPadding", "iconTranslate", "getIconTranslate", "setIconTranslate", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTranslateAnchor;", "iconTranslateAnchor", "getIconTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTranslateAnchor;", "setIconTranslateAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTranslateAnchor;)V", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "layerFilter", "getLayerFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "setLayerFilter", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "maxZoom", "getMaxZoom", "setMaxZoom", "minZoom", "getMinZoom", "setMinZoom", "slot", "getSlot", "setSlot", "symbolAvoidEdges", "getSymbolAvoidEdges", "setSymbolAvoidEdges", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolElevationReference;", "symbolElevationReference", "getSymbolElevationReference$annotations", "getSymbolElevationReference", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolElevationReference;", "setSymbolElevationReference", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolElevationReference;)V", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolPlacement;", "symbolPlacement", "getSymbolPlacement", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolPlacement;", "setSymbolPlacement", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolPlacement;)V", "symbolSortKey", "getSymbolSortKey", "setSymbolSortKey", "symbolSpacing", "getSymbolSpacing", "setSymbolSpacing", "symbolZElevate", "getSymbolZElevate", "setSymbolZElevate", "symbolZOffset", "getSymbolZOffset$annotations", "getSymbolZOffset", "setSymbolZOffset", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolZOrder;", "symbolZOrder", "getSymbolZOrder", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolZOrder;", "setSymbolZOrder", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolZOrder;)V", "textAllowOverlap", "getTextAllowOverlap", "setTextAllowOverlap", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", "textAnchor", "getTextAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", "setTextAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;)V", "textColorInt", "getTextColorInt", "setTextColorInt", "textColorString", "getTextColorString", "setTextColorString", "textColorUseTheme", "getTextColorUseTheme$annotations", "getTextColorUseTheme", "setTextColorUseTheme", "textEmissiveStrength", "getTextEmissiveStrength", "setTextEmissiveStrength", "textField", "getTextField", "setTextField", "textFont", "getTextFont", "setTextFont", "textHaloBlur", "getTextHaloBlur", "setTextHaloBlur", "textHaloColorInt", "getTextHaloColorInt", "setTextHaloColorInt", "textHaloColorString", "getTextHaloColorString", "setTextHaloColorString", "textHaloColorUseTheme", "getTextHaloColorUseTheme$annotations", "getTextHaloColorUseTheme", "setTextHaloColorUseTheme", "textHaloWidth", "getTextHaloWidth", "setTextHaloWidth", "textIgnorePlacement", "getTextIgnorePlacement", "setTextIgnorePlacement", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "textJustify", "getTextJustify", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "setTextJustify", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;)V", "textKeepUpright", "getTextKeepUpright", "setTextKeepUpright", "textLetterSpacing", "getTextLetterSpacing", "setTextLetterSpacing", "textLineHeight", "getTextLineHeight", "setTextLineHeight", "textMaxAngle", "getTextMaxAngle", "setTextMaxAngle", "textMaxWidth", "getTextMaxWidth", "setTextMaxWidth", "textOcclusionOpacity", "getTextOcclusionOpacity", "setTextOcclusionOpacity", "textOffset", "getTextOffset", "setTextOffset", "textOpacity", "getTextOpacity", "setTextOpacity", "textOptional", "getTextOptional", "setTextOptional", "textPadding", "getTextPadding", "setTextPadding", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextPitchAlignment;", "textPitchAlignment", "getTextPitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextPitchAlignment;", "setTextPitchAlignment", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextPitchAlignment;)V", "textRadialOffset", "getTextRadialOffset", "setTextRadialOffset", "textRotate", "getTextRotate", "setTextRotate", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextRotationAlignment;", "textRotationAlignment", "getTextRotationAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextRotationAlignment;", "setTextRotationAlignment", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextRotationAlignment;)V", "textSize", "getTextSize", "setTextSize", "textSizeScaleRange", "getTextSizeScaleRange$annotations", "getTextSizeScaleRange", "setTextSizeScaleRange", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", ReactBaseTextShadowNode.PROP_TEXT_TRANSFORM, "getTextTransform", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", "setTextTransform", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;)V", "textTranslate", "getTextTranslate", "setTextTranslate", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTranslateAnchor;", "textTranslateAnchor", "getTextTranslateAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTranslateAnchor;", "setTextTranslateAnchor", "(Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTranslateAnchor;)V", "textVariableAnchor", "getTextVariableAnchor", "setTextVariableAnchor", "textWritingMode", "getTextWritingMode", "setTextWritingMode", "create", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "json", "getAnnotationIdKey", "setDataDrivenPropertyIsUsed", "", "property", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PointAnnotationManager extends AnnotationManagerImpl<Point, PointAnnotation, PointAnnotationOptions, OnPointAnnotationDragListener, OnPointAnnotationClickListener, OnPointAnnotationLongClickListener, OnPointAnnotationInteractionListener, SymbolLayer> implements ClusterAnnotationManager {

    public static final Companion INSTANCE = new Companion(null);
    private static AtomicLong ID_GENERATOR = new AtomicLong(0);
    private final List<OnClusterClickListener> clusterClickListeners;
    private final List<OnClusterLongClickListener> clusterLongClickListeners;
    private Bitmap iconImageBitmap;

    public static void getIconColorUseTheme$annotations() {
    }

    public static void getIconHaloColorUseTheme$annotations() {
    }

    public static void getIconSizeScaleRange$annotations() {
    }

    public static void getSymbolElevationReference$annotations() {
    }

    public static void getSymbolZOffset$annotations() {
    }

    public static void getTextColorUseTheme$annotations() {
    }

    public static void getTextHaloColorUseTheme$annotations() {
    }

    public static void getTextSizeScaleRange$annotations() {
    }

    public PointAnnotationManager(MapDelegateProvider mapDelegateProvider, AnnotationConfig annotationConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, (i & 2) != 0 ? null : annotationConfig);
    }

    @Override
    public boolean addClusterClickListener(OnClusterClickListener onClusterClickListener) {
        return ClusterAnnotationManager.DefaultImpls.addClusterClickListener(this, onClusterClickListener);
    }

    @Override
    public boolean addClusterLongClickListener(OnClusterLongClickListener onClusterLongClickListener) {
        return ClusterAnnotationManager.DefaultImpls.addClusterLongClickListener(this, onClusterLongClickListener);
    }

    @Override
    public boolean removeClusterClickListener(OnClusterClickListener onClusterClickListener) {
        return ClusterAnnotationManager.DefaultImpls.removeClusterClickListener(this, onClusterClickListener);
    }

    @Override
    public boolean removeClusterLongClickListener(OnClusterLongClickListener onClusterLongClickListener) {
        return ClusterAnnotationManager.DefaultImpls.removeClusterLongClickListener(this, onClusterLongClickListener);
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function2<String, String, SymbolLayer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2, SymbolLayer.class, "<init>", "<init>(Ljava/lang/String;Ljava/lang/String;)V", 0);
        }

        @Override
        public final SymbolLayer invoke(String p0, String p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return new SymbolLayer(p0, p1);
        }
    }

    public PointAnnotationManager(MapDelegateProvider delegateProvider, AnnotationConfig annotationConfig) {
        super(delegateProvider, annotationConfig, ID_GENERATOR.incrementAndGet(), "pointAnnotation", AnonymousClass1.INSTANCE);
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.clusterClickListeners = new ArrayList();
        this.clusterLongClickListeners = new ArrayList();
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_ANCHOR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_IMAGE, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_ROTATE, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_SIZE, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_FIELD, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_ROTATE, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_SIZE, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_OPACITY, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME, false);
        getDataDrivenPropertyUsageMap().put(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME, false);
        setIconAllowOverlap(true);
        setTextAllowOverlap(true);
        setIconIgnorePlacement(true);
        setTextIgnorePlacement(true);
    }

    @Override
    public List<OnClusterClickListener> getClusterClickListeners() {
        return this.clusterClickListeners;
    }

    @Override
    public List<OnClusterLongClickListener> getClusterLongClickListeners() {
        return this.clusterLongClickListeners;
    }

    @Override
    protected void setDataDrivenPropertyIsUsed(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        switch (property.hashCode()) {
            case -2146810373:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_ROTATE)) {
                    getLayer$plugin_annotation_release().textRotate(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_ROTATE));
                    getDragLayer$plugin_annotation_release().textRotate(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_ROTATE));
                    break;
                }
                break;
            case -2041493401:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_OFFSET)) {
                    getLayer$plugin_annotation_release().iconOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_OFFSET));
                    getDragLayer$plugin_annotation_release().iconOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_OFFSET));
                    break;
                }
                break;
            case -1946894033:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_ROTATE)) {
                    getLayer$plugin_annotation_release().iconRotate(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_ROTATE));
                    getDragLayer$plugin_annotation_release().iconRotate(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_ROTATE));
                    break;
                }
                break;
            case -1747293499:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().iconColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().iconColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME));
                    break;
                }
                break;
            case -1717422239:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET)) {
                    getLayer$plugin_annotation_release().textRadialOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET));
                    getDragLayer$plugin_annotation_release().textRadialOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET));
                    break;
                }
                break;
            case -1708933018:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR)) {
                    getLayer$plugin_annotation_release().iconHaloColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR));
                    getDragLayer$plugin_annotation_release().iconHaloColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR));
                    break;
                }
                break;
            case -1690648887:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH)) {
                    getLayer$plugin_annotation_release().iconHaloWidth(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH));
                    getDragLayer$plugin_annotation_release().iconHaloWidth(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH));
                    break;
                }
                break;
            case -1628743893:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY)) {
                    getLayer$plugin_annotation_release().textOcclusionOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY));
                    getDragLayer$plugin_annotation_release().textOcclusionOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY));
                    break;
                }
                break;
            case -1600683761:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_COLOR)) {
                    getLayer$plugin_annotation_release().iconColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_COLOR));
                    getDragLayer$plugin_annotation_release().iconColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_COLOR));
                    break;
                }
                break;
            case -1595213049:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_IMAGE)) {
                    getLayer$plugin_annotation_release().iconImage(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_IMAGE));
                    getDragLayer$plugin_annotation_release().iconImage(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_IMAGE));
                    break;
                }
                break;
            case -1436636971:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_SIZE)) {
                    getLayer$plugin_annotation_release().iconSize(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_SIZE));
                    getDragLayer$plugin_annotation_release().iconSize(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_SIZE));
                    break;
                }
                break;
            case -1362940800:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT)) {
                    getLayer$plugin_annotation_release().textLineHeight(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT));
                    getDragLayer$plugin_annotation_release().textLineHeight(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT));
                    break;
                }
                break;
            case -1336352187:
                if (property.equals(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY)) {
                    getLayer$plugin_annotation_release().symbolSortKey(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY));
                    getDragLayer$plugin_annotation_release().symbolSortKey(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY));
                    break;
                }
                break;
            case -1262567732:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM)) {
                    getLayer$plugin_annotation_release().textTransform(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM));
                    getDragLayer$plugin_annotation_release().textTransform(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM));
                    break;
                }
                break;
            case -1083772767:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_SIZE)) {
                    getLayer$plugin_annotation_release().textSize(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_SIZE));
                    getDragLayer$plugin_annotation_release().textSize(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_SIZE));
                    break;
                }
                break;
            case -951348361:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY)) {
                    getLayer$plugin_annotation_release().iconOcclusionOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY));
                    getDragLayer$plugin_annotation_release().iconOcclusionOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY));
                    break;
                }
                break;
            case -888013006:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR)) {
                    getLayer$plugin_annotation_release().textHaloColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR));
                    getDragLayer$plugin_annotation_release().textHaloColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR));
                    break;
                }
                break;
            case -886443260:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR)) {
                    getLayer$plugin_annotation_release().iconHaloBlur(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR));
                    getDragLayer$plugin_annotation_release().iconHaloBlur(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR));
                    break;
                }
                break;
            case -869728875:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH)) {
                    getLayer$plugin_annotation_release().textHaloWidth(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH));
                    getDragLayer$plugin_annotation_release().textHaloWidth(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH));
                    break;
                }
                break;
            case -564393509:
                if (property.equals(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET)) {
                    getLayer$plugin_annotation_release().symbolZOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET));
                    getDragLayer$plugin_annotation_release().symbolZOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET));
                    break;
                }
                break;
            case -483024021:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_OPACITY)) {
                    getLayer$plugin_annotation_release().textOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_OPACITY));
                    getDragLayer$plugin_annotation_release().textOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_OPACITY));
                    break;
                }
                break;
            case -465299984:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY)) {
                    getLayer$plugin_annotation_release().textJustify(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY));
                    getDragLayer$plugin_annotation_release().textJustify(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY));
                    break;
                }
                break;
            case -199448228:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().iconHaloColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().iconHaloColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME));
                    break;
                }
                break;
            case -197162119:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().textColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().textColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME));
                    break;
                }
                break;
            case 317300605:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH)) {
                    getLayer$plugin_annotation_release().textMaxWidth(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH));
                    getDragLayer$plugin_annotation_release().textMaxWidth(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH));
                    break;
                }
                break;
            case 428355132:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING)) {
                    getLayer$plugin_annotation_release().textLetterSpacing(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING));
                    getDragLayer$plugin_annotation_release().textLetterSpacing(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING));
                    break;
                }
                break;
            case 525511352:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR)) {
                    getLayer$plugin_annotation_release().textHaloBlur(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR));
                    getDragLayer$plugin_annotation_release().textHaloBlur(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR));
                    break;
                }
                break;
            case 676079173:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT)) {
                    getLayer$plugin_annotation_release().iconTextFit(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT));
                    getDragLayer$plugin_annotation_release().iconTextFit(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT));
                    break;
                }
                break;
            case 748171971:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_COLOR)) {
                    getLayer$plugin_annotation_release().textColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_COLOR));
                    getDragLayer$plugin_annotation_release().textColor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_COLOR));
                    break;
                }
                break;
            case 750756954:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_FIELD)) {
                    getLayer$plugin_annotation_release().textField(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_FIELD));
                    getDragLayer$plugin_annotation_release().textField(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_FIELD));
                    break;
                }
                break;
            case 961593943:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH)) {
                    getLayer$plugin_annotation_release().textEmissiveStrength(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH));
                    getDragLayer$plugin_annotation_release().textEmissiveStrength(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH));
                    break;
                }
                break;
            case 1304244361:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING)) {
                    getLayer$plugin_annotation_release().iconTextFitPadding(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING));
                    getDragLayer$plugin_annotation_release().iconTextFitPadding(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING));
                    break;
                }
                break;
            case 1419415223:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_OPACITY)) {
                    getLayer$plugin_annotation_release().iconOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_OPACITY));
                    getDragLayer$plugin_annotation_release().iconOpacity(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_OPACITY));
                    break;
                }
                break;
            case 1561581864:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME)) {
                    getLayer$plugin_annotation_release().textHaloColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME));
                    getDragLayer$plugin_annotation_release().textHaloColorUseTheme(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME));
                    break;
                }
                break;
            case 1638989475:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH)) {
                    getLayer$plugin_annotation_release().iconEmissiveStrength(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH));
                    getDragLayer$plugin_annotation_release().iconEmissiveStrength(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH));
                    break;
                }
                break;
            case 1660037973:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR)) {
                    getLayer$plugin_annotation_release().textAnchor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR));
                    getDragLayer$plugin_annotation_release().textAnchor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR));
                    break;
                }
                break;
            case 1859954313:
                if (property.equals(PointAnnotationOptions.PROPERTY_ICON_ANCHOR)) {
                    getLayer$plugin_annotation_release().iconAnchor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_ANCHOR));
                    getDragLayer$plugin_annotation_release().iconAnchor(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_ICON_ANCHOR));
                    break;
                }
                break;
            case 2053557555:
                if (property.equals(PointAnnotationOptions.PROPERTY_TEXT_OFFSET)) {
                    getLayer$plugin_annotation_release().textOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_OFFSET));
                    getDragLayer$plugin_annotation_release().textOffset(Expression.INSTANCE.get(PointAnnotationOptions.PROPERTY_TEXT_OFFSET));
                    break;
                }
                break;
        }
    }

    public final List<PointAnnotation> create(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(json);
        Intrinsics.checkNotNullExpressionValue(featureCollectionFromJson, "fromJson(json)");
        return create(featureCollectionFromJson);
    }

    public final List<PointAnnotation> create(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        List<Feature> listFeatures = featureCollection.features();
        if (listFeatures == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Feature it : listFeatures) {
            PointAnnotationOptions.Companion companion = PointAnnotationOptions.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            PointAnnotationOptions pointAnnotationOptionsFromFeature = companion.fromFeature(it);
            if (pointAnnotationOptionsFromFeature != null) {
                arrayList.add(pointAnnotationOptionsFromFeature);
            }
        }
        return create(arrayList);
    }

    @Override
    public String getAnnotationIdKey() {
        return PointAnnotation.ID_KEY;
    }

    public final Bitmap getIconImageBitmap() {
        return this.iconImageBitmap;
    }

    public final void setIconImageBitmap(Bitmap bitmap) {
        this.iconImageBitmap = bitmap;
        if (bitmap != null) {
            if (Intrinsics.areEqual(bitmap, bitmap)) {
                return;
            }
            if (getIconImage() != null) {
                String iconImage = getIconImage();
                Intrinsics.checkNotNull(iconImage);
                if (!StringsKt.startsWith$default(iconImage, PointAnnotation.ICON_DEFAULT_NAME_PREFIX, false, 2, (Object) null)) {
                    return;
                }
            }
            String str = PointAnnotation.ICON_DEFAULT_NAME_PREFIX + bitmap.hashCode();
            setIconImage(str);
            addStyleImage$plugin_annotation_release(str, bitmap);
            return;
        }
        setIconImage(null);
    }

    public final Boolean getIconAllowOverlap() {
        return getLayer$plugin_annotation_release().getIconAllowOverlap();
    }

    public final void setIconAllowOverlap(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-allow-overlap").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…w-overlap\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "icon-allow-overlap");
    }

    public final IconAnchor getIconAnchor() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_ANCHOR);
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
        return companion.valueOf(upperCase);
    }

    public final void setIconAnchor(IconAnchor iconAnchor) {
        if (iconAnchor != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_ANCHOR, iconAnchor.getValue());
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_ANCHOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_ANCHOR);
        }
        update(getAnnotations());
    }

    public final Boolean getIconIgnorePlacement() {
        return getLayer$plugin_annotation_release().getIconIgnorePlacement();
    }

    public final void setIconIgnorePlacement(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-ignore-placement").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…placement\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "icon-ignore-placement");
    }

    public final String getIconImage() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconImage(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_IMAGE);
        }
        update(getAnnotations());
    }

    public final Boolean getIconKeepUpright() {
        return getLayer$plugin_annotation_release().getIconKeepUpright();
    }

    public final void setIconKeepUpright(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-keep-upright").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…p-upright\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "icon-keep-upright");
    }

    public final List<Double> getIconOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_OFFSET);
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
            getDataDrivenPropertyDefaultValues().add(PointAnnotationOptions.PROPERTY_ICON_OFFSET, jsonArray);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_OFFSET);
        }
        update(getAnnotations());
    }

    public final Boolean getIconOptional() {
        return getLayer$plugin_annotation_release().getIconOptional();
    }

    public final void setIconOptional(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-optional").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…-optional\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "icon-optional");
    }

    public final Double getIconPadding() {
        return getLayer$plugin_annotation_release().getIconPadding();
    }

    public final void setIconPadding(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-padding").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…n-padding\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "icon-padding");
    }

    public final IconPitchAlignment getIconPitchAlignment() {
        return getLayer$plugin_annotation_release().getIconPitchAlignment();
    }

    public final void setIconPitchAlignment(IconPitchAlignment iconPitchAlignment) {
        Value value;
        if (iconPitchAlignment == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-pitch-alignment").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…alignment\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(iconPitchAlignment);
        }
        setLayerProperty(value, "icon-pitch-alignment");
    }

    public final Double getIconRotate() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_ROTATE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconRotate(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_ROTATE, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_ROTATE);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_ROTATE);
        }
        update(getAnnotations());
    }

    public final IconRotationAlignment getIconRotationAlignment() {
        return getLayer$plugin_annotation_release().getIconRotationAlignment();
    }

    public final void setIconRotationAlignment(IconRotationAlignment iconRotationAlignment) {
        Value value;
        if (iconRotationAlignment == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-rotation-alignment").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…alignment\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(iconRotationAlignment);
        }
        setLayerProperty(value, "icon-rotation-alignment");
    }

    public final Double getIconSize() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_SIZE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconSize(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_SIZE, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_SIZE);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_SIZE);
        }
        update(getAnnotations());
    }

    public final List<Double> getIconSizeScaleRange() {
        return getLayer$plugin_annotation_release().getIconSizeScaleRange();
    }

    public final void setIconSizeScaleRange(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-size-scale-range").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ale-range\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "icon-size-scale-range");
    }

    public final IconTextFit getIconTextFit() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT);
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
        return companion.valueOf(upperCase);
    }

    public final void setIconTextFit(IconTextFit iconTextFit) {
        if (iconTextFit != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT, iconTextFit.getValue());
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT);
        }
        update(getAnnotations());
    }

    public final List<Double> getIconTextFitPadding() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING);
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
            getDataDrivenPropertyDefaultValues().add(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING, jsonArray);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_TEXT_FIT_PADDING);
        }
        update(getAnnotations());
    }

    public final Boolean getSymbolAvoidEdges() {
        return getLayer$plugin_annotation_release().getSymbolAvoidEdges();
    }

    public final void setSymbolAvoidEdges(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "symbol-avoid-edges").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…oid-edges\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "symbol-avoid-edges");
    }

    public final SymbolElevationReference getSymbolElevationReference() {
        return getLayer$plugin_annotation_release().getSymbolElevationReference();
    }

    public final void setSymbolElevationReference(SymbolElevationReference symbolElevationReference) {
        Value value;
        if (symbolElevationReference == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "symbol-elevation-reference").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…reference\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(symbolElevationReference);
        }
        setLayerProperty(value, "symbol-elevation-reference");
    }

    public final SymbolPlacement getSymbolPlacement() {
        return getLayer$plugin_annotation_release().getSymbolPlacement();
    }

    public final void setSymbolPlacement(SymbolPlacement symbolPlacement) {
        Value value;
        if (symbolPlacement == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "symbol-placement").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…placement\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(symbolPlacement);
        }
        setLayerProperty(value, "symbol-placement");
    }

    public final Double getSymbolSortKey() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setSymbolSortKey(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_SYMBOL_SORT_KEY);
        }
        update(getAnnotations());
    }

    public final Double getSymbolSpacing() {
        return getLayer$plugin_annotation_release().getSymbolSpacing();
    }

    public final void setSymbolSpacing(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "symbol-spacing").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…l-spacing\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "symbol-spacing");
    }

    public final Boolean getSymbolZElevate() {
        return getLayer$plugin_annotation_release().getSymbolZElevate();
    }

    public final void setSymbolZElevate(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "symbol-z-elevate").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…z-elevate\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "symbol-z-elevate");
    }

    public final SymbolZOrder getSymbolZOrder() {
        return getLayer$plugin_annotation_release().getSymbolZOrder();
    }

    public final void setSymbolZOrder(SymbolZOrder symbolZOrder) {
        Value value;
        if (symbolZOrder == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "symbol-z-order").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…l-z-order\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(symbolZOrder);
        }
        setLayerProperty(value, "symbol-z-order");
    }

    public final Boolean getTextAllowOverlap() {
        return getLayer$plugin_annotation_release().getTextAllowOverlap();
    }

    public final void setTextAllowOverlap(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-allow-overlap").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…w-overlap\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "text-allow-overlap");
    }

    public final TextAnchor getTextAnchor() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR);
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
        return companion.valueOf(upperCase);
    }

    public final void setTextAnchor(TextAnchor textAnchor) {
        if (textAnchor != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR, textAnchor.getValue());
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_ANCHOR);
        }
        update(getAnnotations());
    }

    public final String getTextField() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_FIELD);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextField(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_FIELD, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_FIELD);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_FIELD);
        }
        update(getAnnotations());
    }

    public final List<String> getTextFont() {
        return getLayer$plugin_annotation_release().getTextFont();
    }

    public final void setTextFont(List<String> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-font").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…text-font\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "text-font");
    }

    public final Boolean getTextIgnorePlacement() {
        return getLayer$plugin_annotation_release().getTextIgnorePlacement();
    }

    public final void setTextIgnorePlacement(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-ignore-placement").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…placement\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "text-ignore-placement");
    }

    public final TextJustify getTextJustify() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY);
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
        return companion.valueOf(upperCase);
    }

    public final void setTextJustify(TextJustify textJustify) {
        if (textJustify != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY, textJustify.getValue());
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_JUSTIFY);
        }
        update(getAnnotations());
    }

    public final Boolean getTextKeepUpright() {
        return getLayer$plugin_annotation_release().getTextKeepUpright();
    }

    public final void setTextKeepUpright(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-keep-upright").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…p-upright\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "text-keep-upright");
    }

    public final Double getTextLetterSpacing() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextLetterSpacing(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_LETTER_SPACING);
        }
        update(getAnnotations());
    }

    public final Double getTextLineHeight() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextLineHeight(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_LINE_HEIGHT);
        }
        update(getAnnotations());
    }

    public final Double getTextMaxAngle() {
        return getLayer$plugin_annotation_release().getTextMaxAngle();
    }

    public final void setTextMaxAngle(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-max-angle").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…max-angle\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "text-max-angle");
    }

    public final Double getTextMaxWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextMaxWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_MAX_WIDTH);
        }
        update(getAnnotations());
    }

    public final List<Double> getTextOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_OFFSET);
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
            getDataDrivenPropertyDefaultValues().add(PointAnnotationOptions.PROPERTY_TEXT_OFFSET, jsonArray);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_OFFSET);
        }
        update(getAnnotations());
    }

    public final Boolean getTextOptional() {
        return getLayer$plugin_annotation_release().getTextOptional();
    }

    public final void setTextOptional(Boolean bool) {
        Value value;
        if (bool == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-optional").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…-optional\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(bool);
        }
        setLayerProperty(value, "text-optional");
    }

    public final Double getTextPadding() {
        return getLayer$plugin_annotation_release().getTextPadding();
    }

    public final void setTextPadding(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-padding").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…t-padding\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "text-padding");
    }

    public final TextPitchAlignment getTextPitchAlignment() {
        return getLayer$plugin_annotation_release().getTextPitchAlignment();
    }

    public final void setTextPitchAlignment(TextPitchAlignment textPitchAlignment) {
        Value value;
        if (textPitchAlignment == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-pitch-alignment").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…alignment\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(textPitchAlignment);
        }
        setLayerProperty(value, "text-pitch-alignment");
    }

    public final Double getTextRadialOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextRadialOffset(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_RADIAL_OFFSET);
        }
        update(getAnnotations());
    }

    public final Double getTextRotate() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_ROTATE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextRotate(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_ROTATE, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_ROTATE);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_ROTATE);
        }
        update(getAnnotations());
    }

    public final TextRotationAlignment getTextRotationAlignment() {
        return getLayer$plugin_annotation_release().getTextRotationAlignment();
    }

    public final void setTextRotationAlignment(TextRotationAlignment textRotationAlignment) {
        Value value;
        if (textRotationAlignment == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-rotation-alignment").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…alignment\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(textRotationAlignment);
        }
        setLayerProperty(value, "text-rotation-alignment");
    }

    public final Double getTextSize() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_SIZE);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextSize(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_SIZE, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_SIZE);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_SIZE);
        }
        update(getAnnotations());
    }

    public final List<Double> getTextSizeScaleRange() {
        return getLayer$plugin_annotation_release().getTextSizeScaleRange();
    }

    public final void setTextSizeScaleRange(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-size-scale-range").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ale-range\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "text-size-scale-range");
    }

    public final TextTransform getTextTransform() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM);
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
        return companion.valueOf(upperCase);
    }

    public final void setTextTransform(TextTransform textTransform) {
        if (textTransform != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM, textTransform.getValue());
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_TRANSFORM);
        }
        update(getAnnotations());
    }

    public final List<String> getTextVariableAnchor() {
        return getLayer$plugin_annotation_release().getTextVariableAnchor();
    }

    public final void setTextVariableAnchor(List<String> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-variable-anchor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…le-anchor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "text-variable-anchor");
    }

    public final List<String> getTextWritingMode() {
        return getLayer$plugin_annotation_release().getTextWritingMode();
    }

    public final void setTextWritingMode(List<String> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-writing-mode").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ting-mode\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "text-writing-mode");
    }

    public final Integer getIconColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_COLOR);
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
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        }
        update(getAnnotations());
    }

    public final String getIconColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getIconColorSaturation() {
        return getLayer$plugin_annotation_release().getIconColorSaturation();
    }

    public final void setIconColorSaturation(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-color-saturation").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…aturation\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "icon-color-saturation");
    }

    public final Double getIconEmissiveStrength() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconEmissiveStrength(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_EMISSIVE_STRENGTH);
        }
        update(getAnnotations());
    }

    public final Double getIconHaloBlur() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconHaloBlur(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_BLUR);
        }
        update(getAnnotations());
    }

    public final Integer getIconHaloColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
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
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        }
        update(getAnnotations());
    }

    public final String getIconHaloColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconHaloColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getIconHaloWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconHaloWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_WIDTH);
        }
        update(getAnnotations());
    }

    public final Double getIconImageCrossFade() {
        return getLayer$plugin_annotation_release().getIconImageCrossFade();
    }

    public final void setIconImageCrossFade(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", PointAnnotationOptions.PROPERTY_ICON_IMAGE_CROSS_FADE).getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…ross-fade\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, PointAnnotationOptions.PROPERTY_ICON_IMAGE_CROSS_FADE);
    }

    public final Double getIconOcclusionOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconOcclusionOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_OCCLUSION_OPACITY);
        }
        update(getAnnotations());
    }

    public final Double getIconOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setIconOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_OPACITY, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_OPACITY);
        }
        update(getAnnotations());
    }

    public final List<Double> getIconTranslate() {
        return getLayer$plugin_annotation_release().getIconTranslate();
    }

    public final void setIconTranslate(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-translate").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…translate\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "icon-translate");
    }

    public final IconTranslateAnchor getIconTranslateAnchor() {
        return getLayer$plugin_annotation_release().getIconTranslateAnchor();
    }

    public final void setIconTranslateAnchor(IconTranslateAnchor iconTranslateAnchor) {
        Value value;
        if (iconTranslateAnchor == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "icon-translate-anchor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…te-anchor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(iconTranslateAnchor);
        }
        setLayerProperty(value, "icon-translate-anchor");
    }

    public final Double getSymbolZOffset() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setSymbolZOffset(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_SYMBOL_Z_OFFSET);
        }
        update(getAnnotations());
    }

    public final Integer getTextColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
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
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        }
        update(getAnnotations());
    }

    public final String getTextColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getTextEmissiveStrength() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextEmissiveStrength(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_EMISSIVE_STRENGTH);
        }
        update(getAnnotations());
    }

    public final Double getTextHaloBlur() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextHaloBlur(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_BLUR);
        }
        update(getAnnotations());
    }

    public final Integer getTextHaloColorInt() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
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
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        }
        update(getAnnotations());
    }

    public final String getTextHaloColorString() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextHaloColorString(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR);
        }
        update(getAnnotations());
    }

    public final Double getTextHaloWidth() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextHaloWidth(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_WIDTH);
        }
        update(getAnnotations());
    }

    public final Double getTextOcclusionOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextOcclusionOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_OCCLUSION_OPACITY);
        }
        update(getAnnotations());
    }

    public final Double getTextOpacity() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setTextOpacity(Double d) {
        if (d != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_OPACITY, d);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_OPACITY);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_OPACITY);
        }
        update(getAnnotations());
    }

    public final List<Double> getTextTranslate() {
        return getLayer$plugin_annotation_release().getTextTranslate();
    }

    public final void setTextTranslate(List<Double> list) {
        Value value;
        if (list == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-translate").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…translate\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(list);
        }
        setLayerProperty(value, "text-translate");
    }

    public final TextTranslateAnchor getTextTranslateAnchor() {
        return getLayer$plugin_annotation_release().getTextTranslateAnchor();
    }

    public final void setTextTranslateAnchor(TextTranslateAnchor textTranslateAnchor) {
        Value value;
        if (textTranslateAnchor == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "text-translate-anchor").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…te-anchor\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(textTranslateAnchor);
        }
        setLayerProperty(value, "text-translate-anchor");
    }

    public final String getSlot() {
        return getLayer$plugin_annotation_release().getSlot();
    }

    public final void setSlot(String str) {
        Value value;
        if (str == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "slot").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g…l\", \"slot\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(str);
        }
        setLayerProperty(value, "slot");
    }

    public final Double getMaxZoom() {
        return getLayer$plugin_annotation_release().getMaxZoom();
    }

    public final void setMaxZoom(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "maxzoom").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g… \"maxzoom\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "maxzoom");
    }

    public final Double getMinZoom() {
        return getLayer$plugin_annotation_release().getMinZoom();
    }

    public final void setMinZoom(Double d) {
        Value value;
        if (d == null) {
            value = StyleManager.getStyleLayerPropertyDefaultValue("symbol", "minzoom").getValue();
            Intrinsics.checkNotNullExpressionValue(value, "{\n        StyleManager.g… \"minzoom\").value\n      }");
        } else {
            value = TypeUtils.INSTANCE.wrapToValue(d);
        }
        setLayerProperty(value, "minzoom");
    }

    public final String getIconColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getIconHaloColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setIconHaloColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_ICON_HALO_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getTextColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    public final String getTextHaloColorUseTheme() {
        JsonElement jsonElement = getDataDrivenPropertyDefaultValues().get(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setTextHaloColorUseTheme(String str) {
        if (str != null) {
            getDataDrivenPropertyDefaultValues().addProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME, str);
            enableDataDrivenProperty(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME);
        } else {
            getDataDrivenPropertyDefaultValues().remove(PointAnnotationOptions.PROPERTY_TEXT_HALO_COLOR_USE_THEME);
        }
        update(getAnnotations());
    }

    @Override
    public Expression getLayerFilter() {
        return getLayer$plugin_annotation_release().getFilter();
    }

    @Override
    public void setLayerFilter(Expression expression) {
        if (expression != null) {
            getLayer$plugin_annotation_release().filter(expression);
            getDragLayer$plugin_annotation_release().filter(expression);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationManager$Companion;", "", "()V", "ID_GENERATOR", "Ljava/util/concurrent/atomic/AtomicLong;", "getID_GENERATOR", "()Ljava/util/concurrent/atomic/AtomicLong;", "setID_GENERATOR", "(Ljava/util/concurrent/atomic/AtomicLong;)V", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AtomicLong getID_GENERATOR() {
            return PointAnnotationManager.ID_GENERATOR;
        }

        public final void setID_GENERATOR(AtomicLong atomicLong) {
            Intrinsics.checkNotNullParameter(atomicLong, "<set-?>");
            PointAnnotationManager.ID_GENERATOR = atomicLong;
        }
    }
}
