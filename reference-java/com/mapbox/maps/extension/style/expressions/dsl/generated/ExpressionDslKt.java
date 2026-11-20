package com.mapbox.maps.extension.style.expressions.dsl.generated;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.joran.action.Action;
import com.caverock.androidsvg.SVGParser;
import com.facebook.common.callercontext.ContextChain;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.geojson.GeoJson;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u008e\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0010\t\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0013\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0006\u0010\t\u001a\u00020\u0001\u001a\u001f\u0010\n\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010\n\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\b\u0010\u000b\u001a\u00020\u0001H\u0007\u001a\u001f\u0010\f\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\r\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u000e\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u000f\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010\u0010\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0016\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0001\u001a\u001f\u0010\u0012\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u0014\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010\u0015\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u0016\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010\u0017\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u0018\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0010\u0010\u001a\u001a\u00020\u00012\b\b\u0001\u0010\u001b\u001a\u00020\u001c\u001a\u001f\u0010\u001d\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010\u001d\u001a\u00020\u00012\u0012\u0010\u001e\u001a\n\u0012\u0006\b\u0001\u0012\u00020 0\u001f\"\u00020 ¢\u0006\u0002\u0010!\u001a\u001f\u0010\"\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010#\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010#\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u000e\u0010$\u001a\u00020\u00012\u0006\u0010%\u001a\u00020&\u001a\u0006\u0010'\u001a\u00020\u0001\u001a\u001f\u0010(\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0016\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\b\u001a\u001f\u0010+\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010+\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020 \u001a\u0006\u0010,\u001a\u00020\u0001\u001a\u001f\u0010-\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010.\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010/\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010/\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u00100\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0006\u00102\u001a\u00020\u0001\u001a\u001f\u00103\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020 \u001a\u0016\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020 2\u0006\u00105\u001a\u00020\u0001\u001a\u001f\u00106\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u00107\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u00108\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u00108\u001a\u00020\u00012\u0006\u00109\u001a\u00020 \u001a\u0016\u00108\u001a\u00020\u00012\u0006\u00109\u001a\u00020 2\u0006\u00105\u001a\u00020\u0001\u001a\u0006\u0010:\u001a\u00020\u0001\u001a\u001f\u0010;\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010<\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0006\u0010=\u001a\u00020\u0001\u001a\u001f\u0010>\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010@\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0016\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020\b2\u0006\u0010B\u001a\u00020\u0001\u001a\u0016\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020 2\u0006\u0010B\u001a\u00020\u0001\u001a\u001f\u0010C\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010D\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010E\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010E\u001a\u00020\u00012\u0006\u0010F\u001a\u00020 \u001a\u001f\u0010G\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010G\u001a\u00020\u00012\u0006\u00109\u001a\u00020 \u001a\u001f\u0010H\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0006\u0010I\u001a\u00020\u0001\u001a\u001a\u0010J\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020L0K\u001a\u000e\u0010J\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020M\u001a\u000e\u0010J\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u000e\u0010J\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020N\u001a\u000e\u0010J\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020 \u001a\u0014\u0010J\u001a\u00020\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020L0O\u001a\u001f\u0010P\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010P\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0006\u0010Q\u001a\u00020\u0001\u001a\u001f\u0010R\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010R\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010S\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010S\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010T\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010U\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010V\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010W\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0012\u0010W\u001a\u00020\u00012\n\u0010\u001e\u001a\u00020X\"\u00020\b\u001a\u001f\u0010Y\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010Z\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0012\u0010Z\u001a\u00020\u00012\n\u0010\u001e\u001a\u00020X\"\u00020\b\u001a\u001f\u0010[\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0016\u0010[\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\b\u001a\u001f\u0010\\\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010]\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010]\u001a\u00020\u00012\u0006\u0010^\u001a\u00020M\u001a\u001f\u0010_\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a'\u0010`\u001a\u00020\u00012\u0006\u0010a\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010c\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0006\u0010d\u001a\u00020\u0001\u001a\u0006\u0010e\u001a\u00020\u0001\u001a\u001f\u0010f\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0016\u0010f\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\b\u001a\u001f\u0010g\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0012\u0010g\u001a\u00020\u00012\n\u0010h\u001a\u00020X\"\u00020\b\u001a\u0006\u0010i\u001a\u00020\u0001\u001a\u001f\u0010j\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0006\u0010k\u001a\u00020\u0001\u001a\u0006\u0010l\u001a\u00020\u0001\u001a\u001f\u0010m\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010n\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001e\u0010n\u001a\u00020\u00012\u0006\u0010o\u001a\u00020\b2\u0006\u0010p\u001a\u00020\b2\u0006\u0010q\u001a\u00020\b\u001a\u001f\u0010r\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a&\u0010r\u001a\u00020\u00012\u0006\u0010o\u001a\u00020\b2\u0006\u0010p\u001a\u00020\b2\u0006\u0010q\u001a\u00020\b2\u0006\u0010s\u001a\u00020\b\u001a\u001f\u0010t\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010t\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010u\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010u\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0006\u0010v\u001a\u00020\u0001\u001a\u001f\u0010w\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010x\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010y\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010y\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010z\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u00109\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010{\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010{\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0016\u0010{\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\b\u001a\u001f\u0010|\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0012\u0010|\u001a\u00020\u00012\n\u0010h\u001a\u00020X\"\u00020\b\u001a\u001f\u0010}\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u001f\u0010~\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000e\u0010~\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b\u001a\u001f\u0010\u007f\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0080\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0081\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0082\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0083\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0084\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0085\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a \u0010\u0086\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000f\u0010\u0086\u0001\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020 \u001a \u0010\u0087\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u000f\u0010\u0087\u0001\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020 \u001a\u0011\u0010\u0088\u0001\u001a\u00020\u00012\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001\u001a \u0010\u008b\u0001\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a\u0007\u0010\u008c\u0001\u001a\u00020\u0001¨\u0006\u008d\u0001"}, d2 = {"abs", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ExpressionBuilder;", "", "Lkotlin/ExtensionFunctionType;", "value", "", "accumulated", "acos", "activeAnchor", SVGParser.XML_STYLESHEET_ATTR_MEDIA_ALL, "any", "array", "asin", "at", FirebaseAnalytics.Param.INDEX, "atInterpolated", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$InterpolatorBuilder;", "atan", TypedValues.Custom.S_BOOLEAN, "ceil", "coalesce", "collator", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$CollatorBuilder;", "color", "intColor", "", "concat", "values", "", "", "([Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "config", "cos", "distance", "geojson", "Lcom/mapbox/geojson/GeoJson;", "distanceFromCenter", "division", "first", "second", "downcase", JWKParameterNames.RSA_EXPONENT, "eq", "featureState", "floor", "format", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$FormatBuilder;", "geometryType", "get", Action.KEY_ATTRIBUTE, "expression", "gt", "gte", "has", TypedValues.Custom.S_STRING, "heatmapDensity", "hsl", "hsla", "id", "image", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$ImageBuilder;", "inExpression", "needle", "haystack", "indexOf", "interpolate", "isSupportedScript", "script", "length", "letExpression", "lineProgress", "literal", "Ljava/util/HashMap;", "", "", "", "", "ln", "ln2", "log10", "log2", "lt", "lte", "match", "max", "", "measureLight", "min", "mod", "neq", "not", "bool", "number", "numberFormat", "input", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression$NumberFormatBuilder;", "objectExpression", ContextChain.TAG_PRODUCT_AND_INFRA, "pitch", "pow", "product", "double", LightUtils.LIGHT_PROPERTIES, "random", "rasterParticleSpeed", "rasterValue", "resolvedLocale", "rgb", "red", "green", "blue", "rgba", "alpha", "round", "sin", "skyRadialProgress", "slice", "split", "sqrt", "step", "subtract", "sum", "switchCase", "tan", "toBoolean", "toColor", "toHsla", "toNumber", "toRgba", "toString", "typeofExpression", "upcase", "varExpression", "within", "geometry", "Lcom/mapbox/geojson/Geometry;", "worldview", "zoom", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ExpressionDslKt {
    public static final Expression subtract(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.subtract(block);
    }

    public static final Expression not(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.not(block);
    }

    public static final Expression neq(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.neq(block);
    }

    public static final Expression product(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.product(block);
    }

    public static final Expression division(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.division(block);
    }

    public static final Expression mod(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.mod(block);
    }

    public static final Expression pow(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.pow(block);
    }

    public static final Expression sum(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.sum(block);
    }

    public static final Expression lt(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.lt(block);
    }

    public static final Expression lte(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.lte(block);
    }

    public static final Expression eq(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.eq(block);
    }

    public static final Expression gt(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.gt(block);
    }

    public static final Expression gte(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.gte(block);
    }

    public static final Expression abs(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.abs(block);
    }

    public static final Expression accumulated() {
        return Expression.INSTANCE.accumulated();
    }

    public static final Expression acos(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.acos(block);
    }

    public static final Expression activeAnchor() {
        return Expression.INSTANCE.activeAnchor();
    }

    public static final Expression all(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.all(block);
    }

    public static final Expression any(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.any(block);
    }

    public static final Expression array(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.array(block);
    }

    public static final Expression asin(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.asin(block);
    }

    public static final Expression at(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.at(block);
    }

    public static final Expression atInterpolated(Function1<? super Expression.InterpolatorBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.atInterpolated(block);
    }

    public static final Expression atan(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.atan(block);
    }

    public static final Expression m1032boolean(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.m1034boolean(block);
    }

    public static final Expression switchCase(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.switchCase(block);
    }

    public static final Expression ceil(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.ceil(block);
    }

    public static final Expression coalesce(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.coalesce(block);
    }

    public static final Expression collator(Function1<? super Expression.CollatorBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.collator(block);
    }

    public static final Expression concat(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.concat(block);
    }

    public static final Expression config(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.config(block);
    }

    public static final Expression cos(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.cos(block);
    }

    public static final Expression distance(GeoJson geojson) {
        Intrinsics.checkNotNullParameter(geojson, "geojson");
        return Expression.INSTANCE.distance(geojson);
    }

    public static final Expression distanceFromCenter() {
        return Expression.INSTANCE.distanceFromCenter();
    }

    public static final Expression downcase(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.downcase(block);
    }

    public static final Expression e() {
        return Expression.INSTANCE.e();
    }

    public static final Expression featureState(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.featureState(block);
    }

    public static final Expression floor(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.floor(block);
    }

    public static final Expression format(Function1<? super Expression.FormatBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.format(block);
    }

    public static final Expression geometryType() {
        return Expression.INSTANCE.geometryType();
    }

    public static final Expression get(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.get(block);
    }

    public static final Expression has(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.has(block);
    }

    public static final Expression heatmapDensity() {
        return Expression.INSTANCE.heatmapDensity();
    }

    public static final Expression hsl(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.hsl(block);
    }

    public static final Expression hsla(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.hsla(block);
    }

    public static final Expression id() {
        return Expression.INSTANCE.id();
    }

    public static final Expression image(Function1<? super Expression.ImageBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.image(block);
    }

    public static final Expression inExpression(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.inExpression(block);
    }

    public static final Expression indexOf(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.indexOf(block);
    }

    public static final Expression interpolate(Function1<? super Expression.InterpolatorBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.interpolate(block);
    }

    public static final Expression isSupportedScript(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.isSupportedScript(block);
    }

    public static final Expression length(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.length(block);
    }

    public static final Expression letExpression(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.letExpression(block);
    }

    public static final Expression lineProgress() {
        return Expression.INSTANCE.lineProgress();
    }

    public static final Expression literal(double d) {
        return Expression.INSTANCE.literal(d);
    }

    public static final Expression literal(long j) {
        return Expression.INSTANCE.literal(j);
    }

    public static final Expression literal(boolean z) {
        return Expression.INSTANCE.literal(z);
    }

    public static final Expression literal(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Expression.INSTANCE.literal(value);
    }

    public static final Expression literal(List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Expression.INSTANCE.literal$extension_style_release(value);
    }

    public static final Expression literal(HashMap<String, Object> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Expression.INSTANCE.literal$extension_style_release(value);
    }

    public static final Expression ln(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.ln(block);
    }

    public static final Expression ln2() {
        return Expression.INSTANCE.ln2();
    }

    public static final Expression log10(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.log10(block);
    }

    public static final Expression log2(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.log2(block);
    }

    public static final Expression match(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.match(block);
    }

    public static final Expression max(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.max(block);
    }

    public static final Expression measureLight(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.measureLight(block);
    }

    public static final Expression min(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.min(block);
    }

    public static final Expression number(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.number(block);
    }

    public static final Expression numberFormat(Expression input, Function1<? super Expression.NumberFormatBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.numberFormat(input, block);
    }

    public static final Expression objectExpression(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.objectExpression(block);
    }

    public static final Expression pi() {
        return Expression.INSTANCE.pi();
    }

    public static final Expression pitch() {
        return Expression.INSTANCE.pitch();
    }

    public static final Expression properties() {
        return Expression.INSTANCE.properties();
    }

    public static final Expression random(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.random(block);
    }

    public static final Expression rasterParticleSpeed() {
        return Expression.INSTANCE.rasterParticleSpeed();
    }

    public static final Expression rasterValue() {
        return Expression.INSTANCE.rasterValue();
    }

    public static final Expression resolvedLocale(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.resolvedLocale(block);
    }

    public static final Expression rgb(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.rgb(block);
    }

    public static final Expression rgba(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.rgba(block);
    }

    public static final Expression round(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.round(block);
    }

    public static final Expression sin(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.sin(block);
    }

    public static final Expression skyRadialProgress() {
        return Expression.INSTANCE.skyRadialProgress();
    }

    public static final Expression slice(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.slice(block);
    }

    public static final Expression split(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.split(block);
    }

    public static final Expression sqrt(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.sqrt(block);
    }

    public static final Expression step(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.step(block);
    }

    public static final Expression string(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.string(block);
    }

    public static final Expression tan(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.tan(block);
    }

    public static final Expression toBoolean(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.toBoolean(block);
    }

    public static final Expression toColor(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.toColor(block);
    }

    public static final Expression toHsla(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.toHsla(block);
    }

    public static final Expression toNumber(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.toNumber(block);
    }

    public static final Expression toRgba(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.toRgba(block);
    }

    public static final Expression toString(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.toString(block);
    }

    public static final Expression typeofExpression(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.typeofExpression(block);
    }

    public static final Expression upcase(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.upcase(block);
    }

    public static final Expression varExpression(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.varExpression(block);
    }

    public static final Expression within(Geometry geometry) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        return Expression.INSTANCE.within(geometry);
    }

    public static final Expression worldview(Function1<? super Expression.ExpressionBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return Expression.INSTANCE.worldview(block);
    }

    public static final Expression zoom() {
        return Expression.INSTANCE.zoom();
    }

    public static final Expression rgb(double d, double d2, double d3) {
        return Expression.INSTANCE.rgb(d, d2, d3);
    }

    public static final Expression rgba(double d, double d2, double d3, double d4) {
        return Expression.INSTANCE.rgba(d, d2, d3, d4);
    }

    public static final Expression color(int i) {
        return Expression.INSTANCE.color(i);
    }

    public static final Expression get(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return Expression.INSTANCE.get(key);
    }

    public static final Expression get(String key, Expression expression) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(expression, "expression");
        return Expression.INSTANCE.get(key, expression);
    }

    public static final Expression not(boolean z) {
        return Expression.INSTANCE.not(z);
    }

    public static final Expression at(double d, Expression array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return Expression.INSTANCE.at(d, array);
    }

    public static final Expression inExpression(String needle, Expression haystack) {
        Intrinsics.checkNotNullParameter(needle, "needle");
        Intrinsics.checkNotNullParameter(haystack, "haystack");
        return Expression.INSTANCE.inExpression(needle, haystack);
    }

    public static final Expression inExpression(double d, Expression haystack) {
        Intrinsics.checkNotNullParameter(haystack, "haystack");
        return Expression.INSTANCE.inExpression(d, haystack);
    }

    public static final Expression has(String string, Expression expression) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(expression, "expression");
        return Expression.INSTANCE.has(string, expression);
    }

    public static final Expression has(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return Expression.INSTANCE.has(string);
    }

    public static final Expression length(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return Expression.INSTANCE.length(string);
    }

    public static final Expression sum(double... dArr) {
        Intrinsics.checkNotNullParameter(dArr, "double");
        return Expression.INSTANCE.sum(Arrays.copyOf(dArr, dArr.length));
    }

    public static final Expression product(double... dArr) {
        Intrinsics.checkNotNullParameter(dArr, "double");
        return Expression.INSTANCE.product(Arrays.copyOf(dArr, dArr.length));
    }

    public static final Expression subtract(double d, double d2) {
        return Expression.INSTANCE.subtract(d, d2);
    }

    public static final Expression subtract(double d) {
        return Expression.INSTANCE.subtract(d);
    }

    public static final Expression division(double d, double d2) {
        return Expression.INSTANCE.division(d, d2);
    }

    public static final Expression mod(double d, double d2) {
        return Expression.INSTANCE.mod(d, d2);
    }

    public static final Expression pow(double d, double d2) {
        return Expression.INSTANCE.pow(d, d2);
    }

    public static final Expression sqrt(double d) {
        return Expression.INSTANCE.sqrt(d);
    }

    public static final Expression log10(double d) {
        return Expression.INSTANCE.log10(d);
    }

    public static final Expression ln(double d) {
        return Expression.INSTANCE.ln(d);
    }

    public static final Expression log2(double d) {
        return Expression.INSTANCE.log2(d);
    }

    public static final Expression sin(double d) {
        return Expression.INSTANCE.sin(d);
    }

    public static final Expression cos(double d) {
        return Expression.INSTANCE.cos(d);
    }

    public static final Expression tan(double d) {
        return Expression.INSTANCE.tan(d);
    }

    public static final Expression asin(double d) {
        return Expression.INSTANCE.asin(d);
    }

    public static final Expression acos(double d) {
        return Expression.INSTANCE.acos(d);
    }

    public static final Expression atan(double d) {
        return Expression.INSTANCE.atan(d);
    }

    public static final Expression min(double... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return Expression.INSTANCE.min(Arrays.copyOf(values, values.length));
    }

    public static final Expression max(double... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return Expression.INSTANCE.max(Arrays.copyOf(values, values.length));
    }

    public static final Expression round(double d) {
        return Expression.INSTANCE.round(d);
    }

    public static final Expression abs(double d) {
        return Expression.INSTANCE.abs(d);
    }

    public static final Expression ceil(double d) {
        return Expression.INSTANCE.ceil(d);
    }

    public static final Expression floor(double d) {
        return Expression.INSTANCE.floor(d);
    }

    public static final Expression isSupportedScript(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        return Expression.INSTANCE.isSupportedScript(script);
    }

    public static final Expression upcase(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Expression.INSTANCE.upcase(value);
    }

    public static final Expression downcase(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Expression.INSTANCE.downcase(value);
    }

    public static final Expression concat(String... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return Expression.INSTANCE.concat((String[]) Arrays.copyOf(values, values.length));
    }

    public static final Expression varExpression(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Expression.INSTANCE.varExpression(value);
    }
}
