package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.views.text.ReactBaseTextShadowNode;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
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
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.Formatted;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0012\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0004H&J\u0012\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0004H&J\u0012\u0010\t\u001a\u00020\u00032\b\b\u0001\u0010\t\u001a\u00020\nH&J\u0012\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0004H&J\u0012\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010\u000e\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010\u0016\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0004H'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u000bH'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\rH&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H&J\u0012\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\rH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010\u001b\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0004H&J\u0012\u0010\u001c\u001a\u00020\u00032\b\b\u0001\u0010\u001c\u001a\u00020\nH&J\u0012\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u000bH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010\u001d\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0004H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u000bH'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0004H&J\u0012\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\rH&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010 \u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0004H&J\u0012\u0010!\u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u0006H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0004H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u000bH&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H&J\u0012\u0010#\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\rH&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010$\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0004H&J\u0012\u0010%\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u0006H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0004H&J\u0012\u0010&\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\rH&J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010'\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0004H&J\u0018\u0010(\u001a\u00020\u00032\u000e\b\u0002\u0010(\u001a\b\u0012\u0004\u0012\u00020\r0)H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0004H&J\u0012\u0010*\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\rH&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010+\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0004H&J\u0012\u0010,\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u0006H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0004H&J\u0012\u0010-\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020\rH&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0004H&J\u0012\u0010.\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020/H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0004H&J\u0012\u00100\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\rH&J\u0010\u00101\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0004H&J\u0012\u00101\u001a\u00020\u00032\b\b\u0002\u00101\u001a\u000202H&J\u0010\u00103\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u0004H&J\u0012\u00103\u001a\u00020\u00032\b\b\u0002\u00103\u001a\u00020\rH&J\u0010\u00104\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0004H'J\u0018\u00104\u001a\u00020\u00032\u000e\b\u0002\u00104\u001a\b\u0012\u0004\u0012\u00020\r0)H'J\u0010\u00105\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0004H&J\u0012\u00105\u001a\u00020\u00032\b\b\u0002\u00105\u001a\u000206H&J\u0010\u00107\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0004H&J\u0018\u00107\u001a\u00020\u00032\u000e\b\u0002\u00107\u001a\b\u0012\u0004\u0012\u00020\r0)H&J\u0010\u00108\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0004H&J\u0018\u00108\u001a\u00020\u00032\u000e\b\u0002\u00108\u001a\b\u0012\u0004\u0012\u00020\r0)H&J\u0010\u00109\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u0004H&J\u0012\u00109\u001a\u00020\u00032\b\b\u0002\u00109\u001a\u00020:H&J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010;\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\rH&J\u0010\u0010=\u001a\u00020\u00032\u0006\u0010=\u001a\u00020\rH&J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u000bH&J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u000bH&J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u0004H&J\u0012\u0010@\u001a\u00020\u00032\b\b\u0002\u0010@\u001a\u00020\u0006H&J\u0010\u0010A\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u0004H'J\u0012\u0010A\u001a\u00020\u00032\b\b\u0002\u0010A\u001a\u00020BH'J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010C\u001a\u00020\u0004H&J\u0012\u0010C\u001a\u00020\u00032\b\b\u0002\u0010C\u001a\u00020DH&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010E\u001a\u00020\u0004H&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010E\u001a\u00020\rH&J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u0004H&J\u0012\u0010F\u001a\u00020\u00032\b\b\u0002\u0010F\u001a\u00020\rH&J\u0010\u0010G\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u0004H&J\u0012\u0010G\u001a\u00020\u00032\b\b\u0002\u0010G\u001a\u00020\u0006H&J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u0004H'J\u0012\u0010H\u001a\u00020\u00032\b\b\u0002\u0010H\u001a\u00020\rH'J\u0010\u0010I\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H'J!\u0010I\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H'J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u0004H&J\u0012\u0010J\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020KH&J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010L\u001a\u00020\u0004H&J\u0012\u0010L\u001a\u00020\u00032\b\b\u0002\u0010L\u001a\u00020\u0006H&J\u0010\u0010M\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u0004H&J\u0012\u0010M\u001a\u00020\u00032\b\b\u0002\u0010M\u001a\u00020NH&J\u0010\u0010O\u001a\u00020\u00032\u0006\u0010O\u001a\u00020\u0004H&J\u0012\u0010O\u001a\u00020\u00032\b\b\u0001\u0010O\u001a\u00020\nH&J\u0012\u0010O\u001a\u00020\u00032\b\b\u0002\u0010O\u001a\u00020\u000bH&J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010P\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010Q\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\u0004H'J\u0010\u0010Q\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\u000bH'J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0004H&J\u0012\u0010R\u001a\u00020\u00032\b\b\u0002\u0010R\u001a\u00020\rH&J\u0010\u0010S\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010S\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\u0004H&J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010T\u001a\u00020UH&J!\u0010T\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020U\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\u000bH&J\u0010\u0010V\u001a\u00020\u00032\u0006\u0010V\u001a\u00020\u0004H&J\u0018\u0010V\u001a\u00020\u00032\u000e\b\u0002\u0010V\u001a\b\u0012\u0004\u0012\u00020\u000b0)H&J\u0010\u0010W\u001a\u00020\u00032\u0006\u0010W\u001a\u00020\u0004H&J\u0012\u0010W\u001a\u00020\u00032\b\b\u0002\u0010W\u001a\u00020\rH&J\u0010\u0010X\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010X\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010Y\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020\u0004H&J\u0012\u0010Y\u001a\u00020\u00032\b\b\u0001\u0010Y\u001a\u00020\nH&J\u0012\u0010Y\u001a\u00020\u00032\b\b\u0002\u0010Y\u001a\u00020\u000bH&J\u0010\u0010Z\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010Z\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010[\u001a\u00020\u00032\u0006\u0010[\u001a\u00020\u0004H'J\u0010\u0010[\u001a\u00020\u00032\u0006\u0010[\u001a\u00020\u000bH'J\u0010\u0010\\\u001a\u00020\u00032\u0006\u0010\\\u001a\u00020\u0004H&J\u0012\u0010\\\u001a\u00020\u00032\b\b\u0002\u0010\\\u001a\u00020\rH&J\u0010\u0010]\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010]\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010^\u001a\u00020\u00032\u0006\u0010^\u001a\u00020\u0004H&J\u0012\u0010^\u001a\u00020\u00032\b\b\u0002\u0010^\u001a\u00020\u0006H&J\u0010\u0010_\u001a\u00020\u00032\u0006\u0010_\u001a\u00020\u0004H&J\u0012\u0010_\u001a\u00020\u00032\b\b\u0002\u0010_\u001a\u00020`H&J\u0010\u0010a\u001a\u00020\u00032\u0006\u0010a\u001a\u00020\u0004H&J\u0012\u0010a\u001a\u00020\u00032\b\b\u0002\u0010a\u001a\u00020\u0006H&J\u0010\u0010b\u001a\u00020\u00032\u0006\u0010b\u001a\u00020\u0004H&J\u0012\u0010b\u001a\u00020\u00032\b\b\u0002\u0010b\u001a\u00020\rH&J\u0010\u0010c\u001a\u00020\u00032\u0006\u0010c\u001a\u00020\u0004H&J\u0012\u0010c\u001a\u00020\u00032\b\b\u0002\u0010c\u001a\u00020\rH&J\u0010\u0010d\u001a\u00020\u00032\u0006\u0010d\u001a\u00020\u0004H&J\u0012\u0010d\u001a\u00020\u00032\b\b\u0002\u0010d\u001a\u00020\rH&J\u0010\u0010e\u001a\u00020\u00032\u0006\u0010e\u001a\u00020\u0004H&J\u0012\u0010e\u001a\u00020\u00032\b\b\u0002\u0010e\u001a\u00020\rH&J\u0010\u0010f\u001a\u00020\u00032\u0006\u0010f\u001a\u00020\u0004H&J\u0012\u0010f\u001a\u00020\u00032\b\b\u0002\u0010f\u001a\u00020\rH&J\u0010\u0010g\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010g\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010h\u001a\u00020\u00032\u0006\u0010h\u001a\u00020\u0004H&J\u0018\u0010h\u001a\u00020\u00032\u000e\b\u0002\u0010h\u001a\b\u0012\u0004\u0012\u00020\r0)H&J\u0010\u0010i\u001a\u00020\u00032\u0006\u0010i\u001a\u00020\u0004H&J\u0012\u0010i\u001a\u00020\u00032\b\b\u0002\u0010i\u001a\u00020\rH&J\u0010\u0010j\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010j\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010k\u001a\u00020\u00032\u0006\u0010k\u001a\u00020\u0004H&J\u0012\u0010k\u001a\u00020\u00032\b\b\u0002\u0010k\u001a\u00020\u0006H&J\u0010\u0010l\u001a\u00020\u00032\u0006\u0010l\u001a\u00020\u0004H&J\u0012\u0010l\u001a\u00020\u00032\b\b\u0002\u0010l\u001a\u00020\rH&J\u0010\u0010m\u001a\u00020\u00032\u0006\u0010m\u001a\u00020\u0004H&J\u0012\u0010m\u001a\u00020\u00032\b\b\u0002\u0010m\u001a\u00020nH&J\u0010\u0010o\u001a\u00020\u00032\u0006\u0010o\u001a\u00020\u0004H&J\u0012\u0010o\u001a\u00020\u00032\b\b\u0002\u0010o\u001a\u00020\rH&J\u0010\u0010p\u001a\u00020\u00032\u0006\u0010p\u001a\u00020\u0004H&J\u0012\u0010p\u001a\u00020\u00032\b\b\u0002\u0010p\u001a\u00020\rH&J\u0010\u0010q\u001a\u00020\u00032\u0006\u0010q\u001a\u00020\u0004H&J\u0012\u0010q\u001a\u00020\u00032\b\b\u0002\u0010q\u001a\u00020rH&J\u0010\u0010s\u001a\u00020\u00032\u0006\u0010s\u001a\u00020\u0004H&J\u0012\u0010s\u001a\u00020\u00032\b\b\u0002\u0010s\u001a\u00020\rH&J\u0010\u0010t\u001a\u00020\u00032\u0006\u0010t\u001a\u00020\u0004H'J\u0018\u0010t\u001a\u00020\u00032\u000e\b\u0002\u0010t\u001a\b\u0012\u0004\u0012\u00020\r0)H'J\u0010\u0010u\u001a\u00020\u00032\u0006\u0010u\u001a\u00020\u0004H&J\u0012\u0010u\u001a\u00020\u00032\b\b\u0002\u0010u\u001a\u00020vH&J\u0010\u0010w\u001a\u00020\u00032\u0006\u0010w\u001a\u00020\u0004H&J\u0018\u0010w\u001a\u00020\u00032\u000e\b\u0002\u0010w\u001a\b\u0012\u0004\u0012\u00020\r0)H&J\u0010\u0010x\u001a\u00020\u00032\u0006\u0010x\u001a\u00020\u0004H&J\u0012\u0010x\u001a\u00020\u00032\b\b\u0002\u0010x\u001a\u00020yH&J\u0010\u0010z\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J!\u0010z\u001a\u00020\u00032\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H&J\u0010\u0010{\u001a\u00020\u00032\u0006\u0010{\u001a\u00020\u0004H&J\u0016\u0010{\u001a\u00020\u00032\f\u0010{\u001a\b\u0012\u0004\u0012\u00020\u000b0)H&J\u0010\u0010|\u001a\u00020\u00032\u0006\u0010|\u001a\u00020\u0004H&J\u0016\u0010|\u001a\u00020\u00032\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\u000b0)H&J\u0010\u0010}\u001a\u00020\u00032\u0006\u0010}\u001a\u00020\u0004H&J\u0010\u0010}\u001a\u00020\u00032\u0006\u0010}\u001a\u00020~H&¨\u0006\u007f"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayerDsl;", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "iconAllowOverlap", "", "iconAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconAnchor;", "iconColor", "", "", "iconColorSaturation", "", "iconColorSaturationTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "iconColorTransition", "iconColorUseTheme", "iconEmissiveStrength", "iconEmissiveStrengthTransition", "iconHaloBlur", "iconHaloBlurTransition", "iconHaloColor", "iconHaloColorTransition", "iconHaloColorUseTheme", "iconHaloWidth", "iconHaloWidthTransition", "iconIgnorePlacement", "iconImage", "iconImageCrossFade", "iconImageCrossFadeTransition", "iconKeepUpright", "iconOcclusionOpacity", "iconOcclusionOpacityTransition", "iconOffset", "", "iconOpacity", "iconOpacityTransition", "iconOptional", "iconPadding", "iconPitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconPitchAlignment;", "iconRotate", "iconRotationAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconRotationAlignment;", "iconSize", "iconSizeScaleRange", "iconTextFit", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTextFit;", "iconTextFitPadding", "iconTranslate", "iconTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/IconTranslateAnchor;", "iconTranslateTransition", "maxZoom", "minZoom", "slot", "sourceLayer", "symbolAvoidEdges", "symbolElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolElevationReference;", "symbolPlacement", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolPlacement;", "symbolSortKey", "symbolSpacing", "symbolZElevate", "symbolZOffset", "symbolZOffsetTransition", "symbolZOrder", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SymbolZOrder;", "textAllowOverlap", "textAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextAnchor;", Common.TEXT_COLOR, "textColorTransition", "textColorUseTheme", "textEmissiveStrength", "textEmissiveStrengthTransition", "textField", "Lcom/mapbox/maps/extension/style/types/Formatted;", "textFont", "textHaloBlur", "textHaloBlurTransition", "textHaloColor", "textHaloColorTransition", "textHaloColorUseTheme", "textHaloWidth", "textHaloWidthTransition", "textIgnorePlacement", "textJustify", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextJustify;", "textKeepUpright", "textLetterSpacing", "textLineHeight", "textMaxAngle", "textMaxWidth", "textOcclusionOpacity", "textOcclusionOpacityTransition", "textOffset", "textOpacity", "textOpacityTransition", "textOptional", "textPadding", "textPitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextPitchAlignment;", "textRadialOffset", "textRotate", "textRotationAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextRotationAlignment;", "textSize", "textSizeScaleRange", ReactBaseTextShadowNode.PROP_TEXT_TRANSFORM, "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTransform;", "textTranslate", "textTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/TextTranslateAnchor;", "textTranslateTransition", "textVariableAnchor", "textWritingMode", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface SymbolLayerDsl {
    SymbolLayer filter(Expression filter);

    SymbolLayer iconAllowOverlap(Expression iconAllowOverlap);

    SymbolLayer iconAllowOverlap(boolean iconAllowOverlap);

    SymbolLayer iconAnchor(Expression iconAnchor);

    SymbolLayer iconAnchor(IconAnchor iconAnchor);

    SymbolLayer iconColor(int iconColor);

    SymbolLayer iconColor(Expression iconColor);

    SymbolLayer iconColor(String iconColor);

    SymbolLayer iconColorSaturation(double iconColorSaturation);

    SymbolLayer iconColorSaturation(Expression iconColorSaturation);

    SymbolLayer iconColorSaturationTransition(StyleTransition options);

    SymbolLayer iconColorSaturationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconColorTransition(StyleTransition options);

    SymbolLayer iconColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconColorUseTheme(Expression iconColorUseTheme);

    SymbolLayer iconColorUseTheme(String iconColorUseTheme);

    SymbolLayer iconEmissiveStrength(double iconEmissiveStrength);

    SymbolLayer iconEmissiveStrength(Expression iconEmissiveStrength);

    SymbolLayer iconEmissiveStrengthTransition(StyleTransition options);

    SymbolLayer iconEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconHaloBlur(double iconHaloBlur);

    SymbolLayer iconHaloBlur(Expression iconHaloBlur);

    SymbolLayer iconHaloBlurTransition(StyleTransition options);

    SymbolLayer iconHaloBlurTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconHaloColor(int iconHaloColor);

    SymbolLayer iconHaloColor(Expression iconHaloColor);

    SymbolLayer iconHaloColor(String iconHaloColor);

    SymbolLayer iconHaloColorTransition(StyleTransition options);

    SymbolLayer iconHaloColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconHaloColorUseTheme(Expression iconHaloColorUseTheme);

    SymbolLayer iconHaloColorUseTheme(String iconHaloColorUseTheme);

    SymbolLayer iconHaloWidth(double iconHaloWidth);

    SymbolLayer iconHaloWidth(Expression iconHaloWidth);

    SymbolLayer iconHaloWidthTransition(StyleTransition options);

    SymbolLayer iconHaloWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconIgnorePlacement(Expression iconIgnorePlacement);

    SymbolLayer iconIgnorePlacement(boolean iconIgnorePlacement);

    SymbolLayer iconImage(Expression iconImage);

    SymbolLayer iconImage(String iconImage);

    SymbolLayer iconImageCrossFade(double iconImageCrossFade);

    SymbolLayer iconImageCrossFade(Expression iconImageCrossFade);

    SymbolLayer iconImageCrossFadeTransition(StyleTransition options);

    SymbolLayer iconImageCrossFadeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconKeepUpright(Expression iconKeepUpright);

    SymbolLayer iconKeepUpright(boolean iconKeepUpright);

    SymbolLayer iconOcclusionOpacity(double iconOcclusionOpacity);

    SymbolLayer iconOcclusionOpacity(Expression iconOcclusionOpacity);

    SymbolLayer iconOcclusionOpacityTransition(StyleTransition options);

    SymbolLayer iconOcclusionOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconOffset(Expression iconOffset);

    SymbolLayer iconOffset(List<Double> iconOffset);

    SymbolLayer iconOpacity(double iconOpacity);

    SymbolLayer iconOpacity(Expression iconOpacity);

    SymbolLayer iconOpacityTransition(StyleTransition options);

    SymbolLayer iconOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer iconOptional(Expression iconOptional);

    SymbolLayer iconOptional(boolean iconOptional);

    SymbolLayer iconPadding(double iconPadding);

    SymbolLayer iconPadding(Expression iconPadding);

    SymbolLayer iconPitchAlignment(Expression iconPitchAlignment);

    SymbolLayer iconPitchAlignment(IconPitchAlignment iconPitchAlignment);

    SymbolLayer iconRotate(double iconRotate);

    SymbolLayer iconRotate(Expression iconRotate);

    SymbolLayer iconRotationAlignment(Expression iconRotationAlignment);

    SymbolLayer iconRotationAlignment(IconRotationAlignment iconRotationAlignment);

    SymbolLayer iconSize(double iconSize);

    SymbolLayer iconSize(Expression iconSize);

    SymbolLayer iconSizeScaleRange(Expression iconSizeScaleRange);

    SymbolLayer iconSizeScaleRange(List<Double> iconSizeScaleRange);

    SymbolLayer iconTextFit(Expression iconTextFit);

    SymbolLayer iconTextFit(IconTextFit iconTextFit);

    SymbolLayer iconTextFitPadding(Expression iconTextFitPadding);

    SymbolLayer iconTextFitPadding(List<Double> iconTextFitPadding);

    SymbolLayer iconTranslate(Expression iconTranslate);

    SymbolLayer iconTranslate(List<Double> iconTranslate);

    SymbolLayer iconTranslateAnchor(Expression iconTranslateAnchor);

    SymbolLayer iconTranslateAnchor(IconTranslateAnchor iconTranslateAnchor);

    SymbolLayer iconTranslateTransition(StyleTransition options);

    SymbolLayer iconTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer maxZoom(double maxZoom);

    SymbolLayer minZoom(double minZoom);

    SymbolLayer slot(String slot);

    SymbolLayer sourceLayer(String sourceLayer);

    SymbolLayer symbolAvoidEdges(Expression symbolAvoidEdges);

    SymbolLayer symbolAvoidEdges(boolean symbolAvoidEdges);

    SymbolLayer symbolElevationReference(Expression symbolElevationReference);

    SymbolLayer symbolElevationReference(SymbolElevationReference symbolElevationReference);

    SymbolLayer symbolPlacement(Expression symbolPlacement);

    SymbolLayer symbolPlacement(SymbolPlacement symbolPlacement);

    SymbolLayer symbolSortKey(double symbolSortKey);

    SymbolLayer symbolSortKey(Expression symbolSortKey);

    SymbolLayer symbolSpacing(double symbolSpacing);

    SymbolLayer symbolSpacing(Expression symbolSpacing);

    SymbolLayer symbolZElevate(Expression symbolZElevate);

    SymbolLayer symbolZElevate(boolean symbolZElevate);

    SymbolLayer symbolZOffset(double symbolZOffset);

    SymbolLayer symbolZOffset(Expression symbolZOffset);

    SymbolLayer symbolZOffsetTransition(StyleTransition options);

    SymbolLayer symbolZOffsetTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer symbolZOrder(Expression symbolZOrder);

    SymbolLayer symbolZOrder(SymbolZOrder symbolZOrder);

    SymbolLayer textAllowOverlap(Expression textAllowOverlap);

    SymbolLayer textAllowOverlap(boolean textAllowOverlap);

    SymbolLayer textAnchor(Expression textAnchor);

    SymbolLayer textAnchor(TextAnchor textAnchor);

    SymbolLayer textColor(int textColor);

    SymbolLayer textColor(Expression textColor);

    SymbolLayer textColor(String textColor);

    SymbolLayer textColorTransition(StyleTransition options);

    SymbolLayer textColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textColorUseTheme(Expression textColorUseTheme);

    SymbolLayer textColorUseTheme(String textColorUseTheme);

    SymbolLayer textEmissiveStrength(double textEmissiveStrength);

    SymbolLayer textEmissiveStrength(Expression textEmissiveStrength);

    SymbolLayer textEmissiveStrengthTransition(StyleTransition options);

    SymbolLayer textEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textField(Expression textField);

    SymbolLayer textField(Formatted textField);

    SymbolLayer textField(String textField);

    SymbolLayer textField(Function1<? super Formatted, Unit> block);

    SymbolLayer textFont(Expression textFont);

    SymbolLayer textFont(List<String> textFont);

    SymbolLayer textHaloBlur(double textHaloBlur);

    SymbolLayer textHaloBlur(Expression textHaloBlur);

    SymbolLayer textHaloBlurTransition(StyleTransition options);

    SymbolLayer textHaloBlurTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textHaloColor(int textHaloColor);

    SymbolLayer textHaloColor(Expression textHaloColor);

    SymbolLayer textHaloColor(String textHaloColor);

    SymbolLayer textHaloColorTransition(StyleTransition options);

    SymbolLayer textHaloColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textHaloColorUseTheme(Expression textHaloColorUseTheme);

    SymbolLayer textHaloColorUseTheme(String textHaloColorUseTheme);

    SymbolLayer textHaloWidth(double textHaloWidth);

    SymbolLayer textHaloWidth(Expression textHaloWidth);

    SymbolLayer textHaloWidthTransition(StyleTransition options);

    SymbolLayer textHaloWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textIgnorePlacement(Expression textIgnorePlacement);

    SymbolLayer textIgnorePlacement(boolean textIgnorePlacement);

    SymbolLayer textJustify(Expression textJustify);

    SymbolLayer textJustify(TextJustify textJustify);

    SymbolLayer textKeepUpright(Expression textKeepUpright);

    SymbolLayer textKeepUpright(boolean textKeepUpright);

    SymbolLayer textLetterSpacing(double textLetterSpacing);

    SymbolLayer textLetterSpacing(Expression textLetterSpacing);

    SymbolLayer textLineHeight(double textLineHeight);

    SymbolLayer textLineHeight(Expression textLineHeight);

    SymbolLayer textMaxAngle(double textMaxAngle);

    SymbolLayer textMaxAngle(Expression textMaxAngle);

    SymbolLayer textMaxWidth(double textMaxWidth);

    SymbolLayer textMaxWidth(Expression textMaxWidth);

    SymbolLayer textOcclusionOpacity(double textOcclusionOpacity);

    SymbolLayer textOcclusionOpacity(Expression textOcclusionOpacity);

    SymbolLayer textOcclusionOpacityTransition(StyleTransition options);

    SymbolLayer textOcclusionOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textOffset(Expression textOffset);

    SymbolLayer textOffset(List<Double> textOffset);

    SymbolLayer textOpacity(double textOpacity);

    SymbolLayer textOpacity(Expression textOpacity);

    SymbolLayer textOpacityTransition(StyleTransition options);

    SymbolLayer textOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textOptional(Expression textOptional);

    SymbolLayer textOptional(boolean textOptional);

    SymbolLayer textPadding(double textPadding);

    SymbolLayer textPadding(Expression textPadding);

    SymbolLayer textPitchAlignment(Expression textPitchAlignment);

    SymbolLayer textPitchAlignment(TextPitchAlignment textPitchAlignment);

    SymbolLayer textRadialOffset(double textRadialOffset);

    SymbolLayer textRadialOffset(Expression textRadialOffset);

    SymbolLayer textRotate(double textRotate);

    SymbolLayer textRotate(Expression textRotate);

    SymbolLayer textRotationAlignment(Expression textRotationAlignment);

    SymbolLayer textRotationAlignment(TextRotationAlignment textRotationAlignment);

    SymbolLayer textSize(double textSize);

    SymbolLayer textSize(Expression textSize);

    SymbolLayer textSizeScaleRange(Expression textSizeScaleRange);

    SymbolLayer textSizeScaleRange(List<Double> textSizeScaleRange);

    SymbolLayer textTransform(Expression textTransform);

    SymbolLayer textTransform(TextTransform textTransform);

    SymbolLayer textTranslate(Expression textTranslate);

    SymbolLayer textTranslate(List<Double> textTranslate);

    SymbolLayer textTranslateAnchor(Expression textTranslateAnchor);

    SymbolLayer textTranslateAnchor(TextTranslateAnchor textTranslateAnchor);

    SymbolLayer textTranslateTransition(StyleTransition options);

    SymbolLayer textTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    SymbolLayer textVariableAnchor(Expression textVariableAnchor);

    SymbolLayer textVariableAnchor(List<String> textVariableAnchor);

    SymbolLayer textWritingMode(Expression textWritingMode);

    SymbolLayer textWritingMode(List<String> textWritingMode);

    SymbolLayer visibility(Expression visibility);

    SymbolLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static SymbolLayer iconAllowOverlap$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconAllowOverlap");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.iconAllowOverlap(z);
        }

        public static SymbolLayer iconAnchor$default(SymbolLayerDsl symbolLayerDsl, IconAnchor iconAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconAnchor");
            }
            if ((i & 1) != 0) {
                iconAnchor = IconAnchor.CENTER;
            }
            return symbolLayerDsl.iconAnchor(iconAnchor);
        }

        public static SymbolLayer iconIgnorePlacement$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconIgnorePlacement");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.iconIgnorePlacement(z);
        }

        public static SymbolLayer iconKeepUpright$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconKeepUpright");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.iconKeepUpright(z);
        }

        public static SymbolLayer iconOffset$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconOffset");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return symbolLayerDsl.iconOffset((List<Double>) list);
        }

        public static SymbolLayer iconOptional$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconOptional");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.iconOptional(z);
        }

        public static SymbolLayer iconPadding$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconPadding");
            }
            if ((i & 1) != 0) {
                d = 2.0d;
            }
            return symbolLayerDsl.iconPadding(d);
        }

        public static SymbolLayer iconPitchAlignment$default(SymbolLayerDsl symbolLayerDsl, IconPitchAlignment iconPitchAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconPitchAlignment");
            }
            if ((i & 1) != 0) {
                iconPitchAlignment = IconPitchAlignment.AUTO;
            }
            return symbolLayerDsl.iconPitchAlignment(iconPitchAlignment);
        }

        public static SymbolLayer iconRotate$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconRotate");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.iconRotate(d);
        }

        public static SymbolLayer iconRotationAlignment$default(SymbolLayerDsl symbolLayerDsl, IconRotationAlignment iconRotationAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconRotationAlignment");
            }
            if ((i & 1) != 0) {
                iconRotationAlignment = IconRotationAlignment.AUTO;
            }
            return symbolLayerDsl.iconRotationAlignment(iconRotationAlignment);
        }

        public static SymbolLayer iconSize$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconSize");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return symbolLayerDsl.iconSize(d);
        }

        public static SymbolLayer iconSizeScaleRange$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconSizeScaleRange");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.8d), Double.valueOf(2.0d)});
            }
            return symbolLayerDsl.iconSizeScaleRange((List<Double>) list);
        }

        public static SymbolLayer iconTextFit$default(SymbolLayerDsl symbolLayerDsl, IconTextFit iconTextFit, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconTextFit");
            }
            if ((i & 1) != 0) {
                iconTextFit = IconTextFit.NONE;
            }
            return symbolLayerDsl.iconTextFit(iconTextFit);
        }

        public static SymbolLayer iconTextFitPadding$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconTextFitPadding");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d), Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return symbolLayerDsl.iconTextFitPadding((List<Double>) list);
        }

        public static SymbolLayer symbolAvoidEdges$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolAvoidEdges");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.symbolAvoidEdges(z);
        }

        public static SymbolLayer symbolElevationReference$default(SymbolLayerDsl symbolLayerDsl, SymbolElevationReference symbolElevationReference, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolElevationReference");
            }
            if ((i & 1) != 0) {
                symbolElevationReference = SymbolElevationReference.GROUND;
            }
            return symbolLayerDsl.symbolElevationReference(symbolElevationReference);
        }

        public static SymbolLayer symbolPlacement$default(SymbolLayerDsl symbolLayerDsl, SymbolPlacement symbolPlacement, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolPlacement");
            }
            if ((i & 1) != 0) {
                symbolPlacement = SymbolPlacement.POINT;
            }
            return symbolLayerDsl.symbolPlacement(symbolPlacement);
        }

        public static SymbolLayer symbolSpacing$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolSpacing");
            }
            if ((i & 1) != 0) {
                d = 250.0d;
            }
            return symbolLayerDsl.symbolSpacing(d);
        }

        public static SymbolLayer symbolZElevate$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolZElevate");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.symbolZElevate(z);
        }

        public static SymbolLayer symbolZOrder$default(SymbolLayerDsl symbolLayerDsl, SymbolZOrder symbolZOrder, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolZOrder");
            }
            if ((i & 1) != 0) {
                symbolZOrder = SymbolZOrder.AUTO;
            }
            return symbolLayerDsl.symbolZOrder(symbolZOrder);
        }

        public static SymbolLayer textAllowOverlap$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textAllowOverlap");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.textAllowOverlap(z);
        }

        public static SymbolLayer textAnchor$default(SymbolLayerDsl symbolLayerDsl, TextAnchor textAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textAnchor");
            }
            if ((i & 1) != 0) {
                textAnchor = TextAnchor.CENTER;
            }
            return symbolLayerDsl.textAnchor(textAnchor);
        }

        public static SymbolLayer textFont$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textFont");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new String[]{"Open Sans Regular", "Arial Unicode MS Regular"});
            }
            return symbolLayerDsl.textFont((List<String>) list);
        }

        public static SymbolLayer textIgnorePlacement$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textIgnorePlacement");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.textIgnorePlacement(z);
        }

        public static SymbolLayer textJustify$default(SymbolLayerDsl symbolLayerDsl, TextJustify textJustify, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textJustify");
            }
            if ((i & 1) != 0) {
                textJustify = TextJustify.CENTER;
            }
            return symbolLayerDsl.textJustify(textJustify);
        }

        public static SymbolLayer textKeepUpright$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textKeepUpright");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return symbolLayerDsl.textKeepUpright(z);
        }

        public static SymbolLayer textLetterSpacing$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textLetterSpacing");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.textLetterSpacing(d);
        }

        public static SymbolLayer textLineHeight$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textLineHeight");
            }
            if ((i & 1) != 0) {
                d = 1.2d;
            }
            return symbolLayerDsl.textLineHeight(d);
        }

        public static SymbolLayer textMaxAngle$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textMaxAngle");
            }
            if ((i & 1) != 0) {
                d = 45.0d;
            }
            return symbolLayerDsl.textMaxAngle(d);
        }

        public static SymbolLayer textMaxWidth$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textMaxWidth");
            }
            if ((i & 1) != 0) {
                d = 10.0d;
            }
            return symbolLayerDsl.textMaxWidth(d);
        }

        public static SymbolLayer textOffset$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textOffset");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return symbolLayerDsl.textOffset((List<Double>) list);
        }

        public static SymbolLayer textOptional$default(SymbolLayerDsl symbolLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textOptional");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return symbolLayerDsl.textOptional(z);
        }

        public static SymbolLayer textPadding$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textPadding");
            }
            if ((i & 1) != 0) {
                d = 2.0d;
            }
            return symbolLayerDsl.textPadding(d);
        }

        public static SymbolLayer textPitchAlignment$default(SymbolLayerDsl symbolLayerDsl, TextPitchAlignment textPitchAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textPitchAlignment");
            }
            if ((i & 1) != 0) {
                textPitchAlignment = TextPitchAlignment.AUTO;
            }
            return symbolLayerDsl.textPitchAlignment(textPitchAlignment);
        }

        public static SymbolLayer textRadialOffset$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textRadialOffset");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.textRadialOffset(d);
        }

        public static SymbolLayer textRotate$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textRotate");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.textRotate(d);
        }

        public static SymbolLayer textRotationAlignment$default(SymbolLayerDsl symbolLayerDsl, TextRotationAlignment textRotationAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textRotationAlignment");
            }
            if ((i & 1) != 0) {
                textRotationAlignment = TextRotationAlignment.AUTO;
            }
            return symbolLayerDsl.textRotationAlignment(textRotationAlignment);
        }

        public static SymbolLayer textSize$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textSize");
            }
            if ((i & 1) != 0) {
                d = 16.0d;
            }
            return symbolLayerDsl.textSize(d);
        }

        public static SymbolLayer textSizeScaleRange$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textSizeScaleRange");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.8d), Double.valueOf(2.0d)});
            }
            return symbolLayerDsl.textSizeScaleRange((List<Double>) list);
        }

        public static SymbolLayer textTransform$default(SymbolLayerDsl symbolLayerDsl, TextTransform textTransform, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textTransform");
            }
            if ((i & 1) != 0) {
                textTransform = TextTransform.NONE;
            }
            return symbolLayerDsl.textTransform(textTransform);
        }

        public static SymbolLayer iconColor$default(SymbolLayerDsl symbolLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return symbolLayerDsl.iconColor(str);
        }

        public static SymbolLayer iconColorSaturation$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconColorSaturation");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.iconColorSaturation(d);
        }

        public static SymbolLayer iconEmissiveStrength$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return symbolLayerDsl.iconEmissiveStrength(d);
        }

        public static SymbolLayer iconHaloBlur$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconHaloBlur");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.iconHaloBlur(d);
        }

        public static SymbolLayer iconHaloColor$default(SymbolLayerDsl symbolLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconHaloColor");
            }
            if ((i & 1) != 0) {
                str = "rgba(0, 0, 0, 0)";
            }
            return symbolLayerDsl.iconHaloColor(str);
        }

        public static SymbolLayer iconHaloWidth$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconHaloWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.iconHaloWidth(d);
        }

        public static SymbolLayer iconImageCrossFade$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconImageCrossFade");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.iconImageCrossFade(d);
        }

        public static SymbolLayer iconOcclusionOpacity$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconOcclusionOpacity");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.iconOcclusionOpacity(d);
        }

        public static SymbolLayer iconOpacity$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return symbolLayerDsl.iconOpacity(d);
        }

        public static SymbolLayer iconTranslate$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconTranslate");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return symbolLayerDsl.iconTranslate((List<Double>) list);
        }

        public static SymbolLayer iconTranslateAnchor$default(SymbolLayerDsl symbolLayerDsl, IconTranslateAnchor iconTranslateAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: iconTranslateAnchor");
            }
            if ((i & 1) != 0) {
                iconTranslateAnchor = IconTranslateAnchor.MAP;
            }
            return symbolLayerDsl.iconTranslateAnchor(iconTranslateAnchor);
        }

        public static SymbolLayer symbolZOffset$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: symbolZOffset");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.symbolZOffset(d);
        }

        public static SymbolLayer textColor$default(SymbolLayerDsl symbolLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return symbolLayerDsl.textColor(str);
        }

        public static SymbolLayer textEmissiveStrength$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return symbolLayerDsl.textEmissiveStrength(d);
        }

        public static SymbolLayer textHaloBlur$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textHaloBlur");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.textHaloBlur(d);
        }

        public static SymbolLayer textHaloColor$default(SymbolLayerDsl symbolLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textHaloColor");
            }
            if ((i & 1) != 0) {
                str = "rgba(0, 0, 0, 0)";
            }
            return symbolLayerDsl.textHaloColor(str);
        }

        public static SymbolLayer textHaloWidth$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textHaloWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.textHaloWidth(d);
        }

        public static SymbolLayer textOcclusionOpacity$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textOcclusionOpacity");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return symbolLayerDsl.textOcclusionOpacity(d);
        }

        public static SymbolLayer textOpacity$default(SymbolLayerDsl symbolLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return symbolLayerDsl.textOpacity(d);
        }

        public static SymbolLayer textTranslate$default(SymbolLayerDsl symbolLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textTranslate");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return symbolLayerDsl.textTranslate((List<Double>) list);
        }

        public static SymbolLayer textTranslateAnchor$default(SymbolLayerDsl symbolLayerDsl, TextTranslateAnchor textTranslateAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: textTranslateAnchor");
            }
            if ((i & 1) != 0) {
                textTranslateAnchor = TextTranslateAnchor.MAP;
            }
            return symbolLayerDsl.textTranslateAnchor(textTranslateAnchor);
        }
    }
}
