package com.mapbox.maps.plugin.locationcomponent;

import android.animation.ValueAnimator;
import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ItemTouchHelper;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.joran.action.Action;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.Cancelable;
import com.mapbox.common.location.AccuracyLevel;
import com.mapbox.common.location.DeviceLocationProvider;
import com.mapbox.common.location.IntervalSettings;
import com.mapbox.common.location.Location;
import com.mapbox.common.location.LocationError;
import com.mapbox.common.location.LocationErrorCode;
import com.mapbox.common.location.LocationObserver;
import com.mapbox.common.location.LocationProviderRequest;
import com.mapbox.common.location.LocationService;
import com.mapbox.common.location.LocationServiceFactory;
import com.mapbox.geojson.Point;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.plugin.PuckBearing;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlowKt;

@Metadata(d1 = {"\u0000\u0089\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001.\u0018\u0000 32\u00020\u0001:\u00013B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B'\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0016H\u0002J!\u0010&\u001a\u00020\u000f2\u0019\u0010'\u001a\u0015\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r¢\u0006\u0002\b\u0010J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u0016H\u0017J\u000e\u0010)\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020#J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u0016H\u0016J\u0010\u0010+\u001a\u00020\u000f2\b\u0010,\u001a\u0004\u0018\u00010\u001eJ!\u0010-\u001a\u00020.*\b\u0012\u0004\u0012\u00020\u001b0/2\b\u00100\u001a\u0004\u0018\u000101H\u0002¢\u0006\u0002\u00102R!\u0010\f\u001a\u0015\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r¢\u0006\u0002\b\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/DefaultLocationProvider;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "locationCompassEngine", "Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassEngine;", "locationService", "Lcom/mapbox/common/location/LocationService;", "mainCoroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Landroid/content/Context;Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassEngine;Lcom/mapbox/common/location/LocationService;Lkotlinx/coroutines/CoroutineDispatcher;)V", "_locationAnimatorOptions", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "", "Lkotlin/ExtensionFunctionType;", "deviceOrientationFlow", "Lkotlinx/coroutines/flow/Flow;", "", "locationConsumersJobs", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;", "Lkotlinx/coroutines/Job;", "locationProviderNotAvailable", "Lcom/mapbox/common/location/LocationError;", "locationUpdatesFlow", "Lcom/mapbox/common/location/Location;", "puckBearingFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/mapbox/maps/plugin/PuckBearing;", Action.SCOPE_ATTRIBUTE, "Lkotlinx/coroutines/CoroutineScope;", "addOnCompassCalibrationListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassCalibrationListener;", "collectLocationFlow", "locationConsumer", "locationAnimatorOptions", "options", "registerLocationConsumer", "removeCompassCalibrationListener", "unRegisterLocationConsumer", "updatePuckBearing", "source", "locationObserver", "com/mapbox/maps/plugin/locationcomponent/DefaultLocationProvider$locationObserver$1", "Lkotlinx/coroutines/channels/ProducerScope;", "lastLocationCancelable", "Lcom/mapbox/common/Cancelable;", "(Lkotlinx/coroutines/channels/ProducerScope;Lcom/mapbox/common/Cancelable;)Lcom/mapbox/maps/plugin/locationcomponent/DefaultLocationProvider$locationObserver$1;", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DefaultLocationProvider implements LocationProvider {

    public static final Companion INSTANCE = new Companion(null);
    public static final long INIT_UPDATE_DELAY = 500;
    public static final String LIVE_TRACKING_CLIENT_NOT_AVAILABLE = "LiveTrackingClient not available";
    public static final long MAX_UPDATE_DELAY = 5000;
    private static final String MISSING_PERMISSION_MSG = "Missing location permission, location component will not take effect before location permission is granted.";
    private static final String TAG = "MapboxLocationProvider";
    private Function1<? super ValueAnimator, Unit> _locationAnimatorOptions;
    private final Flow<Double> deviceOrientationFlow;
    private final LocationCompassEngine locationCompassEngine;
    private final ConcurrentHashMap<LocationConsumer, Job> locationConsumersJobs;
    private LocationError locationProviderNotAvailable;
    private final Flow<Location> locationUpdatesFlow;
    private final CoroutineDispatcher mainCoroutineDispatcher;
    private final MutableStateFlow<PuckBearing> puckBearingFlow;
    private final CoroutineScope scope;

    public DefaultLocationProvider(Context context, LocationCompassEngine locationCompassEngine, LocationService locationService, CoroutineDispatcher mainCoroutineDispatcher) {
        SharedFlow sharedFlowEmptyFlow;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(locationCompassEngine, "locationCompassEngine");
        Intrinsics.checkNotNullParameter(locationService, "locationService");
        Intrinsics.checkNotNullParameter(mainCoroutineDispatcher, "mainCoroutineDispatcher");
        this.locationCompassEngine = locationCompassEngine;
        this.mainCoroutineDispatcher = mainCoroutineDispatcher;
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(mainCoroutineDispatcher));
        this.scope = CoroutineScope;
        this.puckBearingFlow = StateFlowKt.MutableStateFlow(PuckBearing.COURSE);
        this.deviceOrientationFlow = FlowKt.shareIn(FlowKt.callbackFlow(new DefaultLocationProvider$deviceOrientationFlow$1(this, null)), CoroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 0L, 0L, 1, null), 1);
        this.locationConsumersJobs = new ConcurrentHashMap<>();
        Expected<LocationError, DeviceLocationProvider> deviceLocationProvider = locationService.getDeviceLocationProvider(new LocationProviderRequest.Builder().accuracy(AccuracyLevel.HIGH).interval(new IntervalSettings.Builder().minimumInterval(1000L).interval(1000L).build()).displacement(Float.valueOf(0.1f)).build());
        if (deviceLocationProvider.isValue()) {
            Context applicationContext = context.getApplicationContext();
            DeviceLocationProvider value = deviceLocationProvider.getValue();
            Intrinsics.checkNotNull(value);
            sharedFlowEmptyFlow = FlowKt.shareIn(FlowKt.callbackFlow(new AnonymousClass1(applicationContext, value, this, null)), CoroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 0L, 0L, 1, null), 1);
        } else {
            LocationError error = deviceLocationProvider.getError();
            Intrinsics.checkNotNull(error);
            MapboxLogger.logE(TAG, "LocationService error: " + error);
            this.locationProviderNotAvailable = new LocationError(LocationErrorCode.NOT_AVAILABLE, LIVE_TRACKING_CLIENT_NOT_AVAILABLE);
            sharedFlowEmptyFlow = FlowKt.emptyFlow();
        }
        this.locationUpdatesFlow = sharedFlowEmptyFlow;
    }

    public DefaultLocationProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        LocationCompassEngine locationCompassEngine = new LocationCompassEngine(applicationContext);
        LocationService orCreate = LocationServiceFactory.getOrCreate();
        Intrinsics.checkNotNullExpressionValue(orCreate, "getOrCreate()");
        this(context, locationCompassEngine, orCreate, Dispatchers.getMain().getImmediate());
    }

    public final void locationAnimatorOptions(Function1<? super ValueAnimator, Unit> options) {
        this._locationAnimatorOptions = options;
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/mapbox/common/location/Location;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$1", f = "DefaultLocationProvider.kt", i = {0, 0}, l = {131, 144}, m = "invokeSuspend", n = {"$this$callbackFlow", "updateDelay"}, s = {"L$0", "J$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<ProducerScope<? super Location>, Continuation<? super Unit>, Object> {
        final Context $applicationContext;
        final DeviceLocationProvider $locationProvider;
        long J$0;
        private Object L$0;
        int label;
        final DefaultLocationProvider this$0;

        AnonymousClass1(Context context, DeviceLocationProvider deviceLocationProvider, DefaultLocationProvider defaultLocationProvider, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$applicationContext = context;
            this.$locationProvider = deviceLocationProvider;
            this.this$0 = defaultLocationProvider;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$applicationContext, this.$locationProvider, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(ProducerScope<? super Location> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            throw new UnsupportedOperationException("Method not decompiled: com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        public static final void invokeSuspend$lambda$1(ProducerScope producerScope, Location location) {
            if (location != null) {
                producerScope.mo2971trySendJP2dKIU(location);
            }
        }
    }

    public final C08291 locationObserver(ProducerScope<? super Location> producerScope, Cancelable cancelable) {
        return new LocationObserver(producerScope) {
            final ProducerScope<Location> $this_locationObserver;
            private boolean lastLocationCanBeCanceled;

            {
                this.$this_locationObserver = producerScope;
                this.lastLocationCanBeCanceled = this.$lastLocationCancelable != null;
            }

            public final boolean getLastLocationCanBeCanceled() {
                return this.lastLocationCanBeCanceled;
            }

            public final void setLastLocationCanBeCanceled(boolean z) {
                this.lastLocationCanBeCanceled = z;
            }

            @Override
            public void onLocationUpdateReceived(List<? extends Location> locations) {
                Intrinsics.checkNotNullParameter(locations, "locations");
                if (this.lastLocationCanBeCanceled) {
                    Cancelable cancelable2 = this.$lastLocationCancelable;
                    if (cancelable2 != null) {
                        cancelable2.cancel();
                    }
                    this.lastLocationCanBeCanceled = false;
                }
                ChannelsKt.trySendBlocking(this.$this_locationObserver, CollectionsKt.last((List) locations));
            }
        };
    }

    public final void updatePuckBearing(PuckBearing source) {
        this.puckBearingFlow.setValue(source);
    }

    @Override
    public void registerLocationConsumer(LocationConsumer locationConsumer) {
        Intrinsics.checkNotNullParameter(locationConsumer, "locationConsumer");
        LocationError locationError = this.locationProviderNotAvailable;
        if (locationError != null) {
            Intrinsics.checkNotNull(locationError);
            locationConsumer.onError(locationError);
        } else {
            Job jobPut = this.locationConsumersJobs.put(locationConsumer, collectLocationFlow(locationConsumer));
            if (jobPut != null) {
                Job.DefaultImpls.cancel$default(jobPut, (CancellationException) null, 1, (Object) null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1", f = "DefaultLocationProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C08281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final LocationConsumer $locationConsumer;
        private Object L$0;
        int label;

        C08281(LocationConsumer locationConsumer, Continuation<? super C08281> continuation) {
            super(2, continuation);
            this.$locationConsumer = locationConsumer;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08281 c08281 = DefaultLocationProvider.this.new C08281(this.$locationConsumer, continuation);
            c08281.L$0 = obj;
            return c08281;
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Flow flow = DefaultLocationProvider.this.locationUpdatesFlow;
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C00481(flow, this.$locationConsumer, DefaultLocationProvider.this, null), 3, null);
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass2(DefaultLocationProvider.this, flow, this.$locationConsumer, null), 3, null);
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass3(flow, this.$locationConsumer, null), 3, null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
        @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1$1", f = "DefaultLocationProvider.kt", i = {}, l = {232}, m = "invokeSuspend", n = {}, s = {})
        static final class C00481 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final LocationConsumer $locationConsumer;
            final Flow<Location> $locationFlow;
            int label;
            final DefaultLocationProvider this$0;

            C00481(Flow<? extends Location> flow, LocationConsumer locationConsumer, DefaultLocationProvider defaultLocationProvider, Continuation<? super C00481> continuation) {
                super(2, continuation);
                this.$locationFlow = flow;
                this.$locationConsumer = locationConsumer;
                this.this$0 = defaultLocationProvider;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00481(this.$locationFlow, this.$locationConsumer, this.this$0, continuation);
            }

            @Override
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00481) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    final Flow<Location> flow = this.$locationFlow;
                    Flow<Point> flow2 = new Flow<Point>() {

                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
                        public static final class AnonymousClass2<T> implements FlowCollector, SuspendFunction {
                            final FlowCollector $this_unsafeFlow;

                            @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                            @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1$1$invokeSuspend$$inlined$map$1$2", f = "DefaultLocationProvider.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                            public static final class AnonymousClass1 extends ContinuationImpl {
                                Object L$0;
                                int label;
                                Object result;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override
                                public final Object invokeSuspend(Object obj) {
                                    this.result = obj;
                                    this.label |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.$this_unsafeFlow = flowCollector;
                            }

                            @Override
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                Point pointFromLngLat;
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
                                Object obj2 = anonymousClass1.result;
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                int i = anonymousClass1.label;
                                if (i == 0) {
                                    ResultKt.throwOnFailure(obj2);
                                    FlowCollector flowCollector = this.$this_unsafeFlow;
                                    Location location = (Location) obj;
                                    if (location.getAltitude() != null) {
                                        double longitude = location.getLongitude();
                                        double latitude = location.getLatitude();
                                        Double altitude = location.getAltitude();
                                        Intrinsics.checkNotNull(altitude);
                                        pointFromLngLat = Point.fromLngLat(longitude, latitude, altitude.doubleValue());
                                        if (pointFromLngLat == null) {
                                            pointFromLngLat = Point.fromLngLat(location.getLongitude(), location.getLatitude());
                                        }
                                    } else {
                                        pointFromLngLat = Point.fromLngLat(location.getLongitude(), location.getLatitude());
                                    }
                                    anonymousClass1.label = 1;
                                    if (flowCollector.emit(pointFromLngLat, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                } else {
                                    if (i != 1) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    ResultKt.throwOnFailure(obj2);
                                }
                                return Unit.INSTANCE;
                            }
                        }

                        @Override
                        public Object collect(FlowCollector<? super Point> flowCollector, Continuation continuation) {
                            Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                            return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                        }
                    };
                    final LocationConsumer locationConsumer = this.$locationConsumer;
                    final DefaultLocationProvider defaultLocationProvider = this.this$0;
                    this.label = 1;
                    if (flow2.collect(new FlowCollector() {
                        @Override
                        public Object emit(Object obj2, Continuation continuation) {
                            return emit((Point) obj2, (Continuation<? super Unit>) continuation);
                        }

                        public final Object emit(Point it, Continuation<? super Unit> continuation) {
                            LocationConsumer locationConsumer2 = locationConsumer;
                            Intrinsics.checkNotNullExpressionValue(it, "it");
                            locationConsumer2.onLocationUpdated(new Point[]{it}, defaultLocationProvider._locationAnimatorOptions);
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
        @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1$2", f = "DefaultLocationProvider.kt", i = {}, l = {ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final LocationConsumer $locationConsumer;
            final Flow<Location> $locationFlow;
            int label;
            final DefaultLocationProvider this$0;

            @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
            public class WhenMappings {
                public static final int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[PuckBearing.values().length];
                    try {
                        iArr[PuckBearing.HEADING.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[PuckBearing.COURSE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            AnonymousClass2(DefaultLocationProvider defaultLocationProvider, Flow<? extends Location> flow, LocationConsumer locationConsumer, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = defaultLocationProvider;
                this.$locationFlow = flow;
                this.$locationConsumer = locationConsumer;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, this.$locationFlow, this.$locationConsumer, continuation);
            }

            @Override
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Flow flowTransformLatest = FlowKt.transformLatest(this.this$0.puckBearingFlow, new DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1(null, this.this$0, this.$locationFlow));
                    final LocationConsumer locationConsumer = this.$locationConsumer;
                    this.label = 1;
                    if (flowTransformLatest.collect(new FlowCollector() {
                        @Override
                        public Object emit(Object obj2, Continuation continuation) {
                            return emit(((Number) obj2).doubleValue(), (Continuation<? super Unit>) continuation);
                        }

                        public final Object emit(double d, Continuation<? super Unit> continuation) {
                            LocationConsumer.DefaultImpls.onBearingUpdated$default(locationConsumer, new double[]{d}, null, 2, null);
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
        @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1$3", f = "DefaultLocationProvider.kt", i = {}, l = {257}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final LocationConsumer $locationConsumer;
            final Flow<Location> $locationFlow;
            int label;

            AnonymousClass3(Flow<? extends Location> flow, LocationConsumer locationConsumer, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$locationFlow = flow;
                this.$locationConsumer = locationConsumer;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass3(this.$locationFlow, this.$locationConsumer, continuation);
            }

            @Override
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Flow<Location> flow = this.$locationFlow;
                    final LocationConsumer locationConsumer = this.$locationConsumer;
                    this.label = 1;
                    if (flow.collect(new FlowCollector() {
                        @Override
                        public Object emit(Object obj2, Continuation continuation) {
                            return emit((Location) obj2, (Continuation<? super Unit>) continuation);
                        }

                        public final Object emit(Location location, Continuation<? super Unit> continuation) {
                            Double horizontalAccuracy = location.getHorizontalAccuracy();
                            if (horizontalAccuracy != null) {
                                LocationConsumer.DefaultImpls.onHorizontalAccuracyRadiusUpdated$default(locationConsumer, new double[]{horizontalAccuracy.doubleValue()}, null, 2, null);
                            }
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }
    }

    private final Job collectLocationFlow(LocationConsumer locationConsumer) {
        return BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(JobKt__JobKt.Job$default((Job) null, 1, (Object) null).plus(this.mainCoroutineDispatcher)), null, null, new C08281(locationConsumer, null), 3, null);
    }

    @Override
    public void unRegisterLocationConsumer(LocationConsumer locationConsumer) {
        Intrinsics.checkNotNullParameter(locationConsumer, "locationConsumer");
        Job jobRemove = this.locationConsumersJobs.remove(locationConsumer);
        if (jobRemove != null) {
            Job.DefaultImpls.cancel$default(jobRemove, (CancellationException) null, 1, (Object) null);
        }
    }

    public final void addOnCompassCalibrationListener(LocationCompassCalibrationListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.locationCompassEngine.addCalibrationListener(listener);
    }

    public final void removeCompassCalibrationListener(LocationCompassCalibrationListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.locationCompassEngine.removeCalibrationListener(listener);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0081\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u0016\u0010\u0006\u001a\u00020\u00078\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0002R\u0016\u0010\t\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0002R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/DefaultLocationProvider$Companion;", "", "()V", "INIT_UPDATE_DELAY", "", "getINIT_UPDATE_DELAY$plugin_locationcomponent_release$annotations", "LIVE_TRACKING_CLIENT_NOT_AVAILABLE", "", "getLIVE_TRACKING_CLIENT_NOT_AVAILABLE$plugin_locationcomponent_release$annotations", "MAX_UPDATE_DELAY", "getMAX_UPDATE_DELAY$plugin_locationcomponent_release$annotations", "MISSING_PERMISSION_MSG", "TAG", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getINIT_UPDATE_DELAY$plugin_locationcomponent_release$annotations() {
        }

        public static void getLIVE_TRACKING_CLIENT_NOT_AVAILABLE$plugin_locationcomponent_release$annotations() {
        }

        public static void getMAX_UPDATE_DELAY$plugin_locationcomponent_release$annotations() {
        }

        private Companion() {
        }
    }
}
