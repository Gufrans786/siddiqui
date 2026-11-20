package com.mapbox.maps.extension.style.expressions.generated;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.joran.action.Action;
import com.caverock.androidsvg.SVGParser;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.hermes.intl.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.GeoJson;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.extension.style.expressions.types.FormatSection;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.types.ExpressionDsl;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationOptions;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.Marker;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 &2\u00020\u0001:\t$%&'()*+,B\u000f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\b¢\u0006\u0002\u0010\tB\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\n¢\u0006\u0002\u0010\u000bB\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\f¢\u0006\u0002\u0010\rB\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fB\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011B\u000f\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013B\u0015\b\u0012\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\f0\u0014¢\u0006\u0002\u0010\u0015B\u0015\b\u0010\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0014¢\u0006\u0002\u0010\u0016B\u0015\b\u0010\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0002\u0010\u0019B+\b\u0010\u0012\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00010\u001aj\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0001`\u001b¢\u0006\u0002\u0010\u001cJ\u0018\u0010!\u001a\u0004\u0018\u0001H\"\"\u0006\b\u0000\u0010\"\u0018\u0001H\u0086\b¢\u0006\u0002\u0010 J\u0006\u0010#\u001a\u00020\nR\"\u0010\u001e\u001a\u0004\u0018\u00010\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u0006-"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "Lcom/mapbox/bindgen/Value;", "builder", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;)V", "value", "", "(D)V", "", "(J)V", "", "(Z)V", "", "(Ljava/lang/String;)V", "", "([D)V", "", "([J)V", "", "([Z)V", "", "([Ljava/lang/String;)V", "([[D)V", "", "", "(Ljava/util/List;)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "<set-?>", "literalValue", "getLiteralValue", "()Ljava/lang/Object;", "getLiteral", ExifInterface.GPS_DIRECTION_TRUE, "isLiteral", "Builder", "CollatorBuilder", "Companion", "ExpressionBuilder", "FormatBuilder", "FormatSectionBuilder", "ImageBuilder", "InterpolatorBuilder", "NumberFormatBuilder", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Expression extends Value {

    public static final Companion INSTANCE = new Companion(null);
    private Object literalValue;

    public Expression(double d, DefaultConstructorMarker defaultConstructorMarker) {
        this(d);
    }

    public Expression(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    public Expression(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public Expression(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public Expression(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    @JvmStatic
    public static final Expression abs(double d) {
        return INSTANCE.abs(d);
    }

    @JvmStatic
    public static final Expression abs(Expression... expressionArr) {
        return INSTANCE.abs(expressionArr);
    }

    @JvmStatic
    public static final Expression accumulated() {
        return INSTANCE.accumulated();
    }

    @JvmStatic
    public static final Expression acos(double d) {
        return INSTANCE.acos(d);
    }

    @JvmStatic
    public static final Expression acos(Expression... expressionArr) {
        return INSTANCE.acos(expressionArr);
    }

    @JvmStatic
    public static final Expression activeAnchor() {
        return INSTANCE.activeAnchor();
    }

    @JvmStatic
    public static final Expression all(Expression... expressionArr) {
        return INSTANCE.all(expressionArr);
    }

    @JvmStatic
    public static final Expression any(Expression... expressionArr) {
        return INSTANCE.any(expressionArr);
    }

    @JvmStatic
    public static final Expression array(Expression... expressionArr) {
        return INSTANCE.array(expressionArr);
    }

    @JvmStatic
    public static final Expression asin(double d) {
        return INSTANCE.asin(d);
    }

    @JvmStatic
    public static final Expression asin(Expression... expressionArr) {
        return INSTANCE.asin(expressionArr);
    }

    @JvmStatic
    public static final Expression at(double d, Expression expression) {
        return INSTANCE.at(d, expression);
    }

    @JvmStatic
    public static final Expression at(Expression... expressionArr) {
        return INSTANCE.at(expressionArr);
    }

    @JvmStatic
    public static final Expression atInterpolated(Expression... expressionArr) {
        return INSTANCE.atInterpolated(expressionArr);
    }

    @JvmStatic
    public static final Expression atan(double d) {
        return INSTANCE.atan(d);
    }

    @JvmStatic
    public static final Expression atan(Expression... expressionArr) {
        return INSTANCE.atan(expressionArr);
    }

    @JvmStatic
    public static final Expression m1033boolean(Expression... expressionArr) {
        return INSTANCE.m1035boolean(expressionArr);
    }

    @JvmStatic
    public static final Expression ceil(double d) {
        return INSTANCE.ceil(d);
    }

    @JvmStatic
    public static final Expression ceil(Expression... expressionArr) {
        return INSTANCE.ceil(expressionArr);
    }

    @JvmStatic
    public static final Expression coalesce(Expression... expressionArr) {
        return INSTANCE.coalesce(expressionArr);
    }

    @JvmStatic
    public static final Expression collator(Expression expression, Expression expression2, Expression expression3) {
        return INSTANCE.collator(expression, expression2, expression3);
    }

    @JvmStatic
    public static final Expression collator(boolean z, boolean z2, String str) {
        return INSTANCE.collator(z, z2, str);
    }

    @JvmStatic
    public static final Expression collator(boolean z, boolean z2, Locale locale) {
        return INSTANCE.collator(z, z2, locale);
    }

    @JvmStatic
    public static final Expression color(int i) {
        return INSTANCE.color(i);
    }

    @JvmStatic
    public static final Expression concat(Expression... expressionArr) {
        return INSTANCE.concat(expressionArr);
    }

    @JvmStatic
    public static final Expression concat(String... strArr) {
        return INSTANCE.concat(strArr);
    }

    @JvmStatic
    public static final Expression config(Expression... expressionArr) {
        return INSTANCE.config(expressionArr);
    }

    @JvmStatic
    public static final Expression cos(double d) {
        return INSTANCE.cos(d);
    }

    @JvmStatic
    public static final Expression cos(Expression... expressionArr) {
        return INSTANCE.cos(expressionArr);
    }

    @JvmStatic
    public static final Expression cubicBezier(double d, double d2, double d3, double d4) {
        return INSTANCE.cubicBezier(d, d2, d3, d4);
    }

    @JvmStatic
    public static final Expression cubicBezier(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        return INSTANCE.cubicBezier(expression, expression2, expression3, expression4);
    }

    @JvmStatic
    public static final Expression cubicBezierInterpolator(double d, double d2, double d3, double d4, Expression expression, Pair<Expression, Expression>... pairArr) {
        return INSTANCE.cubicBezierInterpolator(d, d2, d3, d4, expression, pairArr);
    }

    @JvmStatic
    public static final Expression cubicBezierInterpolator(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Pair<Expression, Expression>... pairArr) {
        return INSTANCE.cubicBezierInterpolator(expression, expression2, expression3, expression4, expression5, pairArr);
    }

    @JvmStatic
    public static final Expression distance(GeoJson geoJson) {
        return INSTANCE.distance(geoJson);
    }

    @JvmStatic
    public static final Expression distanceFromCenter() {
        return INSTANCE.distanceFromCenter();
    }

    @JvmStatic
    public static final Expression division(double d, double d2) {
        return INSTANCE.division(d, d2);
    }

    @JvmStatic
    public static final Expression division(Expression... expressionArr) {
        return INSTANCE.division(expressionArr);
    }

    @JvmStatic
    public static final Expression downcase(String str) {
        return INSTANCE.downcase(str);
    }

    @JvmStatic
    public static final Expression downcase(Expression... expressionArr) {
        return INSTANCE.downcase(expressionArr);
    }

    @JvmStatic
    public static final Expression e() {
        return INSTANCE.e();
    }

    @JvmStatic
    public static final Expression eq(Expression... expressionArr) {
        return INSTANCE.eq(expressionArr);
    }

    @JvmStatic
    public static final Expression exponential(double d) {
        return INSTANCE.exponential(d);
    }

    @JvmStatic
    public static final Expression exponential(Expression expression) {
        return INSTANCE.exponential(expression);
    }

    @JvmStatic
    public static final Expression exponentialInterpolator(double d, Expression expression, Pair<Expression, Expression>... pairArr) {
        return INSTANCE.exponentialInterpolator(d, expression, pairArr);
    }

    @JvmStatic
    public static final Expression exponentialInterpolator(Expression expression, Expression expression2, Pair<Expression, Expression>... pairArr) {
        return INSTANCE.exponentialInterpolator(expression, expression2, pairArr);
    }

    @JvmStatic
    public static final Expression featureState(Expression... expressionArr) {
        return INSTANCE.featureState(expressionArr);
    }

    @JvmStatic
    public static final Expression floor(double d) {
        return INSTANCE.floor(d);
    }

    @JvmStatic
    public static final Expression floor(Expression... expressionArr) {
        return INSTANCE.floor(expressionArr);
    }

    @JvmStatic
    public static final Expression format(FormatSection... formatSectionArr) {
        return INSTANCE.format(formatSectionArr);
    }

    @JvmStatic
    public static final Expression fromRaw(String str) {
        return INSTANCE.fromRaw(str);
    }

    @JvmStatic
    public static final Expression geometryType() {
        return INSTANCE.geometryType();
    }

    @JvmStatic
    public static final Expression get(String str) {
        return INSTANCE.get(str);
    }

    @JvmStatic
    public static final Expression get(String str, Expression expression) {
        return INSTANCE.get(str, expression);
    }

    @JvmStatic
    public static final Expression get(Expression... expressionArr) {
        return INSTANCE.get(expressionArr);
    }

    @JvmStatic
    public static final Expression gt(Expression... expressionArr) {
        return INSTANCE.gt(expressionArr);
    }

    @JvmStatic
    public static final Expression gte(Expression... expressionArr) {
        return INSTANCE.gte(expressionArr);
    }

    @JvmStatic
    public static final Expression has(String str) {
        return INSTANCE.has(str);
    }

    @JvmStatic
    public static final Expression has(String str, Expression expression) {
        return INSTANCE.has(str, expression);
    }

    @JvmStatic
    public static final Expression has(Expression... expressionArr) {
        return INSTANCE.has(expressionArr);
    }

    @JvmStatic
    public static final Expression heatmapDensity() {
        return INSTANCE.heatmapDensity();
    }

    @JvmStatic
    public static final Expression hsl(Expression... expressionArr) {
        return INSTANCE.hsl(expressionArr);
    }

    @JvmStatic
    public static final Expression hsla(Expression... expressionArr) {
        return INSTANCE.hsla(expressionArr);
    }

    @JvmStatic
    public static final Expression id() {
        return INSTANCE.id();
    }

    @JvmStatic
    public static final Expression image(Expression expression, Map<String, Expression> map) {
        return INSTANCE.image(expression, map);
    }

    @JvmStatic
    public static final Expression image(Expression expression, Map<String, Expression> map, Expression expression2, Map<String, Expression> map2) {
        return INSTANCE.image(expression, map, expression2, map2);
    }

    @JvmStatic
    public static final Expression image(Expression... expressionArr) {
        return INSTANCE.image(expressionArr);
    }

    @JvmStatic
    public static final Expression inExpression(double d, Expression expression) {
        return INSTANCE.inExpression(d, expression);
    }

    @JvmStatic
    public static final Expression inExpression(String str, Expression expression) {
        return INSTANCE.inExpression(str, expression);
    }

    @JvmStatic
    public static final Expression inExpression(Expression... expressionArr) {
        return INSTANCE.inExpression(expressionArr);
    }

    @JvmStatic
    public static final Expression indexOf(Expression... expressionArr) {
        return INSTANCE.indexOf(expressionArr);
    }

    @JvmStatic
    public static final Expression interpolate(Expression... expressionArr) {
        return INSTANCE.interpolate(expressionArr);
    }

    @JvmStatic
    public static final Expression isSupportedScript(String str) {
        return INSTANCE.isSupportedScript(str);
    }

    @JvmStatic
    public static final Expression isSupportedScript(Expression... expressionArr) {
        return INSTANCE.isSupportedScript(expressionArr);
    }

    @JvmStatic
    public static final Expression length(String str) {
        return INSTANCE.length(str);
    }

    @JvmStatic
    public static final Expression length(Expression... expressionArr) {
        return INSTANCE.length(expressionArr);
    }

    @JvmStatic
    public static final Expression letExpression(Expression... expressionArr) {
        return INSTANCE.letExpression(expressionArr);
    }

    @JvmStatic
    public static final Expression lineProgress() {
        return INSTANCE.lineProgress();
    }

    @JvmStatic
    public static final Expression linear() {
        return INSTANCE.linear();
    }

    @JvmStatic
    public static final Expression linearInterpolator(Expression expression, Pair<Expression, Expression>... pairArr) {
        return INSTANCE.linearInterpolator(expression, pairArr);
    }

    @JvmStatic
    public static final Expression literal(double d) {
        return INSTANCE.literal(d);
    }

    @JvmStatic
    public static final Expression literal(long j) {
        return INSTANCE.literal(j);
    }

    @JvmStatic
    public static final Expression literal(String str) {
        return INSTANCE.literal(str);
    }

    @JvmStatic
    public static final Expression literal(boolean z) {
        return INSTANCE.literal(z);
    }

    @JvmStatic
    public static final Expression ln(double d) {
        return INSTANCE.ln(d);
    }

    @JvmStatic
    public static final Expression ln(Expression... expressionArr) {
        return INSTANCE.ln(expressionArr);
    }

    @JvmStatic
    public static final Expression ln2() {
        return INSTANCE.ln2();
    }

    @JvmStatic
    public static final Expression log10(double d) {
        return INSTANCE.log10(d);
    }

    @JvmStatic
    public static final Expression log10(Expression... expressionArr) {
        return INSTANCE.log10(expressionArr);
    }

    @JvmStatic
    public static final Expression log2(double d) {
        return INSTANCE.log2(d);
    }

    @JvmStatic
    public static final Expression log2(Expression... expressionArr) {
        return INSTANCE.log2(expressionArr);
    }

    @JvmStatic
    public static final Expression lt(Expression... expressionArr) {
        return INSTANCE.lt(expressionArr);
    }

    @JvmStatic
    public static final Expression lte(Expression... expressionArr) {
        return INSTANCE.lte(expressionArr);
    }

    @JvmStatic
    public static final Expression match(Expression expression, Pair<Expression, Expression>[] pairArr, Expression expression2) {
        return INSTANCE.match(expression, pairArr, expression2);
    }

    @JvmStatic
    public static final Expression match(Expression... expressionArr) {
        return INSTANCE.match(expressionArr);
    }

    @JvmStatic
    public static final Expression max(double... dArr) {
        return INSTANCE.max(dArr);
    }

    @JvmStatic
    public static final Expression max(Expression... expressionArr) {
        return INSTANCE.max(expressionArr);
    }

    @JvmStatic
    public static final Expression measureLight(Expression... expressionArr) {
        return INSTANCE.measureLight(expressionArr);
    }

    @JvmStatic
    public static final Expression min(double... dArr) {
        return INSTANCE.min(dArr);
    }

    @JvmStatic
    public static final Expression min(Expression... expressionArr) {
        return INSTANCE.min(expressionArr);
    }

    @JvmStatic
    public static final Expression mod(double d, double d2) {
        return INSTANCE.mod(d, d2);
    }

    @JvmStatic
    public static final Expression mod(Expression... expressionArr) {
        return INSTANCE.mod(expressionArr);
    }

    @JvmStatic
    public static final Expression neq(Expression... expressionArr) {
        return INSTANCE.neq(expressionArr);
    }

    @JvmStatic
    public static final Expression not(boolean z) {
        return INSTANCE.not(z);
    }

    @JvmStatic
    public static final Expression not(Expression... expressionArr) {
        return INSTANCE.not(expressionArr);
    }

    @JvmStatic
    public static final Expression number(Expression... expressionArr) {
        return INSTANCE.number(expressionArr);
    }

    @JvmStatic
    public static final Expression numberFormat(double d, Function1<? super NumberFormatBuilder, Unit> function1) {
        return INSTANCE.numberFormat(d, function1);
    }

    @JvmStatic
    public static final Expression numberFormat(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5) {
        return INSTANCE.numberFormat(expression, expression2, expression3, expression4, expression5);
    }

    @JvmStatic
    public static final Expression objectExpression(Expression... expressionArr) {
        return INSTANCE.objectExpression(expressionArr);
    }

    @JvmStatic
    public static final Expression pi() {
        return INSTANCE.pi();
    }

    @JvmStatic
    public static final Expression pitch() {
        return INSTANCE.pitch();
    }

    @JvmStatic
    public static final Expression pow(double d, double d2) {
        return INSTANCE.pow(d, d2);
    }

    @JvmStatic
    public static final Expression pow(Expression... expressionArr) {
        return INSTANCE.pow(expressionArr);
    }

    @JvmStatic
    public static final Expression product(double... dArr) {
        return INSTANCE.product(dArr);
    }

    @JvmStatic
    public static final Expression product(Expression... expressionArr) {
        return INSTANCE.product(expressionArr);
    }

    @JvmStatic
    public static final Expression properties() {
        return INSTANCE.properties();
    }

    @JvmStatic
    public static final Expression random(Expression... expressionArr) {
        return INSTANCE.random(expressionArr);
    }

    @JvmStatic
    public static final Expression rasterParticleSpeed() {
        return INSTANCE.rasterParticleSpeed();
    }

    @JvmStatic
    public static final Expression rasterValue() {
        return INSTANCE.rasterValue();
    }

    @JvmStatic
    public static final Expression resolvedLocale(Expression... expressionArr) {
        return INSTANCE.resolvedLocale(expressionArr);
    }

    @JvmStatic
    public static final Expression rgb(double d, double d2, double d3) {
        return INSTANCE.rgb(d, d2, d3);
    }

    @JvmStatic
    public static final Expression rgb(Expression... expressionArr) {
        return INSTANCE.rgb(expressionArr);
    }

    @JvmStatic
    public static final Expression rgba(double d, double d2, double d3, double d4) {
        return INSTANCE.rgba(d, d2, d3, d4);
    }

    @JvmStatic
    public static final Expression rgba(Expression... expressionArr) {
        return INSTANCE.rgba(expressionArr);
    }

    @JvmStatic
    public static final Expression round(double d) {
        return INSTANCE.round(d);
    }

    @JvmStatic
    public static final Expression round(Expression... expressionArr) {
        return INSTANCE.round(expressionArr);
    }

    @JvmStatic
    public static final Expression sin(double d) {
        return INSTANCE.sin(d);
    }

    @JvmStatic
    public static final Expression sin(Expression... expressionArr) {
        return INSTANCE.sin(expressionArr);
    }

    @JvmStatic
    public static final Expression skyRadialProgress() {
        return INSTANCE.skyRadialProgress();
    }

    @JvmStatic
    public static final Expression slice(Expression... expressionArr) {
        return INSTANCE.slice(expressionArr);
    }

    @JvmStatic
    public static final Expression split(Expression... expressionArr) {
        return INSTANCE.split(expressionArr);
    }

    @JvmStatic
    public static final Expression sqrt(double d) {
        return INSTANCE.sqrt(d);
    }

    @JvmStatic
    public static final Expression sqrt(Expression... expressionArr) {
        return INSTANCE.sqrt(expressionArr);
    }

    @JvmStatic
    public static final Expression step(Expression expression, Expression expression2, Pair<Expression, Expression>... pairArr) {
        return INSTANCE.step(expression, expression2, pairArr);
    }

    @JvmStatic
    public static final Expression step(Expression... expressionArr) {
        return INSTANCE.step(expressionArr);
    }

    @JvmStatic
    public static final Expression string(Expression... expressionArr) {
        return INSTANCE.string(expressionArr);
    }

    @JvmStatic
    public static final Expression subtract(double d) {
        return INSTANCE.subtract(d);
    }

    @JvmStatic
    public static final Expression subtract(double d, double d2) {
        return INSTANCE.subtract(d, d2);
    }

    @JvmStatic
    public static final Expression subtract(Expression... expressionArr) {
        return INSTANCE.subtract(expressionArr);
    }

    @JvmStatic
    public static final Expression sum(double... dArr) {
        return INSTANCE.sum(dArr);
    }

    @JvmStatic
    public static final Expression sum(Expression... expressionArr) {
        return INSTANCE.sum(expressionArr);
    }

    @JvmStatic
    public static final Expression switchCase(Expression... expressionArr) {
        return INSTANCE.switchCase(expressionArr);
    }

    @JvmStatic
    public static final Expression switchCase(Pair<Expression, Expression>[] pairArr, Expression expression) {
        return INSTANCE.switchCase(pairArr, expression);
    }

    @JvmStatic
    public static final Expression tan(double d) {
        return INSTANCE.tan(d);
    }

    @JvmStatic
    public static final Expression tan(Expression... expressionArr) {
        return INSTANCE.tan(expressionArr);
    }

    @JvmStatic
    public static final Expression toBoolean(Expression... expressionArr) {
        return INSTANCE.toBoolean(expressionArr);
    }

    @JvmStatic
    public static final Expression toColor(Expression... expressionArr) {
        return INSTANCE.toColor(expressionArr);
    }

    @JvmStatic
    public static final Expression toHsla(Expression... expressionArr) {
        return INSTANCE.toHsla(expressionArr);
    }

    @JvmStatic
    public static final Expression toNumber(Expression... expressionArr) {
        return INSTANCE.toNumber(expressionArr);
    }

    @JvmStatic
    public static final Expression toRgba(Expression... expressionArr) {
        return INSTANCE.toRgba(expressionArr);
    }

    @JvmStatic
    public static final Expression toString(Expression... expressionArr) {
        return INSTANCE.toString(expressionArr);
    }

    @JvmStatic
    public static final Expression typeofExpression(Expression... expressionArr) {
        return INSTANCE.typeofExpression(expressionArr);
    }

    @JvmStatic
    public static final Expression upcase(String str) {
        return INSTANCE.upcase(str);
    }

    @JvmStatic
    public static final Expression upcase(Expression... expressionArr) {
        return INSTANCE.upcase(expressionArr);
    }

    @JvmStatic
    public static final Expression varExpression(String str) {
        return INSTANCE.varExpression(str);
    }

    @JvmStatic
    public static final Expression varExpression(Expression... expressionArr) {
        return INSTANCE.varExpression(expressionArr);
    }

    @JvmStatic
    public static final Expression within(Geometry geometry) {
        return INSTANCE.within(geometry);
    }

    @JvmStatic
    public static final Expression worldview(Expression... expressionArr) {
        return INSTANCE.worldview(expressionArr);
    }

    @JvmStatic
    public static final Expression zoom() {
        return INSTANCE.zoom();
    }

    private Expression(Builder builder) {
        super(builder.contents$extension_style_release());
        if (Intrinsics.areEqual("literal", builder.getOperator())) {
            this.literalValue = ((Expression) CollectionsKt.last((List) builder.getArguments$extension_style_release())).literalValue;
        }
    }

    private Expression(double d) {
        super(d);
        this.literalValue = Double.valueOf(d);
    }

    private Expression(long j) {
        super(j);
        this.literalValue = Long.valueOf(j);
    }

    private Expression(boolean z) {
        super(z);
        this.literalValue = Boolean.valueOf(z);
    }

    private Expression(String str) {
        super(str);
        this.literalValue = str;
    }

    public Expression(double[][] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        double[][] dArr = value;
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double[] dArr2 : dArr) {
            ArrayList arrayList2 = new ArrayList(dArr2.length);
            for (double d : dArr2) {
                arrayList2.add(new Value(d));
            }
            arrayList.add(new Value((List<Value>) arrayList2));
        }
        super((List<Value>) arrayList);
        this.literalValue = value;
    }

    public Expression(List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        List<? extends Object> list = value;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(TypeUtils.INSTANCE.wrapToValue(it.next()));
        }
        super((List<Value>) arrayList);
        this.literalValue = value;
    }

    public Expression(HashMap<String, Value> value) {
        super(value);
        Intrinsics.checkNotNullParameter(value, "value");
        this.literalValue = value;
    }

    public final Object getLiteralValue() {
        return this.literalValue;
    }

    public final boolean isLiteral() {
        return this.literalValue != null;
    }

    public final <T> T getLiteral() {
        Object literalValue = getLiteralValue();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
        if (!(literalValue instanceof Object)) {
            return null;
        }
        T t = (T) getLiteralValue();
        Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
        return t;
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\u0007H\u0016J\u0013\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0000¢\u0006\u0002\b\u0011R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;", "", "operator", "", "(Ljava/lang/String;)V", "arguments", "Ljava/util/ArrayList;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "Lkotlin/collections/ArrayList;", "getArguments$extension_style_release", "()Ljava/util/ArrayList;", "getOperator$extension_style_release", "()Ljava/lang/String;", "build", "contents", "", "Lcom/mapbox/bindgen/Value;", "contents$extension_style_release", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static abstract class Builder {
        private final ArrayList<Expression> arguments;
        private final String operator;

        public Builder(String operator) {
            Intrinsics.checkNotNullParameter(operator, "operator");
            this.operator = operator;
            this.arguments = new ArrayList<>();
        }

        public final String getOperator() {
            return this.operator;
        }

        public final ArrayList<Expression> getArguments$extension_style_release() {
            return this.arguments;
        }

        public final List<Value> contents$extension_style_release() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Value(this.operator));
            arrayList.addAll(this.arguments);
            return arrayList;
        }

        public Expression build() {
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (Intrinsics.areEqual(this.operator, "match")) {
                ExpressionBuilder expressionBuilder = new ExpressionBuilder("match");
                int size = this.arguments.size() - 1;
                int i = 0;
                for (Object obj : this.arguments) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    Expression expressionUnwrapFromLiteralArray = (Expression) obj;
                    if (i % 2 == 1 && i != size) {
                        expressionUnwrapFromLiteralArray = TypeUtilsKt.unwrapFromLiteralArray(expressionUnwrapFromLiteralArray);
                    }
                    expressionBuilder.addArgument(expressionUnwrapFromLiteralArray);
                    i = i2;
                }
                return new Expression(expressionBuilder, defaultConstructorMarker);
            }
            return new Expression(this, defaultConstructorMarker);
        }
    }

    @Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0013\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001f\u0010\u0005\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0000J\u001f\u0010\r\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0000H\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011J\u001f\u0010\u0012\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\u0013\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\u0014\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\u0015\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010\u0016\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0016\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0011J\u001f\u0010\u0018\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\u001a\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010\u001b\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\u001c\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010\u001d\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\u001e\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0010\u0010 \u001a\u00020\u00002\b\b\u0001\u0010!\u001a\u00020\"J\u001f\u0010#\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010#\u001a\u00020\u00002\u0012\u0010$\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030%\"\u00020\u0003¢\u0006\u0002\u0010&J\u001f\u0010'\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010(\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020\u0000J\u001f\u0010-\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0016\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000bJ\u001f\u00100\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u00100\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J\u0006\u00101\u001a\u00020\u0000J\u001f\u00102\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u00103\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u00104\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u00104\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u00105\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0006\u00107\u001a\u00020\u0000J\u001f\u00108\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0003J\u0016\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011J\u001f\u0010:\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010;\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010<\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0003J\u0016\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010>\u001a\u00020\u0000J\u001f\u0010?\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010@\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0006\u0010A\u001a\u00020\u0000J\u001f\u0010B\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010D\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0016\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020\u0011J\u0016\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u0011J\u001f\u0010G\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010H\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010I\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0003J\u001f\u0010K\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010K\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0003J\u001f\u0010L\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0006\u0010M\u001a\u00020\u0000J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020OJ\u000e\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020PJ\u000e\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J*\u0010N\u001a\u00020\u00002\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020R0Qj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020R`SJ\u0014\u0010N\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020R0TJ\u001f\u0010U\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010V\u001a\u00020\u0000J\u001f\u0010W\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010W\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010X\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010X\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010Y\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010Z\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010[\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010\\\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0012\u0010\\\u001a\u00020\u00002\n\u0010$\u001a\u00020]\"\u00020\u000bJ\u001f\u0010^\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010_\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0012\u0010_\u001a\u00020\u00002\n\u0010$\u001a\u00020]\"\u00020\u000bJ\u001f\u0010`\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0016\u0010`\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000bJ\u001f\u0010a\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010b\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010b\u001a\u00020\u00002\u0006\u0010c\u001a\u00020OJ\u001f\u0010d\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ'\u0010e\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u00112\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020g\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ'\u0010e\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020g\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010h\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0006\u0010i\u001a\u00020\u0000J\u0006\u0010j\u001a\u00020\u0000J\u001f\u0010k\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0016\u0010k\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000bJ\u001f\u0010l\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0012\u0010l\u001a\u00020\u00002\n\u0010m\u001a\u00020]\"\u00020\u000bJ\u0006\u0010n\u001a\u00020\u0000J\u001f\u0010o\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0006\u0010p\u001a\u00020\u0000J\u0006\u0010q\u001a\u00020\u0000J\u001f\u0010r\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010s\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001e\u0010s\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u000b2\u0006\u0010u\u001a\u00020\u000b2\u0006\u0010v\u001a\u00020\u000bJ\u001f\u0010w\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ&\u0010w\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u000b2\u0006\u0010u\u001a\u00020\u000b2\u0006\u0010v\u001a\u00020\u000b2\u0006\u0010x\u001a\u00020\u000bJ\u001f\u0010y\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010y\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010z\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010z\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010{\u001a\u00020\u0000J\u001f\u0010|\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010}\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u001f\u0010~\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000e\u0010~\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010\u007f\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0018\u0010\u0080\u0001\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u00112\u0007\u0010\u0081\u0001\u001a\u00020\u0011J \u0010\u0080\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ(\u0010\u0080\u0001\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u000b2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0018\u0010\u0080\u0001\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u000b2\u0007\u0010\u0081\u0001\u001a\u00020\u000bJ\u001d\u0010\u0080\u0001\u001a\u00020\u00002\u0014\u0010\u0082\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u0083\u0001J\u001f\u0010=\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u0084\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000f\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0017\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000bJ \u0010\u0085\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u0013\u0010\u0085\u0001\u001a\u00020\u00002\n\u0010m\u001a\u00020]\"\u00020\u000bJ \u0010\u0086\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u0087\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000f\u0010\u0087\u0001\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ \u0010\u0088\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u0089\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u008a\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u008b\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u008c\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u008d\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u008e\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ \u0010\u008f\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000f\u0010\u008f\u0001\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J \u0010\u0090\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tJ\u000f\u0010\u0090\u0001\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J\u0011\u0010\u0091\u0001\u001a\u00020\u00002\b\u0010\u0092\u0001\u001a\u00030\u0093\u0001J\"\u0010\u0094\u0001\u001a\u00020\u00002\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tH\u0007J\u0007\u0010\u0095\u0001\u001a\u00020\u0000¨\u0006\u0096\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;", "operator", "", "(Ljava/lang/String;)V", "abs", "block", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "value", "", "accumulated", "acos", "activeAnchor", "addArgument", "expression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", SVGParser.XML_STYLESHEET_ATTR_MEDIA_ALL, "any", "array", "asin", "at", FirebaseAnalytics.Param.INDEX, "atInterpolated", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$InterpolatorBuilder;", "atan", TypedValues.Custom.S_BOOLEAN, "ceil", "coalesce", "collator", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$CollatorBuilder;", "color", "intColor", "", "concat", "values", "", "([Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "config", "cos", "distance", "geojson", "Lcom/mapbox/geojson/GeoJson;", "distanceFromCenter", "division", "first", "second", "downcase", JWKParameterNames.RSA_EXPONENT, "eq", "featureState", "floor", "format", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$FormatBuilder;", "geometryType", "get", Action.KEY_ATTRIBUTE, "gt", "gte", "has", TypedValues.Custom.S_STRING, "heatmapDensity", "hsl", "hsla", "id", "image", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ImageBuilder;", "inExpression", "needle", "haystack", "indexOf", "interpolate", "isSupportedScript", "script", "length", "letExpression", "lineProgress", "literal", "", "", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "", "ln", "ln2", "log10", "log2", "lt", "lte", "match", "max", "", "measureLight", "min", "mod", "neq", "not", "bool", "number", "numberFormat", "input", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$NumberFormatBuilder;", "objectExpression", ContextChain.TAG_PRODUCT_AND_INFRA, "pitch", "pow", "product", "double", LightUtils.LIGHT_PROPERTIES, "random", "rasterParticleSpeed", "rasterValue", "resolvedLocale", "rgb", "red", "green", "blue", "rgba", "alpha", "round", "sin", "skyRadialProgress", "slice", "split", "sqrt", "step", "stop", "output", "pair", "Lkotlin/Pair;", "subtract", "sum", "switchCase", "tan", "toBoolean", "toColor", "toHsla", "toNumber", "toRgba", "toString", "typeofExpression", "upcase", "varExpression", "within", "geometry", "Lcom/mapbox/geojson/Geometry;", "worldview", "zoom", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @ExpressionDsl
    public static class ExpressionBuilder extends Builder {
        public ExpressionBuilder(String operator) {
            super(operator);
            Intrinsics.checkNotNullParameter(operator, "operator");
        }

        public final ExpressionBuilder addArgument(Expression expression) {
            Intrinsics.checkNotNullParameter(expression, "expression");
            getArguments$extension_style_release().add(expression);
            return this;
        }

        public final ExpressionBuilder subtract(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.subtract(block));
            return this;
        }

        public final ExpressionBuilder not(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.not(block));
            return this;
        }

        public final ExpressionBuilder neq(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.neq(block));
            return this;
        }

        public final ExpressionBuilder product(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.product(block));
            return this;
        }

        public final ExpressionBuilder division(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.division(block));
            return this;
        }

        public final ExpressionBuilder mod(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.mod(block));
            return this;
        }

        public final ExpressionBuilder pow(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.pow(block));
            return this;
        }

        public final ExpressionBuilder sum(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.sum(block));
            return this;
        }

        public final ExpressionBuilder lt(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.lt(block));
            return this;
        }

        public final ExpressionBuilder lte(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.lte(block));
            return this;
        }

        public final ExpressionBuilder eq(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.eq(block));
            return this;
        }

        public final ExpressionBuilder gt(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.gt(block));
            return this;
        }

        public final ExpressionBuilder gte(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.gte(block));
            return this;
        }

        public final ExpressionBuilder abs(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.abs(block));
            return this;
        }

        public final ExpressionBuilder accumulated() {
            getArguments$extension_style_release().add(Expression.INSTANCE.accumulated());
            return this;
        }

        public final ExpressionBuilder acos(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.acos(block));
            return this;
        }

        public final ExpressionBuilder activeAnchor() {
            getArguments$extension_style_release().add(Expression.INSTANCE.activeAnchor());
            return this;
        }

        public final ExpressionBuilder all(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.all(block));
            return this;
        }

        public final ExpressionBuilder any(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.any(block));
            return this;
        }

        public final ExpressionBuilder array(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.array(block));
            return this;
        }

        public final ExpressionBuilder asin(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.asin(block));
            return this;
        }

        public final ExpressionBuilder at(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.at(block));
            return this;
        }

        public final ExpressionBuilder atInterpolated(Function1<? super InterpolatorBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.atInterpolated(block));
            return this;
        }

        public final ExpressionBuilder atan(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.atan(block));
            return this;
        }

        public final ExpressionBuilder m1036boolean(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.m1034boolean(block));
            return this;
        }

        public final ExpressionBuilder switchCase(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.switchCase(block));
            return this;
        }

        public final ExpressionBuilder ceil(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.ceil(block));
            return this;
        }

        public final ExpressionBuilder coalesce(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.coalesce(block));
            return this;
        }

        public final ExpressionBuilder collator(Function1<? super CollatorBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ArrayList<Expression> arguments$extension_style_release = getArguments$extension_style_release();
            CollatorBuilder collatorBuilder = new CollatorBuilder();
            block.invoke(collatorBuilder);
            arguments$extension_style_release.add(collatorBuilder.build());
            return this;
        }

        public final ExpressionBuilder concat(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.concat(block));
            return this;
        }

        public final ExpressionBuilder config(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.config(block));
            return this;
        }

        public final ExpressionBuilder cos(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.cos(block));
            return this;
        }

        public final ExpressionBuilder distance(GeoJson geojson) {
            Intrinsics.checkNotNullParameter(geojson, "geojson");
            getArguments$extension_style_release().add(Expression.INSTANCE.distance(geojson));
            return this;
        }

        public final ExpressionBuilder distanceFromCenter() {
            getArguments$extension_style_release().add(Expression.INSTANCE.distanceFromCenter());
            return this;
        }

        public final ExpressionBuilder downcase(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.downcase(block));
            return this;
        }

        public final ExpressionBuilder e() {
            getArguments$extension_style_release().add(Expression.INSTANCE.e());
            return this;
        }

        public final ExpressionBuilder featureState(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.featureState(block));
            return this;
        }

        public final ExpressionBuilder floor(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.floor(block));
            return this;
        }

        public final ExpressionBuilder format(Function1<? super FormatBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.format(block));
            return this;
        }

        public final ExpressionBuilder geometryType() {
            getArguments$extension_style_release().add(Expression.INSTANCE.geometryType());
            return this;
        }

        public final ExpressionBuilder get(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.get(block));
            return this;
        }

        public final ExpressionBuilder has(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.has(block));
            return this;
        }

        public final ExpressionBuilder heatmapDensity() {
            getArguments$extension_style_release().add(Expression.INSTANCE.heatmapDensity());
            return this;
        }

        public final ExpressionBuilder hsl(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.hsl(block));
            return this;
        }

        public final ExpressionBuilder hsla(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.hsla(block));
            return this;
        }

        public final ExpressionBuilder id() {
            getArguments$extension_style_release().add(Expression.INSTANCE.id());
            return this;
        }

        public final ExpressionBuilder image(Function1<? super ImageBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.image(block));
            return this;
        }

        public final ExpressionBuilder inExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.inExpression(block));
            return this;
        }

        public final ExpressionBuilder indexOf(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.indexOf(block));
            return this;
        }

        public final ExpressionBuilder interpolate(Function1<? super InterpolatorBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.interpolate(block));
            return this;
        }

        public final ExpressionBuilder isSupportedScript(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.isSupportedScript(block));
            return this;
        }

        public final ExpressionBuilder length(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.length(block));
            return this;
        }

        public final ExpressionBuilder letExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.letExpression(block));
            return this;
        }

        public final ExpressionBuilder lineProgress() {
            getArguments$extension_style_release().add(Expression.INSTANCE.lineProgress());
            return this;
        }

        public final ExpressionBuilder literal(double value) {
            getArguments$extension_style_release().add(new Expression(value, (DefaultConstructorMarker) null));
            return this;
        }

        public final ExpressionBuilder literal(long value) {
            getArguments$extension_style_release().add(new Expression(value, (DefaultConstructorMarker) null));
            return this;
        }

        public final ExpressionBuilder literal(boolean value) {
            getArguments$extension_style_release().add(new Expression(value, (DefaultConstructorMarker) null));
            return this;
        }

        public final ExpressionBuilder literal(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(new Expression(value, (DefaultConstructorMarker) null));
            return this;
        }

        public final ExpressionBuilder literal(HashMap<String, Object> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(Expression.INSTANCE.literal$extension_style_release(value));
            return this;
        }

        public final ExpressionBuilder literal(List<? extends Object> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(Expression.INSTANCE.literal$extension_style_release(value));
            return this;
        }

        public final ExpressionBuilder ln(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.ln(block));
            return this;
        }

        public final ExpressionBuilder ln2() {
            getArguments$extension_style_release().add(Expression.INSTANCE.ln2());
            return this;
        }

        public final ExpressionBuilder log10(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.log10(block));
            return this;
        }

        public final ExpressionBuilder log2(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.log2(block));
            return this;
        }

        public final ExpressionBuilder match(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.match(block));
            return this;
        }

        public final ExpressionBuilder max(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.max(block));
            return this;
        }

        public final ExpressionBuilder measureLight(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.measureLight(block));
            return this;
        }

        public final ExpressionBuilder min(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.min(block));
            return this;
        }

        public final ExpressionBuilder number(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.number(block));
            return this;
        }

        public final ExpressionBuilder numberFormat(Expression input, Function1<? super NumberFormatBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.numberFormat(input, block));
            return this;
        }

        public final ExpressionBuilder objectExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.objectExpression(block));
            return this;
        }

        public final ExpressionBuilder pi() {
            getArguments$extension_style_release().add(Expression.INSTANCE.pi());
            return this;
        }

        public final ExpressionBuilder pitch() {
            getArguments$extension_style_release().add(Expression.INSTANCE.pitch());
            return this;
        }

        public final ExpressionBuilder properties() {
            getArguments$extension_style_release().add(Expression.INSTANCE.properties());
            return this;
        }

        public final ExpressionBuilder random(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.random(block));
            return this;
        }

        public final ExpressionBuilder rasterParticleSpeed() {
            getArguments$extension_style_release().add(Expression.INSTANCE.rasterParticleSpeed());
            return this;
        }

        public final ExpressionBuilder rasterValue() {
            getArguments$extension_style_release().add(Expression.INSTANCE.rasterValue());
            return this;
        }

        public final ExpressionBuilder resolvedLocale(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.resolvedLocale(block));
            return this;
        }

        public final ExpressionBuilder rgb(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.rgb(block));
            return this;
        }

        public final ExpressionBuilder rgba(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.rgba(block));
            return this;
        }

        public final ExpressionBuilder round(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.round(block));
            return this;
        }

        public final ExpressionBuilder sin(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.sin(block));
            return this;
        }

        public final ExpressionBuilder skyRadialProgress() {
            getArguments$extension_style_release().add(Expression.INSTANCE.skyRadialProgress());
            return this;
        }

        public final ExpressionBuilder slice(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.slice(block));
            return this;
        }

        public final ExpressionBuilder split(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.split(block));
            return this;
        }

        public final ExpressionBuilder sqrt(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.sqrt(block));
            return this;
        }

        public final ExpressionBuilder step(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.step(block));
            return this;
        }

        public final ExpressionBuilder string(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.string(block));
            return this;
        }

        public final ExpressionBuilder tan(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.tan(block));
            return this;
        }

        public final ExpressionBuilder toBoolean(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.toBoolean(block));
            return this;
        }

        public final ExpressionBuilder toColor(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.toColor(block));
            return this;
        }

        public final ExpressionBuilder toHsla(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.toHsla(block));
            return this;
        }

        public final ExpressionBuilder toNumber(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.toNumber(block));
            return this;
        }

        public final ExpressionBuilder toRgba(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.toRgba(block));
            return this;
        }

        public final ExpressionBuilder toString(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.toString(block));
            return this;
        }

        public final ExpressionBuilder typeofExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.typeofExpression(block));
            return this;
        }

        public final ExpressionBuilder upcase(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.upcase(block));
            return this;
        }

        public final ExpressionBuilder varExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.varExpression(block));
            return this;
        }

        public final ExpressionBuilder within(Geometry geometry) {
            Intrinsics.checkNotNullParameter(geometry, "geometry");
            getArguments$extension_style_release().add(Expression.INSTANCE.within(geometry));
            return this;
        }

        public final ExpressionBuilder worldview(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.worldview(block));
            return this;
        }

        public final ExpressionBuilder zoom() {
            getArguments$extension_style_release().add(Expression.INSTANCE.zoom());
            return this;
        }

        public final ExpressionBuilder rgb(double red, double green, double blue) {
            getArguments$extension_style_release().add(Expression.INSTANCE.rgb(red, green, blue));
            return this;
        }

        public final ExpressionBuilder rgba(double red, double green, double blue, double alpha) {
            getArguments$extension_style_release().add(Expression.INSTANCE.rgba(red, green, blue, alpha));
            return this;
        }

        public final ExpressionBuilder color(int intColor) {
            getArguments$extension_style_release().add(Expression.INSTANCE.color(intColor));
            return this;
        }

        public final ExpressionBuilder stop(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            block.invoke(this);
            return this;
        }

        public final ExpressionBuilder stop(double input, Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            block.invoke(addArgument(Expression.INSTANCE.literal(input)));
            return this;
        }

        public final ExpressionBuilder stop(Expression input, Expression output) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(output, "output");
            addArgument(input).addArgument(output);
            return this;
        }

        public final ExpressionBuilder stop(double input, double output) {
            addArgument(Expression.INSTANCE.literal(input)).addArgument(Expression.INSTANCE.literal(output));
            return this;
        }

        public final ExpressionBuilder stop(Pair<Expression, Expression> pair) {
            Intrinsics.checkNotNullParameter(pair, "pair");
            addArgument(pair.getFirst()).addArgument(pair.getSecond());
            return this;
        }

        public final ExpressionBuilder get(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            getArguments$extension_style_release().add(Expression.INSTANCE.get(key));
            return this;
        }

        public final ExpressionBuilder get(String key, Expression expression) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(expression, "expression");
            getArguments$extension_style_release().add(Expression.INSTANCE.get(key, expression));
            return this;
        }

        public final ExpressionBuilder not(boolean bool) {
            getArguments$extension_style_release().add(Expression.INSTANCE.not(bool));
            return this;
        }

        public final ExpressionBuilder at(double index, Expression array) {
            Intrinsics.checkNotNullParameter(array, "array");
            getArguments$extension_style_release().add(Expression.INSTANCE.at(index, array));
            return this;
        }

        public final ExpressionBuilder inExpression(String needle, Expression haystack) {
            Intrinsics.checkNotNullParameter(needle, "needle");
            Intrinsics.checkNotNullParameter(haystack, "haystack");
            getArguments$extension_style_release().add(Expression.INSTANCE.inExpression(needle, haystack));
            return this;
        }

        public final ExpressionBuilder inExpression(double needle, Expression haystack) {
            Intrinsics.checkNotNullParameter(haystack, "haystack");
            getArguments$extension_style_release().add(Expression.INSTANCE.inExpression(needle, haystack));
            return this;
        }

        public final ExpressionBuilder has(String string, Expression expression) {
            Intrinsics.checkNotNullParameter(string, "string");
            Intrinsics.checkNotNullParameter(expression, "expression");
            getArguments$extension_style_release().add(Expression.INSTANCE.has(string, expression));
            return this;
        }

        public final ExpressionBuilder has(String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            getArguments$extension_style_release().add(Expression.INSTANCE.has(string));
            return this;
        }

        public final ExpressionBuilder length(String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            getArguments$extension_style_release().add(Expression.INSTANCE.length(string));
            return this;
        }

        public final ExpressionBuilder sum(double... dArr) {
            Intrinsics.checkNotNullParameter(dArr, "double");
            getArguments$extension_style_release().add(Expression.INSTANCE.sum(Arrays.copyOf(dArr, dArr.length)));
            return this;
        }

        public final ExpressionBuilder product(double... dArr) {
            Intrinsics.checkNotNullParameter(dArr, "double");
            getArguments$extension_style_release().add(Expression.INSTANCE.product(Arrays.copyOf(dArr, dArr.length)));
            return this;
        }

        public final ExpressionBuilder subtract(double first, double second) {
            getArguments$extension_style_release().add(Expression.INSTANCE.subtract(first, second));
            return this;
        }

        public final ExpressionBuilder subtract(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.subtract(value));
            return this;
        }

        public final ExpressionBuilder division(double first, double second) {
            getArguments$extension_style_release().add(Expression.INSTANCE.division(first, second));
            return this;
        }

        public final ExpressionBuilder mod(double first, double second) {
            getArguments$extension_style_release().add(Expression.INSTANCE.mod(first, second));
            return this;
        }

        public final ExpressionBuilder pow(double first, double second) {
            getArguments$extension_style_release().add(Expression.INSTANCE.pow(first, second));
            return this;
        }

        public final ExpressionBuilder sqrt(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.sqrt(value));
            return this;
        }

        public final ExpressionBuilder log10(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.log10(value));
            return this;
        }

        public final ExpressionBuilder ln(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.ln(value));
            return this;
        }

        public final ExpressionBuilder log2(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.log2(value));
            return this;
        }

        public final ExpressionBuilder sin(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.sin(value));
            return this;
        }

        public final ExpressionBuilder cos(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.cos(value));
            return this;
        }

        public final ExpressionBuilder tan(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.tan(value));
            return this;
        }

        public final ExpressionBuilder asin(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.asin(value));
            return this;
        }

        public final ExpressionBuilder acos(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.acos(value));
            return this;
        }

        public final ExpressionBuilder atan(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.atan(value));
            return this;
        }

        public final ExpressionBuilder min(double... values) {
            Intrinsics.checkNotNullParameter(values, "values");
            getArguments$extension_style_release().add(Expression.INSTANCE.min(Arrays.copyOf(values, values.length)));
            return this;
        }

        public final ExpressionBuilder max(double... values) {
            Intrinsics.checkNotNullParameter(values, "values");
            getArguments$extension_style_release().add(Expression.INSTANCE.max(Arrays.copyOf(values, values.length)));
            return this;
        }

        public final ExpressionBuilder round(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.round(value));
            return this;
        }

        public final ExpressionBuilder abs(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.abs(value));
            return this;
        }

        public final ExpressionBuilder ceil(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.ceil(value));
            return this;
        }

        public final ExpressionBuilder floor(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.floor(value));
            return this;
        }

        public final ExpressionBuilder isSupportedScript(String script) {
            Intrinsics.checkNotNullParameter(script, "script");
            getArguments$extension_style_release().add(Expression.INSTANCE.isSupportedScript(script));
            return this;
        }

        public final ExpressionBuilder upcase(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(Expression.INSTANCE.upcase(value));
            return this;
        }

        public final ExpressionBuilder downcase(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(Expression.INSTANCE.downcase(value));
            return this;
        }

        public final ExpressionBuilder concat(String... values) {
            Intrinsics.checkNotNullParameter(values, "values");
            getArguments$extension_style_release().add(Expression.INSTANCE.concat((String[]) Arrays.copyOf(values, values.length)));
            return this;
        }

        public final ExpressionBuilder numberFormat(double value, Function1<? super NumberFormatBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.numberFormat(value, block));
            return this;
        }

        public final ExpressionBuilder varExpression(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(Expression.INSTANCE.varExpression(value));
            return this;
        }
    }

    @ExpressionDsl
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u001f\u0010\u0005\u001a\u00020\u00002\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0002\b\u000eJ&\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007J\u001f\u0010\u0010\u001a\u00020\u00002\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0002\b\u000eJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u0000¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$InterpolatorBuilder;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "operator", "", "(Ljava/lang/String;)V", "cubicBezier", "x1", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "x2", "x3", "x4", "block", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "", "exponential", "value", "linear", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class InterpolatorBuilder extends ExpressionBuilder {
        public InterpolatorBuilder(String operator) {
            super(operator);
            Intrinsics.checkNotNullParameter(operator, "operator");
        }

        public final InterpolatorBuilder linear() {
            getArguments$extension_style_release().add(Expression.INSTANCE.linear());
            return this;
        }

        public final InterpolatorBuilder exponential(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.exponential(block));
            return this;
        }

        public final InterpolatorBuilder exponential(double value) {
            getArguments$extension_style_release().add(Expression.INSTANCE.exponential(value));
            return this;
        }

        public final InterpolatorBuilder exponential(Expression value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getArguments$extension_style_release().add(Expression.INSTANCE.exponential(value));
            return this;
        }

        public final InterpolatorBuilder cubicBezier(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            getArguments$extension_style_release().add(Expression.INSTANCE.cubicBezier(block));
            return this;
        }

        public final InterpolatorBuilder cubicBezier(Expression x1, Expression x2, Expression x3, Expression x4) {
            Intrinsics.checkNotNullParameter(x1, "x1");
            Intrinsics.checkNotNullParameter(x2, "x2");
            Intrinsics.checkNotNullParameter(x3, "x3");
            Intrinsics.checkNotNullParameter(x4, "x4");
            getArguments$extension_style_release().add(Expression.INSTANCE.cubicBezier(x1, x2, x3, x4));
            return this;
        }

        public final InterpolatorBuilder cubicBezier(double x1, double x2, double x3, double x4) {
            getArguments$extension_style_release().add(Expression.INSTANCE.cubicBezier(x1, x2, x3, x4));
            return this;
        }
    }

    @ExpressionDsl
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\n\u001a\u00020\u0003H\u0016J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0003J\u001f\u0010\u0014\u001a\u00020\u00002\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$NumberFormatBuilder;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;", "input", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "options", "Ljava/util/HashMap;", "", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "build", "currency", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "", "Lkotlin/ExtensionFunctionType;", Constants.LOCALE, "maxFractionDigits", "", "minFractionDigits", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class NumberFormatBuilder extends Builder {
        private final Expression input;
        private final HashMap<String, Value> options;

        public NumberFormatBuilder(Expression input) {
            super("number-format");
            Intrinsics.checkNotNullParameter(input, "input");
            this.input = input;
            this.options = new HashMap<>();
        }

        public final NumberFormatBuilder locale(String locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.options.put(Constants.LOCALE, Expression.INSTANCE.literal(locale));
            return this;
        }

        public final NumberFormatBuilder locale(Expression locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.options.put(Constants.LOCALE, locale);
            return this;
        }

        public final NumberFormatBuilder locale(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put(Constants.LOCALE, Expression.INSTANCE.string(block));
            return this;
        }

        public final NumberFormatBuilder currency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.options.put("currency", Expression.INSTANCE.literal(currency));
            return this;
        }

        public final NumberFormatBuilder currency(Expression currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.options.put("currency", currency);
            return this;
        }

        public final NumberFormatBuilder currency(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put("currency", Expression.INSTANCE.string(block));
            return this;
        }

        public final NumberFormatBuilder minFractionDigits(int minFractionDigits) {
            this.options.put("min-fraction-digits", Expression.INSTANCE.literal(minFractionDigits));
            return this;
        }

        public final NumberFormatBuilder minFractionDigits(Expression minFractionDigits) {
            Intrinsics.checkNotNullParameter(minFractionDigits, "minFractionDigits");
            this.options.put("min-fraction-digits", minFractionDigits);
            return this;
        }

        public final NumberFormatBuilder minFractionDigits(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put("min-fraction-digits", Expression.INSTANCE.number(block));
            return this;
        }

        public final NumberFormatBuilder maxFractionDigits(int maxFractionDigits) {
            this.options.put("max-fraction-digits", Expression.INSTANCE.literal(maxFractionDigits));
            return this;
        }

        public final NumberFormatBuilder maxFractionDigits(Expression maxFractionDigits) {
            Intrinsics.checkNotNullParameter(maxFractionDigits, "maxFractionDigits");
            this.options.put("max-fraction-digits", maxFractionDigits);
            return this;
        }

        public final NumberFormatBuilder maxFractionDigits(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put("max-fraction-digits", Expression.INSTANCE.number(block));
            return this;
        }

        @Override
        public Expression build() {
            getArguments$extension_style_release().add(this.input);
            getArguments$extension_style_release().add(new Expression(this.options));
            return super.build();
        }
    }

    @ExpressionDsl
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0003J\u001f\u0010\f\u001a\u00020\u00002\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0003J\u001f\u0010\u0013\u001a\u00020\u00002\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011J\u0010\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0003J\u001f\u0010\u0015\u001a\u00020\u00002\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011J\u0014\u0010\u0015\u001a\u00020\u00002\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$FormatSectionBuilder;", "", "content", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "options", "Ljava/util/HashMap;", "", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "build", "", "fontScale", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "", "Lkotlin/ExtensionFunctionType;", "", Common.TEXT_COLOR, "", "textFont", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class FormatSectionBuilder {
        private final Expression content;
        private final HashMap<String, Value> options;

        public FormatSectionBuilder(Expression content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
            this.options = new HashMap<>();
        }

        public final FormatSectionBuilder fontScale(double fontScale) {
            this.options.put("font-scale", Expression.INSTANCE.literal(fontScale));
            return this;
        }

        public final FormatSectionBuilder fontScale(Expression fontScale) {
            Intrinsics.checkNotNullParameter(fontScale, "fontScale");
            this.options.put("font-scale", fontScale);
            return this;
        }

        public final FormatSectionBuilder fontScale(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put("font-scale", Expression.INSTANCE.number(block));
            return this;
        }

        public final FormatSectionBuilder textFont(List<String> textFont) {
            Intrinsics.checkNotNullParameter(textFont, "textFont");
            this.options.put("text-font", Expression.INSTANCE.literal$extension_style_release(textFont));
            return this;
        }

        public final FormatSectionBuilder textFont(Expression textFont) {
            Intrinsics.checkNotNullParameter(textFont, "textFont");
            this.options.put("text-font", textFont);
            return this;
        }

        public final FormatSectionBuilder textFont(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            HashMap<String, Value> map = this.options;
            ExpressionBuilder expressionBuilderAddArgument = new ExpressionBuilder("array").addArgument(Expression.INSTANCE.literal(TypedValues.Custom.S_STRING));
            block.invoke(expressionBuilderAddArgument);
            map.put("text-font", expressionBuilderAddArgument.build());
            return this;
        }

        public final FormatSectionBuilder textColor(int textColor) {
            this.options.put(PointAnnotationOptions.PROPERTY_TEXT_COLOR, Expression.INSTANCE.color(textColor));
            return this;
        }

        public final FormatSectionBuilder textColor(String textColor) {
            Intrinsics.checkNotNullParameter(textColor, "textColor");
            this.options.put(PointAnnotationOptions.PROPERTY_TEXT_COLOR, Expression.INSTANCE.literal(textColor));
            return this;
        }

        public final FormatSectionBuilder textColor(Expression textColor) {
            Intrinsics.checkNotNullParameter(textColor, "textColor");
            this.options.put(PointAnnotationOptions.PROPERTY_TEXT_COLOR, textColor);
            return this;
        }

        public final FormatSectionBuilder textColor(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put(PointAnnotationOptions.PROPERTY_TEXT_COLOR, Expression.INSTANCE.toColor(block));
            return this;
        }

        public final List<Expression> build() {
            return CollectionsKt.listOf((Object[]) new Expression[]{this.content, new Expression(this.options)});
        }
    }

    @ExpressionDsl
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J'\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eJ\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J'\u0010\b\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$FormatBuilder;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;", "()V", "sections", "Ljava/util/ArrayList;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "Lkotlin/collections/ArrayList;", "build", "formatSection", "content", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$FormatSectionBuilder;", "", "Lkotlin/ExtensionFunctionType;", "text", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class FormatBuilder extends Builder {
        private final ArrayList<Expression> sections;

        public FormatBuilder() {
            super("format");
            this.sections = new ArrayList<>();
        }

        public final FormatBuilder formatSection(Expression content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.sections.addAll(new FormatSectionBuilder(content).build());
            return this;
        }

        public final FormatBuilder formatSection(Expression content, Function1<? super FormatSectionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(content, "content");
            Intrinsics.checkNotNullParameter(block, "block");
            ArrayList<Expression> arrayList = this.sections;
            FormatSectionBuilder formatSectionBuilder = new FormatSectionBuilder(content);
            block.invoke(formatSectionBuilder);
            arrayList.addAll(formatSectionBuilder.build());
            return this;
        }

        public final FormatBuilder formatSection(String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.sections.addAll(new FormatSectionBuilder(Expression.INSTANCE.literal(text)).build());
            return this;
        }

        public final FormatBuilder formatSection(String text, Function1<? super FormatSectionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(block, "block");
            ArrayList<Expression> arrayList = this.sections;
            FormatSectionBuilder formatSectionBuilder = new FormatSectionBuilder(Expression.INSTANCE.literal(text));
            block.invoke(formatSectionBuilder);
            arrayList.addAll(formatSectionBuilder.build());
            return this;
        }

        @Override
        public Expression build() {
            getArguments$extension_style_release().addAll(this.sections);
            return super.build();
        }
    }

    @ExpressionDsl
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u001f\u0010\n\u001a\u00020\u00002\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fJ\u0010\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\tJ\u001f\u0010\u0011\u001a\u00020\u00002\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fJ\u0010\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\tJ\u001f\u0010\u0012\u001a\u00020\u00002\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000fJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$CollatorBuilder;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Builder;", "()V", "options", "Ljava/util/HashMap;", "", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "build", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "caseSensitive", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "", "Lkotlin/ExtensionFunctionType;", "", "diacriticSensitive", Constants.LOCALE, "Ljava/util/Locale;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class CollatorBuilder extends Builder {
        private final HashMap<String, Value> options;

        public CollatorBuilder() {
            super("collator");
            this.options = new HashMap<>();
        }

        public final CollatorBuilder caseSensitive(Expression caseSensitive) {
            Intrinsics.checkNotNullParameter(caseSensitive, "caseSensitive");
            this.options.put("case-sensitive", caseSensitive);
            return this;
        }

        public final CollatorBuilder caseSensitive(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put("case-sensitive", Expression.INSTANCE.m1034boolean(block));
            return this;
        }

        public static CollatorBuilder caseSensitive$default(CollatorBuilder collatorBuilder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return collatorBuilder.caseSensitive(z);
        }

        public final CollatorBuilder caseSensitive(boolean caseSensitive) {
            this.options.put("case-sensitive", Expression.INSTANCE.literal(caseSensitive));
            return this;
        }

        public final CollatorBuilder diacriticSensitive(Expression diacriticSensitive) {
            Intrinsics.checkNotNullParameter(diacriticSensitive, "diacriticSensitive");
            this.options.put("diacritic-sensitive", diacriticSensitive);
            return this;
        }

        public final CollatorBuilder diacriticSensitive(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put("diacritic-sensitive", Expression.INSTANCE.m1034boolean(block));
            return this;
        }

        public static CollatorBuilder diacriticSensitive$default(CollatorBuilder collatorBuilder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return collatorBuilder.diacriticSensitive(z);
        }

        public final CollatorBuilder diacriticSensitive(boolean diacriticSensitive) {
            this.options.put("diacritic-sensitive", Expression.INSTANCE.literal(diacriticSensitive));
            return this;
        }

        public final CollatorBuilder locale(Expression locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.options.put(Constants.LOCALE, locale);
            return this;
        }

        public final CollatorBuilder locale(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.options.put(Constants.LOCALE, Expression.INSTANCE.string(block));
            return this;
        }

        public final CollatorBuilder locale(String locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.options.put(Constants.LOCALE, Expression.INSTANCE.literal(locale));
            return this;
        }

        public final CollatorBuilder locale(Locale locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            StringBuilder sb = new StringBuilder();
            sb.append(locale.getLanguage());
            String country = locale.getCountry();
            Intrinsics.checkNotNullExpressionValue(country, "country");
            if (country.length() > 0) {
                sb.append("-");
                sb.append(country);
            }
            HashMap<String, Value> map = this.options;
            Companion companion = Expression.INSTANCE;
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "localeStringBuilder.toString()");
            map.put(Constants.LOCALE, companion.literal(string));
            return this;
        }

        @Override
        public Expression build() {
            getArguments$extension_style_release().add(new Expression(this.options));
            return super.build();
        }
    }

    @ExpressionDsl
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u00020\u00002*\u0010\u0004\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005\"\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ImageBuilder;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "()V", "imageOptions", "pairs", "", "Lkotlin/Pair;", "", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "([Lkotlin/Pair;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ImageBuilder;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ImageBuilder extends ExpressionBuilder {
        public ImageBuilder() {
            super("image");
        }

        public final ImageBuilder imageOptions(Pair<String, Expression>... pairs) {
            Intrinsics.checkNotNullParameter(pairs, "pairs");
            getArguments$extension_style_release().add(new Expression((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to("params", Value.valueOf((HashMap<String, Value>) MapsKt.hashMapOf((Pair[]) Arrays.copyOf(pairs, pairs.length)))))));
            return this;
        }
    }

    @Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u0013\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0003\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0007J\u001f\u0010\u0010\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0010\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0007J\u001f\u0010\u0012\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0012\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010\u0013\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0013\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010\u0014\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0014\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010\u0015\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0015\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001f\u0010\u0016\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0016\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0004H\u0007J\u001f\u0010\u0018\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u0018\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010\u001a\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u001a\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001f\u0010\u001b\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u001b\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010\u001c\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u001c\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001f\u0010\u001d\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\u001d\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0007J\u001f\u0010\u001e\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ$\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020#2\b\b\u0002\u0010 \u001a\u00020#2\u0006\u0010!\u001a\u00020$H\u0007J$\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020#2\b\b\u0002\u0010 \u001a\u00020#2\u0006\u0010!\u001a\u00020%H\u0007J\u0012\u0010&\u001a\u00020\u00042\b\b\u0001\u0010'\u001a\u00020(H\u0007J\u001f\u0010)\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010)\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ!\u0010)\u001a\u00020\u00042\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u00020%0\u000b\"\u00020%H\u0007¢\u0006\u0002\u0010+J\u001f\u0010,\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010,\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010-\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010-\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010-\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J(\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u0004H\u0007J\u001f\u0010.\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ(\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u00020\u000eH\u0007Ja\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000408H\u0007¢\u0006\u0002\u00109Ja\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000408H\u0007¢\u0006\u0002\u0010:J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020=H\u0007J\b\u0010>\u001a\u00020\u0004H\u0007J\u001f\u0010?\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010?\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0018\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020\u000eH\u0007J\u001f\u0010B\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010B\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010B\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020%H\u0007J\b\u0010C\u001a\u00020\u0004H\u0007J\u001f\u0010D\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010D\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010E\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u0004H\u0007J\u001f\u0010E\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\u0010\u0010E\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007JI\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000408H\u0007¢\u0006\u0002\u0010IJI\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000408H\u0007¢\u0006\u0002\u0010JJ\u001f\u0010K\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010K\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010L\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010L\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010L\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001f\u0010M\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010M\u001a\u00020\u00042\u0012\u0010O\u001a\n\u0012\u0006\b\u0001\u0012\u00020P0\u000b\"\u00020PH\u0007¢\u0006\u0002\u0010QJ\u0010\u0010R\u001a\u00020\u00042\u0006\u0010F\u001a\u00020%H\u0007J\b\u0010S\u001a\u00020\u0004H\u0007J\u001f\u0010T\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010T\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010T\u001a\u00020\u00042\u0006\u0010U\u001a\u00020%H\u0007J\u0018\u0010T\u001a\u00020\u00042\u0006\u0010U\u001a\u00020%2\u0006\u0010F\u001a\u00020\u0004H\u0007J\u001f\u0010V\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010V\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010W\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010W\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010X\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010X\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010X\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020%H\u0007J\u0018\u0010X\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020%2\u0006\u0010F\u001a\u00020\u0004H\u0007J\b\u0010Z\u001a\u00020\u0004H\u0007J\u001f\u0010[\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010[\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010\\\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010\\\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\b\u0010]\u001a\u00020\u0004H\u0007J$\u0010^\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u00042\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00040`H\u0007J@\u0010^\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u00042\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00040`2\u0006\u0010a\u001a\u00020\u00042\u0012\u0010b\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00040`H\u0007J\u001f\u0010^\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010^\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010d\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010d\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0018\u0010d\u001a\u00020\u00042\u0006\u0010e\u001a\u00020\u000e2\u0006\u0010f\u001a\u00020\u0004H\u0007J\u0018\u0010d\u001a\u00020\u00042\u0006\u0010e\u001a\u00020%2\u0006\u0010f\u001a\u00020\u0004H\u0007J\u001f\u0010g\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010g\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010h\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010h\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010i\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010i\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010i\u001a\u00020\u00042\u0006\u0010j\u001a\u00020%H\u0007J\u001f\u0010k\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010k\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010k\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020%H\u0007J\u001f\u0010l\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010l\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\b\u0010m\u001a\u00020\u0004H\u0007J\b\u0010n\u001a\u00020\u0004H\u0007JA\u0010o\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000408H\u0007¢\u0006\u0002\u0010pJ\u0010\u0010q\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020#H\u0007J\u0010\u0010q\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010q\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020rH\u0007J\u0010\u0010q\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020%H\u0007J1\u0010q\u001a\u00020\u00042\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00010sj\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0001`tH\u0001¢\u0006\u0002\buJ\u001b\u0010q\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010vH\u0001¢\u0006\u0002\buJ\u001f\u0010w\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010w\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010w\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010x\u001a\u00020\u0004H\u0007J\u001f\u0010y\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010y\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010y\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001f\u0010z\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010z\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010z\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001f\u0010{\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010{\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010|\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010|\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJI\u0010}\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004082\u0006\u0010~\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u007fJ\u001f\u0010}\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010}\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010\u0080\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0080\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0016\u0010\u0080\u0001\u001a\u00020\u00042\u000b\u0010*\u001a\u00030\u0081\u0001\"\u00020\u000eH\u0007J \u0010\u0082\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0082\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010\u0083\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0083\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0016\u0010\u0083\u0001\u001a\u00020\u00042\u000b\u0010*\u001a\u00030\u0081\u0001\"\u00020\u000eH\u0007J \u0010\u0084\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0084\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0019\u0010\u0084\u0001\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020\u000eH\u0007J \u0010\u0085\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0085\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010\u0086\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0086\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0012\u0010\u0086\u0001\u001a\u00020\u00042\u0007\u0010\u0087\u0001\u001a\u00020#H\u0007J \u0010\u0088\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0088\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ*\u0010\u0089\u0001\u001a\u00020\u00042\u0007\u0010\u0088\u0001\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJE\u0010\u0089\u0001\u001a\u00020\u00042\u0007\u0010\u0088\u0001\u001a\u00020\u00042\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010\u0089\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0018\u0010\u0005\u001a\u0014\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0007J \u0010\u008e\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u008e\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u008f\u0001\u001a\u00020\u0004H\u0007J\t\u0010\u0090\u0001\u001a\u00020\u0004H\u0007J \u0010\u0091\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0091\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0019\u0010\u0091\u0001\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020\u000eH\u0007J \u0010\u0092\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0092\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0017\u0010\u0092\u0001\u001a\u00020\u00042\f\u0010\u0093\u0001\u001a\u00030\u0081\u0001\"\u00020\u000eH\u0007J\t\u0010\u0094\u0001\u001a\u00020\u0004H\u0007J \u0010\u0095\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0095\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0096\u0001\u001a\u00020\u0004H\u0007J\t\u0010\u0097\u0001\u001a\u00020\u0004H\u0007J \u0010\u0098\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0098\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010\u0099\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u0099\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ$\u0010\u0099\u0001\u001a\u00020\u00042\u0007\u0010\u009a\u0001\u001a\u00020\u000e2\u0007\u0010\u009b\u0001\u001a\u00020\u000e2\u0007\u0010\u009c\u0001\u001a\u00020\u000eH\u0007J \u0010\u009d\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u009d\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ-\u0010\u009d\u0001\u001a\u00020\u00042\u0007\u0010\u009a\u0001\u001a\u00020\u000e2\u0007\u0010\u009b\u0001\u001a\u00020\u000e2\u0007\u0010\u009c\u0001\u001a\u00020\u000e2\u0007\u0010\u009e\u0001\u001a\u00020\u000eH\u0007J \u0010\u009f\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u009f\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J \u0010 \u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010 \u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010 \u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\t\u0010¡\u0001\u001a\u00020\u0004H\u0007J \u0010¢\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¢\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010£\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010£\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010¤\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¤\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010¤\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007JK\u0010¥\u0001\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042\u0007\u0010¦\u0001\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000408H\u0007¢\u0006\u0002\u0010IJ \u0010¥\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¥\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u001f\u0010Y\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ!\u0010Y\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010§\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010§\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010§\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0019\u0010§\u0001\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020\u000eH\u0007J \u0010¨\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¨\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0017\u0010¨\u0001\u001a\u00020\u00042\f\u0010\u0093\u0001\u001a\u00030\u0081\u0001\"\u00020\u000eH\u0007J \u0010©\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010©\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJC\u0010©\u0001\u001a\u00020\u00042*\u00107\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004080\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004082\u0006\u0010~\u001a\u00020\u0004H\u0007¢\u0006\u0003\u0010ª\u0001J \u0010«\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010«\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010«\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J \u0010¬\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¬\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010\u00ad\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010\u00ad\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010®\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010®\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010¯\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¯\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010°\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010°\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010±\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010±\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010²\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010²\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ \u0010³\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010³\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010³\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020%H\u0007J \u0010´\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010´\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\u0011\u0010´\u0001\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020%H\u0007J\u0013\u0010µ\u0001\u001a\u00020\u00042\b\u0010¶\u0001\u001a\u00030·\u0001H\u0007J \u0010¸\u0001\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tJ\"\u0010¸\u0001\u001a\u00020\u00042\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\fJ\t\u0010¹\u0001\u001a\u00020\u0004H\u0007¨\u0006º\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;", "", "()V", "abs", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "", "Lkotlin/ExtensionFunctionType;", "expressions", "", "([Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "value", "", "accumulated", "acos", "activeAnchor", SVGParser.XML_STYLESHEET_ATTR_MEDIA_ALL, "any", "array", "asin", "at", FirebaseAnalytics.Param.INDEX, "atInterpolated", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$InterpolatorBuilder;", "atan", TypedValues.Custom.S_BOOLEAN, "ceil", "coalesce", "collator", "caseSensitive", "diacriticSensitive", Constants.LOCALE, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$CollatorBuilder;", "", "Ljava/util/Locale;", "", "color", "intColor", "", "concat", "values", "([Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "config", "cos", "cubicBezier", "x1", "x2", "x3", "x4", "cubicBezierInterpolator", "y1", "y2", "input", "stops", "Lkotlin/Pair;", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;[Lkotlin/Pair;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "(DDDDLcom/mapbox/maps/extension/style/expressions/generated/Expression;[Lkotlin/Pair;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "distance", "geojson", "Lcom/mapbox/geojson/GeoJson;", "distanceFromCenter", "division", "first", "second", "downcase", JWKParameterNames.RSA_EXPONENT, "eq", "exponential", "expression", "exponentialInterpolator", Constants.SENSITIVITY_BASE, "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;[Lkotlin/Pair;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "(DLcom/mapbox/maps/extension/style/expressions/generated/Expression;[Lkotlin/Pair;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "featureState", "floor", "format", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$FormatBuilder;", "formatSections", "Lcom/mapbox/maps/extension/style/expressions/types/FormatSection;", "([Lcom/mapbox/maps/extension/style/expressions/types/FormatSection;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "fromRaw", "geometryType", "get", Action.KEY_ATTRIBUTE, "gt", "gte", "has", TypedValues.Custom.S_STRING, "heatmapDensity", "hsl", "hsla", "id", "image", "options", "", "image2", "options2", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ImageBuilder;", "inExpression", "needle", "haystack", "indexOf", "interpolate", "isSupportedScript", "script", "length", "letExpression", "lineProgress", "linear", "linearInterpolator", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;[Lkotlin/Pair;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "literal", "", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "literal$extension_style_release", "", "ln", "ln2", "log10", "log2", "lt", "lte", "match", "fallback", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;[Lkotlin/Pair;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "max", "", "measureLight", "min", "mod", "neq", "not", "bool", "number", "numberFormat", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$NumberFormatBuilder;", "currency", "minFractionDigits", "maxFractionDigits", "objectExpression", ContextChain.TAG_PRODUCT_AND_INFRA, "pitch", "pow", "product", "double", LightUtils.LIGHT_PROPERTIES, "random", "rasterParticleSpeed", "rasterValue", "resolvedLocale", "rgb", "red", "green", "blue", "rgba", "alpha", "round", "sin", "skyRadialProgress", "slice", "split", "sqrt", "step", "output", "subtract", "sum", "switchCase", "([Lkotlin/Pair;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "tan", "toBoolean", "toColor", "toHsla", "toNumber", "toRgba", "toString", "typeofExpression", "upcase", "varExpression", "within", "geometry", "Lcom/mapbox/geojson/Geometry;", "worldview", "zoom", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Expression fromRaw(String expression) {
            Intrinsics.checkNotNullParameter(expression, "expression");
            Expected<String, Value> expectedFromJson = Value.fromJson(expression);
            if (expectedFromJson != null) {
                String error = expectedFromJson.getError();
                if (error != null) {
                    throw new MapboxStyleException(error);
                }
                Value value = expectedFromJson.getValue();
                if (value != null) {
                    Intrinsics.checkNotNullExpressionValue(value, "fromJson(expression).take()");
                    return TypeUtilsKt.unwrapToExpression(value);
                }
            }
            throw new MapboxStyleException("Plugin is not added to Style yet.");
        }

        @JvmStatic
        public final Expression subtract(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("-");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression subtract(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("-");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression not(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("!");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression not(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("!");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression neq(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("!=");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression neq(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("!=");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression product(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("*");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression product(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("*");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression division(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("/");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression division(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("/");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression mod(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("%");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression mod(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("%");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression pow(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("^");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression pow(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("^");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression sum(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(Marker.ANY_NON_NULL_MARKER);
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression sum(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(Marker.ANY_NON_NULL_MARKER);
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression lt(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("<");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression lt(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("<");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression lte(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("<=");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression lte(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("<=");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression eq(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("==");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression eq(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("==");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression gt(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(">");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression gt(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(">");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression gte(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(">=");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression gte(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(">=");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression abs(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("abs");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression abs(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("abs");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression accumulated() {
            return new ExpressionBuilder("accumulated").build();
        }

        @JvmStatic
        public final Expression acos(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("acos");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression acos(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("acos");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression activeAnchor() {
            return new ExpressionBuilder("active-anchor").build();
        }

        @JvmStatic
        public final Expression all(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(SVGParser.XML_STYLESHEET_ATTR_MEDIA_ALL);
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression all(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(SVGParser.XML_STYLESHEET_ATTR_MEDIA_ALL);
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression any(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("any");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression any(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("any");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression array(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("array");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression array(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("array");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression asin(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("asin");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression asin(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("asin");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression at(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("at");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression at(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("at");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression atInterpolated(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("at-interpolated");
            for (Expression expression : expressions) {
                interpolatorBuilder.addArgument(expression);
            }
            return interpolatorBuilder.build();
        }

        public final Expression atInterpolated(Function1<? super InterpolatorBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("at-interpolated");
            block.invoke(interpolatorBuilder);
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression atan(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("atan");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression atan(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("atan");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression m1035boolean(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(TypedValues.Custom.S_BOOLEAN);
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression m1034boolean(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(TypedValues.Custom.S_BOOLEAN);
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression switchCase(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(Constants.SENSITIVITY_CASE);
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression switchCase(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(Constants.SENSITIVITY_CASE);
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression ceil(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("ceil");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression ceil(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("ceil");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression coalesce(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("coalesce");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression coalesce(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("coalesce");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        public static Expression collator$default(Companion companion, boolean z, boolean z2, Locale locale, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = false;
            }
            return companion.collator(z, z2, locale);
        }

        @JvmStatic
        public final Expression collator(boolean caseSensitive, boolean diacriticSensitive, Locale locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            return new CollatorBuilder().caseSensitive(caseSensitive).diacriticSensitive(diacriticSensitive).locale(locale).build();
        }

        public static Expression collator$default(Companion companion, boolean z, boolean z2, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = false;
            }
            return companion.collator(z, z2, str);
        }

        @JvmStatic
        public final Expression collator(boolean caseSensitive, boolean diacriticSensitive, String locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            return new CollatorBuilder().caseSensitive(caseSensitive).diacriticSensitive(diacriticSensitive).locale(locale).build();
        }

        @JvmStatic
        public final Expression collator(Expression caseSensitive, Expression diacriticSensitive, Expression locale) {
            Intrinsics.checkNotNullParameter(caseSensitive, "caseSensitive");
            Intrinsics.checkNotNullParameter(diacriticSensitive, "diacriticSensitive");
            Intrinsics.checkNotNullParameter(locale, "locale");
            return new CollatorBuilder().caseSensitive(caseSensitive).diacriticSensitive(diacriticSensitive).locale(locale).build();
        }

        public final Expression collator(Function1<? super CollatorBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            CollatorBuilder collatorBuilder = new CollatorBuilder();
            block.invoke(collatorBuilder);
            return collatorBuilder.build();
        }

        @JvmStatic
        public final Expression concat(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("concat");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression concat(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("concat");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression config(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("config");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression config(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("config");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression cos(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("cos");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression cos(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("cos");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression distance(GeoJson geojson) {
            Intrinsics.checkNotNullParameter(geojson, "geojson");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("distance");
            Expected<String, Value> expectedFromJson = Value.fromJson(geojson.toJson());
            Intrinsics.checkNotNullExpressionValue(expectedFromJson, "fromJson(geojson.toJson())");
            Value value = expectedFromJson.getValue();
            if (value != null) {
                Object contents = value.getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                expressionBuilder.addArgument(new Expression((HashMap<String, Value>) contents));
                return expressionBuilder.build();
            }
            throw new MapboxStyleException(expectedFromJson.getError());
        }

        @JvmStatic
        public final Expression distanceFromCenter() {
            return new ExpressionBuilder("distance-from-center").build();
        }

        @JvmStatic
        public final Expression downcase(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("downcase");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression downcase(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("downcase");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression e() {
            return new ExpressionBuilder(JWKParameterNames.RSA_EXPONENT).build();
        }

        @JvmStatic
        public final Expression featureState(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("feature-state");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression featureState(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("feature-state");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression floor(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("floor");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression floor(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("floor");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression format(FormatSection... formatSections) {
            Intrinsics.checkNotNullParameter(formatSections, "formatSections");
            FormatBuilder formatBuilder = new FormatBuilder();
            for (FormatSection formatSection : formatSections) {
                FormatSectionBuilder formatSectionBuilder = new FormatSectionBuilder(formatSection.getContent());
                Expression fontScale = formatSection.getFontScale();
                if (fontScale != null) {
                    formatSectionBuilder.fontScale(fontScale);
                }
                Expression textFont = formatSection.getTextFont();
                if (textFont != null) {
                    formatSectionBuilder.textFont(textFont);
                }
                Expression textColor = formatSection.getTextColor();
                if (textColor != null) {
                    formatSectionBuilder.textColor(textColor);
                }
                formatBuilder.getArguments$extension_style_release().addAll(formatSectionBuilder.build());
            }
            return formatBuilder.build();
        }

        public final Expression format(Function1<? super FormatBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            FormatBuilder formatBuilder = new FormatBuilder();
            block.invoke(formatBuilder);
            return formatBuilder.build();
        }

        @JvmStatic
        public final Expression geometryType() {
            return new ExpressionBuilder("geometry-type").build();
        }

        @JvmStatic
        public final Expression get(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("get");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression get(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("get");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression has(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("has");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression has(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("has");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression heatmapDensity() {
            return new ExpressionBuilder("heatmap-density").build();
        }

        @JvmStatic
        public final Expression hsl(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("hsl");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression hsl(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("hsl");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression hsla(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("hsla");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression hsla(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("hsla");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression id() {
            return new ExpressionBuilder("id").build();
        }

        @JvmStatic
        public final Expression image(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("image");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression image(Expression image, Map<String, Expression> options) {
            Intrinsics.checkNotNullParameter(image, "image");
            Intrinsics.checkNotNullParameter(options, "options");
            ImageBuilder imageBuilder = new ImageBuilder();
            imageBuilder.addArgument(image);
            ArrayList arrayList = new ArrayList(options.size());
            for (Map.Entry<String, Expression> entry : options.entrySet()) {
                arrayList.add(TuplesKt.to(entry.getKey(), entry.getValue()));
            }
            Object[] array = arrayList.toArray(new Pair[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            Pair[] pairArr = (Pair[]) array;
            imageBuilder.imageOptions((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            return imageBuilder.build();
        }

        @JvmStatic
        public final Expression image(Expression image, Map<String, Expression> options, Expression image2, Map<String, Expression> options2) {
            Intrinsics.checkNotNullParameter(image, "image");
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(image2, "image2");
            Intrinsics.checkNotNullParameter(options2, "options2");
            ImageBuilder imageBuilder = new ImageBuilder();
            imageBuilder.addArgument(image);
            ArrayList arrayList = new ArrayList(options.size());
            for (Map.Entry<String, Expression> entry : options.entrySet()) {
                arrayList.add(TuplesKt.to(entry.getKey(), entry.getValue()));
            }
            Object[] array = arrayList.toArray(new Pair[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            Pair[] pairArr = (Pair[]) array;
            imageBuilder.imageOptions((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            imageBuilder.addArgument(image2);
            ArrayList arrayList2 = new ArrayList(options2.size());
            for (Map.Entry<String, Expression> entry2 : options2.entrySet()) {
                arrayList2.add(TuplesKt.to(entry2.getKey(), entry2.getValue()));
            }
            Object[] array2 = arrayList2.toArray(new Pair[0]);
            Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            Pair[] pairArr2 = (Pair[]) array2;
            imageBuilder.imageOptions((Pair[]) Arrays.copyOf(pairArr2, pairArr2.length));
            return imageBuilder.build();
        }

        public final Expression image(Function1<? super ImageBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ImageBuilder imageBuilder = new ImageBuilder();
            block.invoke(imageBuilder);
            return imageBuilder.build();
        }

        @JvmStatic
        public final Expression inExpression(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("in");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression inExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("in");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression indexOf(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("index-of");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression indexOf(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("index-of");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression interpolate(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            for (Expression expression : expressions) {
                interpolatorBuilder.addArgument(expression);
            }
            return interpolatorBuilder.build();
        }

        public final Expression interpolate(Function1<? super InterpolatorBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            block.invoke(interpolatorBuilder);
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression isSupportedScript(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("is-supported-script");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression isSupportedScript(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("is-supported-script");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression length(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("length");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression length(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("length");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression letExpression(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("let");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression letExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("let");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression lineProgress() {
            return new ExpressionBuilder("line-progress").build();
        }

        @JvmStatic
        public final Expression literal(double value) {
            return new Expression(value, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        public final Expression literal(long value) {
            return new Expression(value, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        public final Expression literal(boolean value) {
            return new Expression(value, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        public final Expression literal(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new Expression(value, (DefaultConstructorMarker) null);
        }

        @JvmStatic
        public final Expression literal$extension_style_release(List<? extends Object> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new ExpressionBuilder("literal").addArgument(new Expression(value)).build();
        }

        @JvmStatic
        public final Expression literal$extension_style_release(HashMap<String, Object> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            HashMap map = new HashMap();
            for (Map.Entry<String, Object> entry : value.entrySet()) {
                map.put(entry.getKey(), TypeUtils.INSTANCE.wrapToValue(entry.getValue()));
            }
            return new ExpressionBuilder("literal").addArgument(new Expression((HashMap<String, Value>) map)).build();
        }

        @JvmStatic
        public final Expression ln(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("ln");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression ln(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("ln");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression ln2() {
            return new ExpressionBuilder("ln2").build();
        }

        @JvmStatic
        public final Expression log10(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("log10");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression log10(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("log10");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression log2(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("log2");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression log2(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("log2");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression match(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("match");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression match(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("match");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression max(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("max");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression max(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("max");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression measureLight(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("measure-light");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression measureLight(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("measure-light");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression min(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("min");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression min(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("min");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression number(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("number");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression number(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("number");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        public static Expression numberFormat$default(Companion companion, Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, int i, Object obj) {
            if ((i & 2) != 0) {
                expression2 = null;
            }
            if ((i & 4) != 0) {
                expression3 = null;
            }
            if ((i & 8) != 0) {
                expression4 = null;
            }
            if ((i & 16) != 0) {
                expression5 = null;
            }
            return companion.numberFormat(expression, expression2, expression3, expression4, expression5);
        }

        @JvmStatic
        public final Expression numberFormat(Expression number, Expression locale, Expression currency, Expression minFractionDigits, Expression maxFractionDigits) {
            Intrinsics.checkNotNullParameter(number, "number");
            NumberFormatBuilder numberFormatBuilder = new NumberFormatBuilder(number);
            if (locale != null) {
                numberFormatBuilder.locale(locale);
            }
            if (currency != null) {
                numberFormatBuilder.currency(currency);
            }
            if (minFractionDigits != null) {
                numberFormatBuilder.minFractionDigits(minFractionDigits);
            }
            if (maxFractionDigits != null) {
                numberFormatBuilder.maxFractionDigits(maxFractionDigits);
            }
            return numberFormatBuilder.build();
        }

        public final Expression numberFormat(Expression number, Function1<? super NumberFormatBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(number, "number");
            Intrinsics.checkNotNullParameter(block, "block");
            NumberFormatBuilder numberFormatBuilder = new NumberFormatBuilder(number);
            block.invoke(numberFormatBuilder);
            return numberFormatBuilder.build();
        }

        @JvmStatic
        public final Expression objectExpression(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("object");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression objectExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("object");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression pi() {
            return new ExpressionBuilder(ContextChain.TAG_PRODUCT_AND_INFRA).build();
        }

        @JvmStatic
        public final Expression pitch() {
            return new ExpressionBuilder("pitch").build();
        }

        @JvmStatic
        public final Expression properties() {
            return new ExpressionBuilder(LightUtils.LIGHT_PROPERTIES).build();
        }

        @JvmStatic
        public final Expression random(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("random");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression random(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("random");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression rasterParticleSpeed() {
            return new ExpressionBuilder("raster-particle-speed").build();
        }

        @JvmStatic
        public final Expression rasterValue() {
            return new ExpressionBuilder("raster-value").build();
        }

        @JvmStatic
        public final Expression resolvedLocale(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("resolved-locale");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression resolvedLocale(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("resolved-locale");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression rgb(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("rgb");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression rgb(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("rgb");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression rgba(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("rgba");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression rgba(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("rgba");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression round(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("round");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression round(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("round");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression sin(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("sin");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression sin(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("sin");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression skyRadialProgress() {
            return new ExpressionBuilder("sky-radial-progress").build();
        }

        @JvmStatic
        public final Expression slice(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("slice");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression slice(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("slice");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression split(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("split");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression split(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("split");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression sqrt(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("sqrt");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression sqrt(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("sqrt");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression step(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("step");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression step(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("step");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression string(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(TypedValues.Custom.S_STRING);
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression string(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(TypedValues.Custom.S_STRING);
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression tan(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("tan");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression tan(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("tan");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression toBoolean(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-boolean");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression toBoolean(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-boolean");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression toColor(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-color");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression toColor(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-color");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression toHsla(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-hsla");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression toHsla(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-hsla");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression toNumber(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-number");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression toNumber(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-number");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression toRgba(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-rgba");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression toRgba(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-rgba");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression toString(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-string");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression toString(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("to-string");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression typeofExpression(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("typeof");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression typeofExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("typeof");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression upcase(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("upcase");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression upcase(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("upcase");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression varExpression(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("var");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression varExpression(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("var");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression within(Geometry geometry) {
            Intrinsics.checkNotNullParameter(geometry, "geometry");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("within");
            Expected<String, Value> expectedFromJson = Value.fromJson(geometry.toJson());
            Intrinsics.checkNotNullExpressionValue(expectedFromJson, "fromJson(geometry.toJson())");
            Value value = expectedFromJson.getValue();
            if (value != null) {
                Object contents = value.getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                expressionBuilder.addArgument(new Expression((HashMap<String, Value>) contents));
                return expressionBuilder.build();
            }
            throw new MapboxStyleException(expectedFromJson.getError());
        }

        @JvmStatic
        public final Expression worldview(Expression... expressions) {
            Intrinsics.checkNotNullParameter(expressions, "expressions");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("worldview");
            for (Expression expression : expressions) {
                expressionBuilder.addArgument(expression);
            }
            return expressionBuilder.build();
        }

        public final Expression worldview(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("worldview");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression zoom() {
            return new ExpressionBuilder("zoom").build();
        }

        @JvmStatic
        public final Expression rgb(double red, double green, double blue) {
            return new ExpressionBuilder("rgb").addArgument(literal(red)).addArgument(literal(green)).addArgument(literal(blue)).build();
        }

        @JvmStatic
        public final Expression rgba(double red, double green, double blue, double alpha) {
            return new ExpressionBuilder("rgba").addArgument(literal(red)).addArgument(literal(green)).addArgument(literal(blue)).addArgument(literal(alpha)).build();
        }

        @JvmStatic
        public final Expression step(Expression input, Expression output, Pair<Expression, Expression>... stops) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(stops, "stops");
            ExpressionBuilder expressionBuilderAddArgument = new ExpressionBuilder("step").addArgument(input).addArgument(output);
            for (Pair<Expression, Expression> pair : stops) {
                expressionBuilderAddArgument.addArgument(pair.getFirst());
                expressionBuilderAddArgument.addArgument(pair.getSecond());
            }
            return expressionBuilderAddArgument.build();
        }

        @JvmStatic
        public final Expression switchCase(Pair<Expression, Expression>[] stops, Expression fallback) {
            Intrinsics.checkNotNullParameter(stops, "stops");
            Intrinsics.checkNotNullParameter(fallback, "fallback");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(Constants.SENSITIVITY_CASE);
            for (Pair<Expression, Expression> pair : stops) {
                expressionBuilder.addArgument(pair.getFirst());
                expressionBuilder.addArgument(pair.getSecond());
            }
            expressionBuilder.addArgument(fallback);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression match(Expression input, Pair<Expression, Expression>[] stops, Expression fallback) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(stops, "stops");
            Intrinsics.checkNotNullParameter(fallback, "fallback");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("match");
            expressionBuilder.addArgument(input);
            for (Pair<Expression, Expression> pair : stops) {
                expressionBuilder.addArgument(pair.getFirst());
                expressionBuilder.addArgument(pair.getSecond());
            }
            expressionBuilder.addArgument(fallback);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression linearInterpolator(Expression input, Pair<Expression, Expression>... stops) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(stops, "stops");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            interpolatorBuilder.linear();
            interpolatorBuilder.addArgument(input);
            for (Pair<Expression, Expression> pair : stops) {
                interpolatorBuilder.addArgument(pair.getFirst());
                interpolatorBuilder.addArgument(pair.getSecond());
            }
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression exponentialInterpolator(Expression base, Expression input, Pair<Expression, Expression>... stops) {
            Intrinsics.checkNotNullParameter(base, "base");
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(stops, "stops");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            interpolatorBuilder.exponential(base);
            interpolatorBuilder.addArgument(input);
            for (Pair<Expression, Expression> pair : stops) {
                interpolatorBuilder.addArgument(pair.getFirst());
                interpolatorBuilder.addArgument(pair.getSecond());
            }
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression exponentialInterpolator(double base, Expression input, Pair<Expression, Expression>... stops) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(stops, "stops");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            interpolatorBuilder.exponential(base);
            interpolatorBuilder.addArgument(input);
            for (Pair<Expression, Expression> pair : stops) {
                interpolatorBuilder.addArgument(pair.getFirst());
                interpolatorBuilder.addArgument(pair.getSecond());
            }
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression cubicBezierInterpolator(Expression x1, Expression y1, Expression x2, Expression y2, Expression input, Pair<Expression, Expression>... stops) {
            Intrinsics.checkNotNullParameter(x1, "x1");
            Intrinsics.checkNotNullParameter(y1, "y1");
            Intrinsics.checkNotNullParameter(x2, "x2");
            Intrinsics.checkNotNullParameter(y2, "y2");
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(stops, "stops");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            interpolatorBuilder.cubicBezier(x1, y1, x2, y2);
            interpolatorBuilder.addArgument(input);
            for (Pair<Expression, Expression> pair : stops) {
                interpolatorBuilder.addArgument(pair.getFirst());
                interpolatorBuilder.addArgument(pair.getSecond());
            }
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression cubicBezierInterpolator(double x1, double y1, double x2, double y2, Expression input, Pair<Expression, Expression>... stops) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(stops, "stops");
            InterpolatorBuilder interpolatorBuilder = new InterpolatorBuilder("interpolate");
            interpolatorBuilder.cubicBezier(x1, y1, x2, y2);
            interpolatorBuilder.addArgument(input);
            for (Pair<Expression, Expression> pair : stops) {
                interpolatorBuilder.addArgument(pair.getFirst());
                interpolatorBuilder.addArgument(pair.getSecond());
            }
            return interpolatorBuilder.build();
        }

        @JvmStatic
        public final Expression linear() {
            return new ExpressionBuilder("linear").build();
        }

        @JvmStatic
        public final Expression exponential(Expression expression) {
            Intrinsics.checkNotNullParameter(expression, "expression");
            return new ExpressionBuilder("exponential").addArgument(expression).build();
        }

        @JvmStatic
        public final Expression exponential(double value) {
            return new ExpressionBuilder("exponential").addArgument(literal(value)).build();
        }

        public final Expression exponential(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("exponential");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression cubicBezier(Expression x1, Expression x2, Expression x3, Expression x4) {
            Intrinsics.checkNotNullParameter(x1, "x1");
            Intrinsics.checkNotNullParameter(x2, "x2");
            Intrinsics.checkNotNullParameter(x3, "x3");
            Intrinsics.checkNotNullParameter(x4, "x4");
            return new ExpressionBuilder("cubic-bezier").addArgument(x1).addArgument(x2).addArgument(x3).addArgument(x4).build();
        }

        @JvmStatic
        public final Expression cubicBezier(double x1, double x2, double x3, double x4) {
            return new ExpressionBuilder("cubic-bezier").addArgument(literal(x1)).addArgument(literal(x2)).addArgument(literal(x3)).addArgument(literal(x4)).build();
        }

        public final Expression cubicBezier(Function1<? super ExpressionBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("cubic-bezier");
            block.invoke(expressionBuilder);
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression color(int intColor) {
            float[] fArrColorToRgbaArray = ColorUtils.INSTANCE.colorToRgbaArray(intColor);
            return rgba(literal(fArrColorToRgbaArray[0]), literal(fArrColorToRgbaArray[1]), literal(fArrColorToRgbaArray[2]), literal(fArrColorToRgbaArray[3]));
        }

        @JvmStatic
        public final Expression get(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return get(literal(key));
        }

        @JvmStatic
        public final Expression get(String key, Expression expression) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(expression, "expression");
            return get(literal(key), expression);
        }

        @JvmStatic
        public final Expression not(boolean bool) {
            return not(literal(bool));
        }

        @JvmStatic
        public final Expression at(double index, Expression array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return at(literal(index), array);
        }

        @JvmStatic
        public final Expression inExpression(String needle, Expression haystack) {
            Intrinsics.checkNotNullParameter(needle, "needle");
            Intrinsics.checkNotNullParameter(haystack, "haystack");
            return inExpression(literal(needle), haystack);
        }

        @JvmStatic
        public final Expression inExpression(double needle, Expression haystack) {
            Intrinsics.checkNotNullParameter(haystack, "haystack");
            return inExpression(literal(needle), haystack);
        }

        @JvmStatic
        public final Expression has(String string, Expression expression) {
            Intrinsics.checkNotNullParameter(string, "string");
            Intrinsics.checkNotNullParameter(expression, "expression");
            return has(literal(string), expression);
        }

        @JvmStatic
        public final Expression has(String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return has(literal(string));
        }

        @JvmStatic
        public final Expression length(String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return length(literal(string));
        }

        @JvmStatic
        public final Expression sum(double... dArr) {
            Intrinsics.checkNotNullParameter(dArr, "double");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder(Marker.ANY_NON_NULL_MARKER);
            for (double d : dArr) {
                expressionBuilder.addArgument(literal(d));
            }
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression product(double... dArr) {
            Intrinsics.checkNotNullParameter(dArr, "double");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("*");
            for (double d : dArr) {
                expressionBuilder.addArgument(literal(d));
            }
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression subtract(double first, double second) {
            return subtract(literal(first), literal(second));
        }

        @JvmStatic
        public final Expression subtract(double value) {
            return subtract(literal(value));
        }

        @JvmStatic
        public final Expression division(double first, double second) {
            return division(literal(first), literal(second));
        }

        @JvmStatic
        public final Expression mod(double first, double second) {
            return mod(literal(first), literal(second));
        }

        @JvmStatic
        public final Expression pow(double first, double second) {
            return pow(literal(first), literal(second));
        }

        @JvmStatic
        public final Expression sqrt(double value) {
            return sqrt(literal(value));
        }

        @JvmStatic
        public final Expression log10(double value) {
            return log10(literal(value));
        }

        @JvmStatic
        public final Expression ln(double value) {
            return ln(literal(value));
        }

        @JvmStatic
        public final Expression log2(double value) {
            return log2(literal(value));
        }

        @JvmStatic
        public final Expression sin(double value) {
            return sin(literal(value));
        }

        @JvmStatic
        public final Expression cos(double value) {
            return cos(literal(value));
        }

        @JvmStatic
        public final Expression tan(double value) {
            return tan(literal(value));
        }

        @JvmStatic
        public final Expression asin(double value) {
            return asin(literal(value));
        }

        @JvmStatic
        public final Expression acos(double value) {
            return acos(literal(value));
        }

        @JvmStatic
        public final Expression atan(double value) {
            return atan(literal(value));
        }

        @JvmStatic
        public final Expression min(double... values) {
            Intrinsics.checkNotNullParameter(values, "values");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("min");
            for (double d : values) {
                expressionBuilder.addArgument(literal(d));
            }
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression max(double... values) {
            Intrinsics.checkNotNullParameter(values, "values");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("max");
            for (double d : values) {
                expressionBuilder.addArgument(literal(d));
            }
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression round(double value) {
            return round(literal(value));
        }

        @JvmStatic
        public final Expression abs(double value) {
            return abs(literal(value));
        }

        @JvmStatic
        public final Expression ceil(double value) {
            return ceil(literal(value));
        }

        @JvmStatic
        public final Expression floor(double value) {
            return floor(literal(value));
        }

        @JvmStatic
        public final Expression isSupportedScript(String script) {
            Intrinsics.checkNotNullParameter(script, "script");
            return isSupportedScript(literal(script));
        }

        @JvmStatic
        public final Expression upcase(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return upcase(literal(value));
        }

        @JvmStatic
        public final Expression downcase(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return downcase(literal(value));
        }

        @JvmStatic
        public final Expression concat(String... values) {
            Intrinsics.checkNotNullParameter(values, "values");
            ExpressionBuilder expressionBuilder = new ExpressionBuilder("concat");
            for (String str : values) {
                expressionBuilder.addArgument(literal(str));
            }
            return expressionBuilder.build();
        }

        @JvmStatic
        public final Expression numberFormat(double value, Function1<? super NumberFormatBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return numberFormat(literal(value), block);
        }

        @JvmStatic
        public final Expression varExpression(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return varExpression(literal(value));
        }
    }

    private Expression(double[] dArr) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d : dArr) {
            arrayList.add(new Value(d));
        }
        super((List<Value>) arrayList);
        this.literalValue = dArr;
    }

    private Expression(long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(new Value(j));
        }
        super((List<Value>) arrayList);
        this.literalValue = jArr;
    }

    private Expression(boolean[] zArr) {
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(new Value(z));
        }
        super((List<Value>) arrayList);
        this.literalValue = zArr;
    }

    private Expression(String[] strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new Value(str));
        }
        super((List<Value>) arrayList);
        this.literalValue = strArr;
    }
}
