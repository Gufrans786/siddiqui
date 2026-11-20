package com.mapbox.maps.module.telemetry;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.facebook.react.uimanager.ViewProps;
import com.google.gson.Gson;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.common.Event;
import com.mapbox.common.EventPriority;
import com.mapbox.common.EventsServerOptions;
import com.mapbox.common.EventsService;
import com.mapbox.common.EventsServiceInterface;
import com.mapbox.common.EventsServiceResponseCallback;
import com.mapbox.common.SdkInformation;
import com.mapbox.common.TelemetryCollectionState;
import com.mapbox.common.TelemetryService;
import com.mapbox.common.TelemetryUtils;
import com.mapbox.common.TelemetryUtilsResponseCallback;
import com.mapbox.common.TurnstileEvent;
import com.mapbox.common.UserSKUIdentifier;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.module.MapTelemetry;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B/\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u0012H\u0002J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u001f\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/mapbox/maps/module/telemetry/MapTelemetryImpl;", "Lcom/mapbox/maps/module/MapTelemetry;", "appContext", "Landroid/content/Context;", "(Landroid/content/Context;)V", "eventsService", "Lcom/mapbox/common/EventsServiceInterface;", "telemetryService", "Lcom/mapbox/common/TelemetryService;", "eventsServerOptions", "Lcom/mapbox/common/EventsServerOptions;", "defaultCoroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Landroid/content/Context;Lcom/mapbox/common/EventsServiceInterface;Lcom/mapbox/common/TelemetryService;Lcom/mapbox/common/EventsServerOptions;Lkotlinx/coroutines/CoroutineDispatcher;)V", "bgScope", "Lkotlinx/coroutines/CoroutineScope;", "eventsServiceOptions", "disableTelemetrySession", "", "enableTelemetryCollection", ViewProps.ENABLED, "", "onAppUserTurnstileEvent", "onPerformanceEvent", "data", "Landroid/os/Bundle;", "sendEvent", NotificationCompat.CATEGORY_EVENT, "", "sendMapLoadEvent", "setUserTelemetryRequestState", "shouldSendEvents", "Companion", "module-telemetry_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapTelemetryImpl implements MapTelemetry {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "MapTelemetryImpl";
    private final Context appContext;
    private final CoroutineScope bgScope;
    private final EventsServiceInterface eventsService;
    private final EventsServerOptions eventsServiceOptions;
    private final TelemetryService telemetryService;

    public MapTelemetryImpl(Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
        EventsServerOptions eventsServerOptions = new EventsServerOptions(new SdkInformation(com.mapbox.maps.base.BuildConfig.MAPBOX_SDK_IDENTIFIER, com.mapbox.maps.base.BuildConfig.MAPBOX_SDK_VERSION, null), null);
        this.eventsServiceOptions = eventsServerOptions;
        EventsService orCreate = EventsService.getOrCreate(eventsServerOptions);
        Intrinsics.checkNotNullExpressionValue(orCreate, "getOrCreate(eventsServiceOptions)");
        this.eventsService = orCreate;
        TelemetryService orCreate2 = TelemetryService.getOrCreate();
        Intrinsics.checkNotNullExpressionValue(orCreate2, "getOrCreate()");
        this.telemetryService = orCreate2;
        this.bgScope = CoroutineScopeKt.CoroutineScope(new CoroutineName(TAG).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(Dispatchers.getIO()));
    }

    public MapTelemetryImpl(Context appContext, EventsServiceInterface eventsService, TelemetryService telemetryService, EventsServerOptions eventsServerOptions, CoroutineDispatcher defaultCoroutineDispatcher) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(eventsService, "eventsService");
        Intrinsics.checkNotNullParameter(telemetryService, "telemetryService");
        Intrinsics.checkNotNullParameter(eventsServerOptions, "eventsServerOptions");
        Intrinsics.checkNotNullParameter(defaultCoroutineDispatcher, "defaultCoroutineDispatcher");
        this.appContext = appContext;
        this.eventsService = eventsService;
        this.telemetryService = telemetryService;
        this.eventsServiceOptions = eventsServerOptions;
        this.bgScope = CoroutineScopeKt.CoroutineScope(new CoroutineName(TAG).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(defaultCoroutineDispatcher));
    }

    @Override
    public void onAppUserTurnstileEvent() {
        this.eventsService.sendTurnstileEvent(new TurnstileEvent(UserSKUIdentifier.MAPS_MAUS), new EventsServiceResponseCallback() {
            @Override
            public final void run(Expected expected) {
                MapTelemetryImpl.onAppUserTurnstileEvent$lambda$0(expected);
            }
        });
        if (shouldSendEvents()) {
            sendMapLoadEvent();
        }
    }

    public static final void onAppUserTurnstileEvent$lambda$0(Expected response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isError()) {
            MapboxLogger.logE(TAG, "sendTurnstileEvent error: " + response.getError());
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.module.telemetry.MapTelemetryImpl$sendMapLoadEvent$1", f = "MapTelemetryImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MapTelemetryImpl.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                try {
                    MapLoadEvent mapLoadEventBuildMapLoadEvent = MapEventFactory.INSTANCE.buildMapLoadEvent(new PhoneState(MapTelemetryImpl.this.appContext));
                    MapTelemetryImpl mapTelemetryImpl = MapTelemetryImpl.this;
                    String json = new Gson().toJson(mapLoadEventBuildMapLoadEvent);
                    Intrinsics.checkNotNullExpressionValue(json, "Gson().toJson(mapLoadEvent)");
                    mapTelemetryImpl.sendEvent(json);
                } catch (Throwable th) {
                    MapboxLogger.logW(MapTelemetryImpl.TAG, "sendMapLoadEvent error: " + th);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void sendMapLoadEvent() {
        BuildersKt__Builders_commonKt.launch$default(this.bgScope, null, null, new AnonymousClass1(null), 3, null);
    }

    private final boolean shouldSendEvents() {
        return TelemetryUtils.getClientServerEventsCollectionState() != TelemetryCollectionState.TURNSTILE_EVENTS_ONLY;
    }

    public final void sendEvent(String event) {
        Expected<String, Value> expectedFromJson = Value.fromJson(event);
        Intrinsics.checkNotNullExpressionValue(expectedFromJson, "fromJson(event)");
        Value value = expectedFromJson.getValue();
        Event event2 = value != null ? new Event(EventPriority.QUEUED, value, null) : null;
        if (event2 != null) {
            this.eventsService.sendEvent(event2, new EventsServiceResponseCallback() {
                @Override
                public final void run(Expected expected) {
                    MapTelemetryImpl.sendEvent$lambda$2(expected);
                }
            });
        }
    }

    public static final void sendEvent$lambda$2(Expected response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isError()) {
            MapboxLogger.logE(TAG, "sendEvent error: " + response.getError());
        }
    }

    private final void enableTelemetryCollection(boolean enabled) {
        TelemetryUtils.setEventsCollectionState(enabled, new TelemetryUtilsResponseCallback() {
            @Override
            public final void run(Expected expected) {
                MapTelemetryImpl.enableTelemetryCollection$lambda$3(expected);
            }
        });
    }

    public static final void enableTelemetryCollection$lambda$3(Expected response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isError()) {
            MapboxLogger.logE(TAG, "setEventsCollectionState error: " + response.getError());
        }
    }

    @Override
    public void setUserTelemetryRequestState(boolean enabled) {
        enableTelemetryCollection(enabled);
    }

    @Override
    public void disableTelemetrySession() {
        enableTelemetryCollection(false);
    }

    @Override
    public void onPerformanceEvent(Bundle data) {
        if (shouldSendEvents()) {
            MapEventFactory mapEventFactory = MapEventFactory.INSTANCE;
            PhoneState phoneState = new PhoneState(this.appContext);
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            if (data == null) {
                data = new Bundle();
            }
            String json = new Gson().toJson(mapEventFactory.buildPerformanceEvent(phoneState, string, data));
            Intrinsics.checkNotNullExpressionValue(json, "Gson().toJson(performanceEvent)");
            sendEvent(json);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/module/telemetry/MapTelemetryImpl$Companion;", "", "()V", "TAG", "", "module-telemetry_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
