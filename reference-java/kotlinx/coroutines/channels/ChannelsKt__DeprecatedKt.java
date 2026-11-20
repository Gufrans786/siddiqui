package kotlinx.coroutines.channels;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.microsoft.codepush.react.CodePushConstants;
import com.nimbusds.jose.HeaderParameterNames;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.oppwa.mobile.connect.checkout.dialog.CheckoutActivity;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import sa.lg.android.locate.BuildConfig;

@Metadata(d1 = {"\u0000¶\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001aC\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001d\u0010\u0004\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0006\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\b\u0007H\u0087\b¢\u0006\u0002\u0010\b\u001a2\u0010\t\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\n0\u0005H\u0087H¢\u0006\u0002\u0010\f\u001aJ\u0010\r\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u000e2\u001a\u0010\u0013\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00060\u0014\"\u0006\u0012\u0002\b\u00030\u0006H\u0001¢\u0006\u0002\u0010\u0015\u001a&\u0010\u0016\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0087@¢\u0006\u0002\u0010\u0019\u001a(\u0010\u001a\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0087@¢\u0006\u0002\u0010\u0019\u001a\u001e\u0010\u001b\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a \u0010\u001d\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a&\u0010\u001e\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u001f\u001a\u0002H\u0002H\u0087@¢\u0006\u0002\u0010 \u001a\u001e\u0010!\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a&\u0010\"\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u001f\u001a\u0002H\u0002H\u0087@¢\u0006\u0002\u0010 \u001a \u0010#\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010$\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a \u0010%\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a0\u0010&\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010'\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001aQ\u0010*\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001aQ\u00101\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001af\u00102\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)27\u0010+\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0007¢\u0006\u0002\u00104\u001aQ\u00105\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a$\u00106\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\b\b\u0000\u0010\u0002*\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0001\u001a>\u00107\u001a\u0002H8\"\b\b\u0000\u0010\u0002*\u00020/\"\u0010\b\u0001\u00108*\n\u0012\u0006\b\u0000\u0012\u0002H\u000209*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0087@¢\u0006\u0002\u0010;\u001a<\u00107\u001a\u0002H8\"\b\b\u0000\u0010\u0002*\u00020/\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u0002H\u00020<*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0087@¢\u0006\u0002\u0010=\u001a0\u0010>\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010'\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001aQ\u0010?\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a6\u0010@\u001a\u0002H8\"\u0004\b\u0000\u0010\u0002\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u0002H\u00020<*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0081@¢\u0006\u0002\u0010=\u001a8\u0010A\u001a\u0002H8\"\u0004\b\u0000\u0010\u0002\"\u0010\b\u0001\u00108*\n\u0012\u0006\b\u0000\u0012\u0002H\u000209*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010:\u001a\u0002H8H\u0081@¢\u0006\u0002\u0010;\u001a<\u0010B\u001a\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0C\"\u0004\b\u0000\u0010D\"\u0004\b\u0001\u0010E*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0F0\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001aR\u0010B\u001a\u0002HG\"\u0004\b\u0000\u0010D\"\u0004\b\u0001\u0010E\"\u0018\b\u0002\u0010G*\u0012\u0012\u0006\b\u0000\u0012\u0002HD\u0012\u0006\b\u0000\u0012\u0002HE0H*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u0002HE0F0\u00062\u0006\u0010:\u001a\u0002HGH\u0081@¢\u0006\u0002\u0010I\u001a$\u0010J\u001a\b\u0012\u0004\u0012\u0002H\u00020K\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a$\u0010L\u001a\b\u0012\u0004\u0012\u0002H\u00020M\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a]\u0010N\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2(\u0010O\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00060-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001aW\u0010P\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010O\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001al\u0010Q\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)27\u0010O\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0001¢\u0006\u0002\u00104\u001ar\u0010R\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0001*\u00020/*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)29\u0010O\u001a5\b\u0001\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/03H\u0007¢\u0006\u0002\u00104\u001a]\u0010S\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0001*\u00020/*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2$\u0010O\u001a \b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0007¢\u0006\u0002\u00100\u001a.\u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020U0\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)H\u0007\u001a\u001e\u0010V\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0007\u001aW\u0010W\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010D*\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\b\u0002\u0010(\u001a\u00020)2\"\u0010X\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002HD0-\u0012\u0006\u0012\u0004\u0018\u00010/0,H\u0001¢\u0006\u0002\u00100\u001a$\u0010Y\u001a\b\u0012\u0004\u0012\u0002H\u00020Z\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0081@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010[\u001a\u00020.\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a\u001e\u0010\\\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a<\u0010]\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u001a\u0010^\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\u00020`j\n\u0012\u0006\b\u0000\u0012\u0002H\u0002`_H\u0087@¢\u0006\u0002\u0010a\u001a<\u0010b\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u001a\u0010^\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\u00020`j\n\u0012\u0006\b\u0000\u0012\u0002H\u0002`_H\u0087@¢\u0006\u0002\u0010a\u001a\u001e\u0010c\u001a\u00020.\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0087@¢\u0006\u0002\u0010\u001c\u001a$\u0010d\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\b\b\u0000\u0010\u0002*\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0007\u001a?\u0010e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010F0\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0087\u0004\u001az\u0010e\u001a\b\u0012\u0004\u0012\u0002HE0\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010E*\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00062\b\b\u0002\u0010(\u001a\u00020)26\u0010O\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(g\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(h\u0012\u0004\u0012\u0002HE0,H\u0001\u001a6\u0010i\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u000e*\u0006\u0012\u0002\b\u00030\u0006H\u0001¢\u0006\u0002\u0010j¨\u0006k"}, d2 = {"consume", "R", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/BroadcastChannel;", "block", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "consumeEach", "", TSScheduleManager.ACTION_NAME, "(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consumesAll", "Lkotlinx/coroutines/CompletionHandler;", "", "Lkotlin/ParameterName;", "name", "cause", "channels", "", "([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;", "elementAt", FirebaseAnalytics.Param.INDEX, "", "(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "elementAtOrNull", "first", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firstOrNull", "indexOf", "element", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "last", "lastIndexOf", "lastOrNull", "single", "singleOrNull", "drop", JWKParameterNames.RSA_MODULUS, CoreConstants.CONTEXT_SCOPE_VALUE, "Lkotlin/coroutines/CoroutineContext;", "dropWhile", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;", ViewProps.FILTER, "filterIndexed", "Lkotlin/Function3;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;", "filterNot", "filterNotNull", "filterNotNullTo", "C", "", FirebaseAnalytics.Param.DESTINATION, "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/SendChannel;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "take", "takeWhile", "toChannel", "toCollection", "toMap", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/Pair;", "M", "", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toMutableList", "", "toSet", "", "flatMap", ViewProps.TRANSFORM, "map", "mapIndexed", "mapIndexedNotNull", "mapNotNull", "withIndex", "Lkotlin/collections/IndexedValue;", "distinct", "distinctBy", "selector", "toMutableSet", "", "any", CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, "maxWith", "comparator", "Lkotlin/Comparator;", "Ljava/util/Comparator;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "minWith", "none", "requireNoNulls", HeaderParameterNames.COMPRESSION_ALGORITHM, "other", "a", "b", "consumes", "(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;", "kotlinx-coroutines-core"}, k = 5, mv = {2, 0, 0}, xi = 48, xs = "kotlinx/coroutines/channels/ChannelsKt")
final class ChannelsKt__DeprecatedKt {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {434}, m = "any", n = {"$this$consume$iv"}, s = {"L$0"})
    static final class AnonymousClass1<E> extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.any(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = SyslogConstants.LOG_LOCAL6)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {41}, m = "consumeEach", n = {TSScheduleManager.ACTION_NAME, "channel$iv"}, s = {"L$0", "L$1"})
    static final class C09731<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C09731(Continuation<? super C09731> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.consumeEach(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {SyslogConstants.SYSLOG_PORT}, m = CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, n = {CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class C09741<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C09741(Continuation<? super C09741> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.count(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {BuildConfig.VERSION_CODE}, m = "elementAt", n = {"$this$consume$iv", FirebaseAnalytics.Param.INDEX, CodePushConstants.LATEST_ROLLBACK_COUNT_KEY}, s = {"L$0", "I$0", "I$1"})
    static final class C09791<E> extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C09791(Continuation<? super C09791> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.elementAt(null, 0, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {83}, m = "elementAtOrNull", n = {"$this$consume$iv", FirebaseAnalytics.Param.INDEX, CodePushConstants.LATEST_ROLLBACK_COUNT_KEY}, s = {"L$0", "I$0", "I$1"})
    static final class C09801<E> extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C09801(Continuation<? super C09801> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.elementAtOrNull(null, 0, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {SyslogConstants.SYSLOG_PORT}, m = "filterNotNullTo", n = {FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class C09851<E, C extends Collection<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C09851(Continuation<? super C09851> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.filterNotNullTo((ReceiveChannel) null, (Collection) null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {SyslogConstants.SYSLOG_PORT, 272}, m = "filterNotNullTo", n = {FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv", FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class AnonymousClass3<E, C extends SendChannel<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.filterNotNullTo((ReceiveChannel) null, (SendChannel) null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {95}, m = "first", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    static final class C09861<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C09861(Continuation<? super C09861> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.first(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {105}, m = "firstOrNull", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    static final class C09871<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C09871(Continuation<? super C09871> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.firstOrNull(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {SyslogConstants.SYSLOG_PORT}, m = "indexOf", n = {"element", FirebaseAnalytics.Param.INDEX, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
    static final class C09891<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;

        C09891(Continuation<? super C09891> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.indexOf(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {127, 130}, m = "last", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C09901<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C09901(Continuation<? super C09901> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.last(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {SyslogConstants.SYSLOG_PORT}, m = "lastIndexOf", n = {"element", "lastIndex", FirebaseAnalytics.Param.INDEX, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C09911<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        Object result;

        C09911(Continuation<? super C09911> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.lastIndexOf(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {153, 156}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C09921<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C09921(Continuation<? super C09921> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.lastOrNull(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {450, 452}, m = "maxWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "max"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class C09951<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;

        C09951(Continuation<? super C09951> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.maxWith(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {464, 466}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class C09961<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;

        C09961(Continuation<? super C09961> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.minWith(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {477}, m = "none", n = {"$this$consume$iv"}, s = {"L$0"})
    static final class C09971<E> extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        C09971(Continuation<? super C09971> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.none(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {166, 169}, m = "single", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C09991<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C09991(Continuation<? super C09991> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.single(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {179, 182}, m = "singleOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C10001<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C10001(Continuation<? super C10001> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__DeprecatedKt.singleOrNull(null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {SyslogConstants.SYSLOG_PORT, 308}, m = "toChannel", n = {FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv", FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C10031<E, C extends SendChannel<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C10031(Continuation<? super C10031> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toChannel(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {SyslogConstants.SYSLOG_PORT}, m = "toCollection", n = {FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class C10041<E, C extends Collection<? super E>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C10041(Continuation<? super C10041> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toCollection(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {SyslogConstants.SYSLOG_PORT}, m = "toMap", n = {FirebaseAnalytics.Param.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass2<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toMap(null, null, this);
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    public static final <E, R> R consume(BroadcastChannel<E> broadcastChannel, Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        ReceiveChannel<E> receiveChannelOpenSubscription = broadcastChannel.openSubscription();
        try {
            return function1.invoke(receiveChannelOpenSubscription);
        } finally {
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
        }
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    public static final <E> java.lang.Object consumeEach(kotlinx.coroutines.channels.BroadcastChannel<E> r6, kotlin.jvm.functions.Function1<? super E, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.consumeEach(kotlinx.coroutines.channels.BroadcastChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Function1<Throwable, Unit> consumesAll(final ReceiveChannel<?>... receiveChannelArr) {
        return new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ChannelsKt__DeprecatedKt.consumesAll$lambda$2$ChannelsKt__DeprecatedKt(receiveChannelArr, (Throwable) obj);
            }
        };
    }

    public static final Unit consumesAll$lambda$2$ChannelsKt__DeprecatedKt(ReceiveChannel[] receiveChannelArr, Throwable th) throws Throwable {
        Throwable th2 = null;
        for (ReceiveChannel receiveChannel : receiveChannelArr) {
            try {
                ChannelsKt.cancelConsumed(receiveChannel, th);
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    ExceptionsKt.addSuppressed(th2, th3);
                }
            }
        }
        if (th2 != null) {
            throw th2;
        }
        return Unit.INSTANCE;
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object elementAt(kotlinx.coroutines.channels.ReceiveChannel r10, int r11, kotlin.coroutines.Continuation r12) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.elementAt(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object elementAtOrNull(kotlinx.coroutines.channels.ReceiveChannel r9, int r10, kotlin.coroutines.Continuation r11) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.elementAtOrNull(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final Object first(ReceiveChannel receiveChannel, Continuation continuation) {
        C09861 c09861;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator channelIterator;
        if (continuation instanceof C09861) {
            c09861 = (C09861) continuation;
            if ((c09861.label & Integer.MIN_VALUE) != 0) {
                c09861.label -= Integer.MIN_VALUE;
            } else {
                c09861 = new C09861(continuation);
            }
        } else {
            c09861 = new C09861(continuation);
        }
        Object obj = c09861.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c09861.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            channelIterator = (ChannelIterator) c09861.L$1;
            receiveChannel2 = (ReceiveChannel) c09861.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                if (((Boolean) obj).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                Object next = channelIterator.next();
                ChannelsKt.cancelConsumed(receiveChannel2, null);
                return next;
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    ChannelsKt.cancelConsumed(receiveChannel2, th);
                    throw th3;
                }
            }
        }
        ResultKt.throwOnFailure(obj);
        try {
            ChannelIterator it = receiveChannel.iterator();
            c09861.L$0 = receiveChannel;
            c09861.L$1 = it;
            c09861.label = 1;
            Object objHasNext = it.hasNext(c09861);
            if (objHasNext == coroutine_suspended) {
                return coroutine_suspended;
            }
            receiveChannel2 = receiveChannel;
            channelIterator = it;
            obj = objHasNext;
            if (((Boolean) obj).booleanValue()) {
                throw new NoSuchElementException("ReceiveChannel is empty.");
            }
            Object next2 = channelIterator.next();
            ChannelsKt.cancelConsumed(receiveChannel2, null);
            return next2;
        } catch (Throwable th4) {
            receiveChannel2 = receiveChannel;
            th = th4;
            throw th;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final Object firstOrNull(ReceiveChannel receiveChannel, Continuation continuation) {
        C09871 c09871;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator channelIterator;
        if (continuation instanceof C09871) {
            c09871 = (C09871) continuation;
            if ((c09871.label & Integer.MIN_VALUE) != 0) {
                c09871.label -= Integer.MIN_VALUE;
            } else {
                c09871 = new C09871(continuation);
            }
        } else {
            c09871 = new C09871(continuation);
        }
        Object obj = c09871.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c09871.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                ChannelIterator it = receiveChannel.iterator();
                c09871.L$0 = receiveChannel;
                c09871.L$1 = it;
                c09871.label = 1;
                Object objHasNext = it.hasNext(c09871);
                if (objHasNext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                receiveChannel2 = receiveChannel;
                channelIterator = it;
                obj = objHasNext;
            } catch (Throwable th2) {
                receiveChannel2 = receiveChannel;
                th = th2;
                throw th;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            channelIterator = (ChannelIterator) c09871.L$1;
            receiveChannel2 = (ReceiveChannel) c09871.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                try {
                    throw th;
                } catch (Throwable th4) {
                    ChannelsKt.cancelConsumed(receiveChannel2, th);
                    throw th4;
                }
            }
        }
        if (((Boolean) obj).booleanValue()) {
            Object next = channelIterator.next();
            ChannelsKt.cancelConsumed(receiveChannel2, null);
            return next;
        }
        ChannelsKt.cancelConsumed(receiveChannel2, null);
        return null;
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object indexOf(kotlinx.coroutines.channels.ReceiveChannel r7, java.lang.Object r8, kotlin.coroutines.Continuation r9) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.indexOf(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object last(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.coroutines.Continuation r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.last(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object lastIndexOf(kotlinx.coroutines.channels.ReceiveChannel r8, java.lang.Object r9, kotlin.coroutines.Continuation r10) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.lastIndexOf(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object lastOrNull(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.coroutines.Continuation r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.lastOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final Object single(ReceiveChannel receiveChannel, Continuation continuation) {
        C09991 c09991;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator channelIterator;
        Object next;
        Object objHasNext;
        Object obj;
        ReceiveChannel receiveChannel3;
        if (continuation instanceof C09991) {
            c09991 = (C09991) continuation;
            if ((c09991.label & Integer.MIN_VALUE) != 0) {
                c09991.label -= Integer.MIN_VALUE;
            } else {
                c09991 = new C09991(continuation);
            }
        } else {
            c09991 = new C09991(continuation);
        }
        Object obj2 = c09991.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c09991.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj2);
            try {
                ChannelIterator it = receiveChannel.iterator();
                c09991.L$0 = receiveChannel;
                c09991.L$1 = it;
                c09991.label = 1;
                Object objHasNext2 = it.hasNext(c09991);
                if (objHasNext2 != coroutine_suspended) {
                    receiveChannel2 = receiveChannel;
                    channelIterator = it;
                    obj2 = objHasNext2;
                    if (((Boolean) obj2).booleanValue()) {
                        throw new NoSuchElementException("ReceiveChannel is empty.");
                    }
                    next = channelIterator.next();
                    c09991.L$0 = receiveChannel2;
                    c09991.L$1 = next;
                    c09991.label = 2;
                    objHasNext = channelIterator.hasNext(c09991);
                    if (objHasNext != coroutine_suspended) {
                        obj2 = objHasNext;
                        obj = next;
                        receiveChannel3 = receiveChannel2;
                        if (((Boolean) obj2).booleanValue()) {
                            throw new IllegalArgumentException("ReceiveChannel has more than one element.");
                        }
                        ChannelsKt.cancelConsumed(receiveChannel3, null);
                        return obj;
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                receiveChannel2 = receiveChannel;
                th = th2;
                throw th;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj = c09991.L$1;
            receiveChannel3 = (ReceiveChannel) c09991.L$0;
            try {
                ResultKt.throwOnFailure(obj2);
                if (((Boolean) obj2).booleanValue()) {
                    throw new IllegalArgumentException("ReceiveChannel has more than one element.");
                }
                ChannelsKt.cancelConsumed(receiveChannel3, null);
                return obj;
            } catch (Throwable th3) {
                th = th3;
                receiveChannel2 = receiveChannel3;
                try {
                    throw th;
                } catch (Throwable th4) {
                    ChannelsKt.cancelConsumed(receiveChannel2, th);
                    throw th4;
                }
            }
        }
        channelIterator = (ChannelIterator) c09991.L$1;
        receiveChannel2 = (ReceiveChannel) c09991.L$0;
        try {
            ResultKt.throwOnFailure(obj2);
            if (((Boolean) obj2).booleanValue()) {
                throw new NoSuchElementException("ReceiveChannel is empty.");
            }
            next = channelIterator.next();
            c09991.L$0 = receiveChannel2;
            c09991.L$1 = next;
            c09991.label = 2;
            objHasNext = channelIterator.hasNext(c09991);
            if (objHasNext != coroutine_suspended) {
                obj2 = objHasNext;
                obj = next;
                receiveChannel3 = receiveChannel2;
                if (((Boolean) obj2).booleanValue()) {
                    throw new IllegalArgumentException("ReceiveChannel has more than one element.");
                }
                ChannelsKt.cancelConsumed(receiveChannel3, null);
                return obj;
            }
            return coroutine_suspended;
        } catch (Throwable th5) {
            th = th5;
            throw th;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final Object singleOrNull(ReceiveChannel receiveChannel, Continuation continuation) {
        C10001 c10001;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator channelIterator;
        Object obj;
        ReceiveChannel receiveChannel3;
        if (continuation instanceof C10001) {
            c10001 = (C10001) continuation;
            if ((c10001.label & Integer.MIN_VALUE) != 0) {
                c10001.label -= Integer.MIN_VALUE;
            } else {
                c10001 = new C10001(continuation);
            }
        } else {
            c10001 = new C10001(continuation);
        }
        Object obj2 = c10001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c10001.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj2);
            try {
                ChannelIterator it = receiveChannel.iterator();
                c10001.L$0 = receiveChannel;
                c10001.L$1 = it;
                c10001.label = 1;
                Object objHasNext = it.hasNext(c10001);
                if (objHasNext != coroutine_suspended) {
                    receiveChannel2 = receiveChannel;
                    channelIterator = it;
                    obj2 = objHasNext;
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                receiveChannel2 = receiveChannel;
                th = th2;
                throw th;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj = c10001.L$1;
            receiveChannel3 = (ReceiveChannel) c10001.L$0;
            try {
                ResultKt.throwOnFailure(obj2);
                if (((Boolean) obj2).booleanValue()) {
                    ChannelsKt.cancelConsumed(receiveChannel3, null);
                    return null;
                }
                ChannelsKt.cancelConsumed(receiveChannel3, null);
                return obj;
            } catch (Throwable th3) {
                th = th3;
                receiveChannel2 = receiveChannel3;
                try {
                    throw th;
                } catch (Throwable th4) {
                    ChannelsKt.cancelConsumed(receiveChannel2, th);
                    throw th4;
                }
            }
        }
        channelIterator = (ChannelIterator) c10001.L$1;
        receiveChannel2 = (ReceiveChannel) c10001.L$0;
        try {
            ResultKt.throwOnFailure(obj2);
        } catch (Throwable th5) {
            th = th5;
            throw th;
        }
        if (((Boolean) obj2).booleanValue()) {
            Object next = channelIterator.next();
            c10001.L$0 = receiveChannel2;
            c10001.L$1 = next;
            c10001.label = 2;
            Object objHasNext2 = channelIterator.hasNext(c10001);
            if (objHasNext2 != coroutine_suspended) {
                obj2 = objHasNext2;
                obj = next;
                receiveChannel3 = receiveChannel2;
                if (((Boolean) obj2).booleanValue()) {
                    ChannelsKt.cancelConsumed(receiveChannel3, null);
                    return null;
                }
                ChannelsKt.cancelConsumed(receiveChannel3, null);
                return obj;
            }
            return coroutine_suspended;
        }
        ChannelsKt.cancelConsumed(receiveChannel2, null);
        return null;
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {194, 199, 200}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
    static final class C09771<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final int $n;
        final ReceiveChannel<E> $this_drop;
        int I$0;
        private Object L$0;
        Object L$1;
        int label;

        C09771(int i, ReceiveChannel<? extends E> receiveChannel, Continuation<? super C09771> continuation) {
            super(2, continuation);
            this.$n = i;
            this.$this_drop = receiveChannel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09771 c09771 = new C09771(this.$n, this.$this_drop, continuation);
            c09771.L$0 = obj;
            return c09771;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C09771) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09771.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static ReceiveChannel drop$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return drop(receiveChannel, i, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel drop(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09771(i, receiveChannel, null), 6, null);
    }

    public static ReceiveChannel dropWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return dropWhile(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2, 3, 4}, l = {211, 212, 213, JfifUtil.MARKER_EOI, JfifUtil.MARKER_SOS}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", JWKParameterNames.RSA_EXPONENT, "$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$0"})
    static final class C09781<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final Function2<E, Continuation<? super Boolean>, Object> $predicate;
        final ReceiveChannel<E> $this_dropWhile;
        private Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C09781(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C09781> continuation) {
            super(2, continuation);
            this.$this_dropWhile = receiveChannel;
            this.$predicate = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09781 c09781 = new C09781(this.$this_dropWhile, this.$predicate, continuation);
            c09781.L$0 = obj;
            return c09781;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C09781) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09781.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel dropWhile(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09781(receiveChannel, function2, null), 6, null);
    }

    public static ReceiveChannel filter$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.filter(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {228, 229, 229}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", JWKParameterNames.RSA_EXPONENT, "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    static final class C09811<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final Function2<E, Continuation<? super Boolean>, Object> $predicate;
        final ReceiveChannel<E> $this_filter;
        private Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C09811(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C09811> continuation) {
            super(2, continuation);
            this.$this_filter = receiveChannel;
            this.$predicate = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09811 c09811 = new C09811(this.$this_filter, this.$predicate, continuation);
            c09811.L$0 = obj;
            return c09811;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C09811) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09811.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <E> ReceiveChannel<E> filter(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09811(receiveChannel, function2, null), 6, null);
    }

    public static ReceiveChannel filterIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterIndexed(receiveChannel, coroutineContext, function3);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {241, CheckoutActivity.REQUEST_CODE_CHECKOUT, CheckoutActivity.REQUEST_CODE_CHECKOUT}, m = "invokeSuspend", n = {"$this$produce", FirebaseAnalytics.Param.INDEX, "$this$produce", JWKParameterNames.RSA_EXPONENT, FirebaseAnalytics.Param.INDEX, "$this$produce", FirebaseAnalytics.Param.INDEX}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
    static final class C09821<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final Function3<Integer, E, Continuation<? super Boolean>, Object> $predicate;
        final ReceiveChannel<E> $this_filterIndexed;
        int I$0;
        private Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C09821(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super C09821> continuation) {
            super(2, continuation);
            this.$this_filterIndexed = receiveChannel;
            this.$predicate = function3;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09821 c09821 = new C09821(this.$this_filterIndexed, this.$predicate, continuation);
            c09821.L$0 = obj;
            return c09821;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C09821) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09821.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel filterIndexed(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09821(receiveChannel, function3, null), 6, null);
    }

    public static ReceiveChannel filterNot$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterNot(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1", f = "Deprecated.kt", i = {}, l = {252}, m = "invokeSuspend", n = {}, s = {})
    static final class C09831<E> extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {
        final Function2<E, Continuation<? super Boolean>, Object> $predicate;
        Object L$0;
        int label;

        C09831(Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C09831> continuation) {
            super(2, continuation);
            this.$predicate = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09831 c09831 = new C09831(this.$predicate, continuation);
            c09831.L$0 = obj;
            return c09831;
        }

        @Override
        public final Object invoke(E e, Continuation<? super Boolean> continuation) {
            return ((C09831) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r4) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09831.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel filterNot(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ChannelsKt.filter(receiveChannel, coroutineContext, new C09831(function2, null));
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "", "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C09841<E> extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {
        Object L$0;
        int label;

        C09841(Continuation<? super C09841> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09841 c09841 = new C09841(continuation);
            c09841.L$0 = obj;
            return c09841;
        }

        @Override
        public final Object invoke(E e, Continuation<? super Boolean> continuation) {
            return ((C09841) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.L$0 != null);
        }
    }

    public static final <E> ReceiveChannel<E> filterNotNull(ReceiveChannel<? extends E> receiveChannel) {
        ReceiveChannel<E> receiveChannelFilter$default = filter$default(receiveChannel, null, new C09841(null), 1, null);
        Intrinsics.checkNotNull(receiveChannelFilter$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNull>");
        return receiveChannelFilter$default;
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel r6, java.util.Collection r7, kotlin.coroutines.Continuation r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel r7, kotlinx.coroutines.channels.SendChannel r8, kotlin.coroutines.Continuation r9) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {284, 285}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "remaining"}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class C10011<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final int $n;
        final ReceiveChannel<E> $this_take;
        int I$0;
        private Object L$0;
        Object L$1;
        int label;

        C10011(int i, ReceiveChannel<? extends E> receiveChannel, Continuation<? super C10011> continuation) {
            super(2, continuation);
            this.$n = i;
            this.$this_take = receiveChannel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10011 c10011 = new C10011(this.$n, this.$this_take, continuation);
            c10011.L$0 = obj;
            return c10011;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C10011) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C10011.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static ReceiveChannel take$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return take(receiveChannel, i, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel take(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C10011(i, receiveChannel, null), 6, null);
    }

    public static ReceiveChannel takeWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return takeWhile(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {299, 300, 301}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", JWKParameterNames.RSA_EXPONENT, "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    static final class C10021<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final Function2<E, Continuation<? super Boolean>, Object> $predicate;
        final ReceiveChannel<E> $this_takeWhile;
        private Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C10021(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super C10021> continuation) {
            super(2, continuation);
            this.$this_takeWhile = receiveChannel;
            this.$predicate = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10021 c10021 = new C10021(this.$this_takeWhile, this.$predicate, continuation);
            c10021.L$0 = obj;
            return c10021;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C10021) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C10021.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel takeWhile(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C10021(receiveChannel, function2, null), 6, null);
    }

    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object toChannel(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r7, C r8, kotlin.coroutines.Continuation<? super C> r9) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.toChannel(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object toCollection(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r6, C r7, kotlin.coroutines.Continuation<? super C> r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.toCollection(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object toMap(kotlinx.coroutines.channels.ReceiveChannel<? extends kotlin.Pair<? extends K, ? extends V>> r7, M r8, kotlin.coroutines.Continuation<? super M> r9) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.toMap(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static ReceiveChannel flatMap$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return flatMap(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {351, 352, 352}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    static final class C09881<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        final ReceiveChannel<E> $this_flatMap;
        final Function2<E, Continuation<? super ReceiveChannel<? extends R>>, Object> $transform;
        private Object L$0;
        Object L$1;
        int label;

        C09881(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super ReceiveChannel<? extends R>>, ? extends Object> function2, Continuation<? super C09881> continuation) {
            super(2, continuation);
            this.$this_flatMap = receiveChannel;
            this.$transform = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09881 c09881 = new C09881(this.$this_flatMap, this.$transform, continuation);
            c09881.L$0 = obj;
            return c09881;
        }

        @Override
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((C09881) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09881.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel flatMap(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09881(receiveChannel, function2, null), 6, null);
    }

    public static ReceiveChannel map$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.map(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {SyslogConstants.SYSLOG_PORT, 363, 363}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
    static final class C09931<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        final ReceiveChannel<E> $this_map;
        final Function2<E, Continuation<? super R>, Object> $transform;
        private Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        C09931(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super C09931> continuation) {
            super(2, continuation);
            this.$this_map = receiveChannel;
            this.$transform = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09931 c09931 = new C09931(this.$this_map, this.$transform, continuation);
            c09931.L$0 = obj;
            return c09931;
        }

        @Override
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((C09931) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09931.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <E, R> ReceiveChannel<R> map(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09931(receiveChannel, function2, null), 6, null);
    }

    public static ReceiveChannel mapIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {374, 375, 375}, m = "invokeSuspend", n = {"$this$produce", FirebaseAnalytics.Param.INDEX, "$this$produce", FirebaseAnalytics.Param.INDEX, "$this$produce", FirebaseAnalytics.Param.INDEX}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
    static final class C09941<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
        final ReceiveChannel<E> $this_mapIndexed;
        final Function3<Integer, E, Continuation<? super R>, Object> $transform;
        int I$0;
        private Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C09941(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super C09941> continuation) {
            super(2, continuation);
            this.$this_mapIndexed = receiveChannel;
            this.$transform = function3;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09941 c09941 = new C09941(this.$this_mapIndexed, this.$transform, continuation);
            c09941.L$0 = obj;
            return c09941;
        }

        @Override
        public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
            return ((C09941) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09941.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <E, R> ReceiveChannel<R> mapIndexed(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09941(receiveChannel, function3, null), 6, null);
    }

    public static ReceiveChannel mapIndexedNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapIndexedNotNull(receiveChannel, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel mapIndexedNotNull(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3) {
        return ChannelsKt.filterNotNull(ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3));
    }

    public static ReceiveChannel mapNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapNotNull(receiveChannel, coroutineContext, function2);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel mapNotNull(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ChannelsKt.filterNotNull(ChannelsKt.map(receiveChannel, coroutineContext, function2));
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlin/collections/IndexedValue;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {400, TypedValues.CycleType.TYPE_CURVE_FIT}, m = "invokeSuspend", n = {"$this$produce", FirebaseAnalytics.Param.INDEX, "$this$produce", FirebaseAnalytics.Param.INDEX}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class C10051<E> extends SuspendLambda implements Function2<ProducerScope<? super IndexedValue<? extends E>>, Continuation<? super Unit>, Object> {
        final ReceiveChannel<E> $this_withIndex;
        int I$0;
        private Object L$0;
        Object L$1;
        int label;

        C10051(ReceiveChannel<? extends E> receiveChannel, Continuation<? super C10051> continuation) {
            super(2, continuation);
            this.$this_withIndex = receiveChannel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10051 c10051 = new C10051(this.$this_withIndex, continuation);
            c10051.L$0 = obj;
            return c10051;
        }

        @Override
        public final Object invoke(ProducerScope<? super IndexedValue<? extends E>> producerScope, Continuation<? super Unit> continuation) {
            return ((C10051) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C10051.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static ReceiveChannel withIndex$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return withIndex(receiveChannel, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel withIndex(ReceiveChannel receiveChannel, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C10051(receiveChannel, null), 6, null);
    }

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n"}, d2 = {"<anonymous>", ExifInterface.LONGITUDE_EAST, "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C09751<E> extends SuspendLambda implements Function2<E, Continuation<? super E>, Object> {
        Object L$0;
        int label;

        C09751(Continuation<? super C09751> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09751 c09751 = new C09751(continuation);
            c09751.L$0 = obj;
            return c09751;
        }

        @Override
        public final Object invoke(E e, Continuation<? super E> continuation) {
            return ((C09751) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return this.L$0;
        }
    }

    public static ReceiveChannel distinctBy$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.distinctBy(receiveChannel, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {417, 418, TypedValues.CycleType.TYPE_EASING}, m = "invokeSuspend", n = {"$this$produce", UserMetadata.KEYDATA_FILENAME, "$this$produce", UserMetadata.KEYDATA_FILENAME, JWKParameterNames.RSA_EXPONENT, "$this$produce", UserMetadata.KEYDATA_FILENAME, JWKParameterNames.OCT_KEY_VALUE}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
    static final class C09761<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
        final Function2<E, Continuation<? super K>, Object> $selector;
        final ReceiveChannel<E> $this_distinctBy;
        private Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        C09761(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2, Continuation<? super C09761> continuation) {
            super(2, continuation);
            this.$this_distinctBy = receiveChannel;
            this.$selector = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09761 c09761 = new C09761(this.$this_distinctBy, this.$selector, continuation);
            c09761.L$0 = obj;
            return c09761;
        }

        @Override
        public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
            return ((C09761) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C09761.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <E, K> ReceiveChannel<E> distinctBy(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumes(receiveChannel), new C09761(receiveChannel, function2, null), 6, null);
    }

    public static final <E> Object toMutableSet(ReceiveChannel<? extends E> receiveChannel, Continuation<? super Set<E>> continuation) {
        return ChannelsKt.toCollection(receiveChannel, new LinkedHashSet(), continuation);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final Object any(ReceiveChannel receiveChannel, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objHasNext = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objHasNext);
                ChannelIterator it = receiveChannel.iterator();
                anonymousClass1.L$0 = receiveChannel;
                anonymousClass1.label = 1;
                objHasNext = it.hasNext(anonymousClass1);
                if (objHasNext == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                receiveChannel = (ReceiveChannel) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objHasNext);
            }
            ChannelsKt.cancelConsumed(receiveChannel, null);
            return objHasNext;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ChannelsKt.cancelConsumed(receiveChannel, th);
                throw th2;
            }
        }
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object count(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.coroutines.Continuation r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.count(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object maxWith(kotlinx.coroutines.channels.ReceiveChannel r8, java.util.Comparator r9, kotlin.coroutines.Continuation r10) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.maxWith(kotlinx.coroutines.channels.ReceiveChannel, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final java.lang.Object minWith(kotlinx.coroutines.channels.ReceiveChannel r8, java.util.Comparator r9, kotlin.coroutines.Continuation r10) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.minWith(kotlinx.coroutines.channels.ReceiveChannel, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final Object none(ReceiveChannel receiveChannel, Continuation continuation) {
        C09971 c09971;
        if (continuation instanceof C09971) {
            c09971 = (C09971) continuation;
            if ((c09971.label & Integer.MIN_VALUE) != 0) {
                c09971.label -= Integer.MIN_VALUE;
            } else {
                c09971 = new C09971(continuation);
            }
        } else {
            c09971 = new C09971(continuation);
        }
        Object objHasNext = c09971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c09971.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objHasNext);
                ChannelIterator it = receiveChannel.iterator();
                c09971.L$0 = receiveChannel;
                c09971.label = 1;
                objHasNext = it.hasNext(c09971);
                if (objHasNext == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                receiveChannel = (ReceiveChannel) c09971.L$0;
                ResultKt.throwOnFailure(objHasNext);
            }
            Boolean boolBoxBoolean = Boxing.boxBoolean(!((Boolean) objHasNext).booleanValue());
            ChannelsKt.cancelConsumed(receiveChannel, null);
            return boolBoxBoolean;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ChannelsKt.cancelConsumed(receiveChannel, th);
                throw th2;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\n"}, d2 = {"<anonymous>", ExifInterface.LONGITUDE_EAST, "", "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C09981<E> extends SuspendLambda implements Function2<E, Continuation<? super E>, Object> {
        final ReceiveChannel<E> $this_requireNoNulls;
        Object L$0;
        int label;

        C09981(ReceiveChannel<? extends E> receiveChannel, Continuation<? super C09981> continuation) {
            super(2, continuation);
            this.$this_requireNoNulls = receiveChannel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C09981 c09981 = new C09981(this.$this_requireNoNulls, continuation);
            c09981.L$0 = obj;
            return c09981;
        }

        @Override
        public final Object invoke(E e, Continuation<? super E> continuation) {
            return ((C09981) create(e, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.L$0;
            if (obj2 != null) {
                return obj2;
            }
            throw new IllegalArgumentException("null element found in " + this.$this_requireNoNulls + CoreConstants.DOT);
        }
    }

    public static ReceiveChannel zip$default(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.zip(receiveChannel, receiveChannel2, coroutineContext, function2);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {SyslogConstants.SYSLOG_PORT, TSLocationManager.LOCATION_ERROR_CANCELLED, TypedValues.PositionType.TYPE_TRANSITION_EASING}, m = "invokeSuspend", n = {"$this$produce", "otherIterator", "$this$consume$iv$iv", "$this$produce", "otherIterator", "$this$consume$iv$iv", "element1", "$this$produce", "otherIterator", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$5", "L$0", "L$1", "L$3"})
    static final class C10062<V> extends SuspendLambda implements Function2<ProducerScope<? super V>, Continuation<? super Unit>, Object> {
        final ReceiveChannel<R> $other;
        final ReceiveChannel<E> $this_zip;
        final Function2<E, R, V> $transform;
        private Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        C10062(ReceiveChannel<? extends R> receiveChannel, ReceiveChannel<? extends E> receiveChannel2, Function2<? super E, ? super R, ? extends V> function2, Continuation<? super C10062> continuation) {
            super(2, continuation);
            this.$other = receiveChannel;
            this.$this_zip = receiveChannel2;
            this.$transform = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10062 c10062 = new C10062(this.$other, this.$this_zip, this.$transform, continuation);
            c10062.L$0 = obj;
            return c10062;
        }

        @Override
        public final Object invoke(ProducerScope<? super V> producerScope, Continuation<? super Unit> continuation) {
            return ((C10062) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C10062.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <E, R, V> ReceiveChannel<V> zip(ReceiveChannel<? extends E> receiveChannel, ReceiveChannel<? extends R> receiveChannel2, CoroutineContext coroutineContext, Function2<? super E, ? super R, ? extends V> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, ChannelsKt.consumesAll(receiveChannel, receiveChannel2), new C10062(receiveChannel2, receiveChannel, function2, null), 6, null);
    }

    public static final Function1<Throwable, Unit> consumes(final ReceiveChannel<?> receiveChannel) {
        return new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ChannelsKt__DeprecatedKt.consumes$lambda$24$ChannelsKt__DeprecatedKt(receiveChannel, (Throwable) obj);
            }
        };
    }

    public static final Unit consumes$lambda$24$ChannelsKt__DeprecatedKt(ReceiveChannel receiveChannel, Throwable th) {
        ChannelsKt.cancelConsumed(receiveChannel, th);
        return Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    private static final <E> Object consumeEach$$forInline(BroadcastChannel<E> broadcastChannel, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) {
        ReceiveChannel<E> receiveChannelOpenSubscription = broadcastChannel.openSubscription();
        try {
            ReceiveChannel<E> receiveChannel = receiveChannelOpenSubscription;
            ChannelIterator<E> it = receiveChannelOpenSubscription.iterator();
            while (((Boolean) it.hasNext(null)).booleanValue()) {
                function1.invoke(it.next());
            }
            Unit unit = Unit.INSTANCE;
            return Unit.INSTANCE;
        } finally {
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) receiveChannelOpenSubscription, (CancellationException) null, 1, (Object) null);
        }
    }
}
