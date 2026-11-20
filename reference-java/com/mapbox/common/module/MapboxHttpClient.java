package com.mapbox.common.module;

import android.content.Context;
import android.content.res.Resources;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.GetLifecycleStateCallback;
import com.mapbox.common.HttpRequestError;
import com.mapbox.common.HttpRequestErrorType;
import com.mapbox.common.LifecycleMonitorFactory;
import com.mapbox.common.LifecycleMonitorInterface;
import com.mapbox.common.LifecycleMonitoringState;
import com.mapbox.common.LifecycleObserver;
import com.mapbox.common.LifecycleState;
import com.mapbox.common.MapboxSDKCommon;
import com.mapbox.common.NetworkRestriction;
import com.mapbox.common.NetworkStatus;
import com.mapbox.common.OfflineSwitch;
import com.mapbox.common.OfflineSwitchObserver;
import com.mapbox.common.ReachabilityChanged;
import com.mapbox.common.ReachabilityFactory;
import com.mapbox.common.ReachabilityInterface;
import com.mapbox.common.ResultCallback;
import com.mapbox.common.http_backend.Request;
import com.mapbox.common.http_backend.RequestObserver;
import com.mapbox.common.http_backend.Service;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001>B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\"H\u0002J\u0018\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020*H\u0016J\u0012\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.H\u0002J\b\u0010/\u001a\u00020'H\u0007J\b\u00100\u001a\u00020'H\u0007J\b\u00101\u001a\u00020'H\u0007J\b\u00102\u001a\u00020'H\u0007J\b\u00103\u001a\u000204H\u0007J\u0010\u00105\u001a\u00020\"2\u0006\u0010-\u001a\u00020.H\u0002J\b\u00106\u001a\u00020'H\u0002J\u0012\u00107\u001a\u0004\u0018\u00010\r2\u0006\u0010(\u001a\u00020\u000bH\u0002J\u0018\u0010-\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020.2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020'2\u0006\u0010;\u001a\u00020<H\u0016J\b\u0010=\u001a\u00020\"H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\b\u0012\u00060\u000bj\u0002`\f\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u0012\u0012\b\u0012\u00060\u000bj\u0002`\f\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"Lcom/mapbox/common/module/MapboxHttpClient;", "Lcom/mapbox/common/http_backend/Service;", "detail", "Lcom/mapbox/common/module/HttpClientDetail;", "(Lcom/mapbox/common/module/HttpClientDetail;)V", "allowBackgroundRequests", "Ljava/util/concurrent/atomic/AtomicBoolean;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "foregroundRequests", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/mapbox/common/module/RequestId;", "Lcom/mapbox/common/module/RequestDetail;", "getLifeCycleStateCallback", "Lcom/mapbox/common/GetLifecycleStateCallback;", "lifecycleMonitor", "Lcom/mapbox/common/LifecycleMonitorInterface;", "lifecycleObserver", "Lcom/mapbox/common/LifecycleObserver;", "lifecycleState", "Lcom/mapbox/common/LifecycleState;", "networkStatus", "Lcom/mapbox/common/NetworkStatus;", "offline", "offlineObserver", "Lcom/mapbox/common/OfflineSwitchObserver;", "pauseRequestsOnDemand", "pendingCalls", "reachability", "Lcom/mapbox/common/ReachabilityInterface;", "reachabilityChanged", "Lcom/mapbox/common/ReachabilityChanged;", "allowAlways", "", ImagesContract.URL, "", "canSendForegroundRequest", "cancelRequest", "", "id", "callback", "Lcom/mapbox/common/ResultCallback;", "checkRequestRestrictions", "Lcom/mapbox/common/HttpRequestError;", "request", "Lcom/mapbox/common/http_backend/Request;", "disableBackgroundRequests", "disablePauseRequestsOnDemand", "enableBackgroundRequests", "enablePauseRequestsOnDemand", "getForegroundQueueSize", "", "needToPauseRequest", "processForegroundQueue", "removeCall", "observer", "Lcom/mapbox/common/http_backend/RequestObserver;", "setMaxRequestsPerHost", "max", "", "supportsKeepCompression", "HttpServiceLifecycleObserver", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxHttpClient implements Service {
    private final AtomicBoolean allowBackgroundRequests;
    private final Context context;
    private final HttpClientDetail detail;
    private final ConcurrentHashMap<Long, RequestDetail> foregroundRequests;
    private final GetLifecycleStateCallback getLifeCycleStateCallback;
    private LifecycleMonitorInterface lifecycleMonitor;
    private LifecycleObserver lifecycleObserver;
    private LifecycleState lifecycleState;
    private NetworkStatus networkStatus;
    private final AtomicBoolean offline;
    private final OfflineSwitchObserver offlineObserver;
    private final AtomicBoolean pauseRequestsOnDemand;
    private final ConcurrentHashMap<Long, RequestDetail> pendingCalls;
    private final ReachabilityInterface reachability;
    private final ReachabilityChanged reachabilityChanged;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkRestriction.values().length];
            try {
                iArr[NetworkRestriction.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkRestriction.DISALLOW_EXPENSIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkRestriction.DISALLOW_ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MapboxHttpClient(HttpClientDetail detail) {
        Intrinsics.checkNotNullParameter(detail, "detail");
        this.detail = detail;
        Context context = MapboxSDKCommon.INSTANCE.getContext();
        this.context = context;
        ReachabilityInterface reachabilityInterfaceReachability = ReachabilityFactory.reachability("");
        Intrinsics.checkNotNullExpressionValue(reachabilityInterfaceReachability, "reachability(\"\")");
        this.reachability = reachabilityInterfaceReachability;
        NetworkStatus networkStatusCurrentNetworkStatus = reachabilityInterfaceReachability.currentNetworkStatus();
        Intrinsics.checkNotNullExpressionValue(networkStatusCurrentNetworkStatus, "reachability.currentNetworkStatus()");
        this.networkStatus = networkStatusCurrentNetworkStatus;
        this.offline = new AtomicBoolean(false);
        OfflineSwitchObserver offlineSwitchObserver = new OfflineSwitchObserver() {
            @Override
            public final void statusChanged(boolean z) {
                MapboxHttpClient.offlineObserver$lambda$1(this.f$0, z);
            }
        };
        this.offlineObserver = offlineSwitchObserver;
        ReachabilityChanged reachabilityChanged = new ReachabilityChanged() {
            @Override
            public final void run(NetworkStatus networkStatus) {
                MapboxHttpClient.reachabilityChanged$lambda$2(this.f$0, networkStatus);
            }
        };
        this.reachabilityChanged = reachabilityChanged;
        this.foregroundRequests = new ConcurrentHashMap<>();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.allowBackgroundRequests = atomicBoolean;
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        this.pauseRequestsOnDemand = atomicBoolean2;
        this.lifecycleState = LifecycleState.UNKNOWN;
        this.pendingCalls = new ConcurrentHashMap<>();
        OfflineSwitch.getInstance().registerObserver(offlineSwitchObserver);
        reachabilityInterfaceReachability.addListener(reachabilityChanged);
        String packageName = context.getPackageName();
        Resources resources = context.getResources();
        if (resources != null) {
            int identifier = resources.getIdentifier("com.mapbox.common.http.allow_background_requests", "bool", packageName);
            if (identifier != 0) {
                atomicBoolean.set(resources.getBoolean(identifier));
            }
            int identifier2 = resources.getIdentifier("com.mapbox.common.http.pause_requests_on_demand", "bool", packageName);
            if (identifier2 != 0) {
                atomicBoolean2.set(resources.getBoolean(identifier2));
            }
        }
        if (!atomicBoolean.get() || atomicBoolean2.get()) {
            disableBackgroundRequests();
        }
        this.getLifeCycleStateCallback = new GetLifecycleStateCallback() {
            @Override
            public final void run(Expected expected) {
                MapboxHttpClient.getLifeCycleStateCallback$lambda$4(this.f$0, expected);
            }
        };
    }

    public static final void offlineObserver$lambda$1(MapboxHttpClient this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.offline.set(!z);
        if (z) {
            return;
        }
        Iterator<Map.Entry<Long, RequestDetail>> it = this$0.pendingCalls.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().cancel(new HttpRequestError(HttpRequestErrorType.CONNECTION_ERROR, "Connection lost"));
        }
    }

    public static final void reachabilityChanged$lambda$2(MapboxHttpClient this$0, NetworkStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "status");
        this$0.networkStatus = status;
    }

    public final RequestDetail removeCall(long id) {
        this.foregroundRequests.remove(Long.valueOf(id));
        return this.pendingCalls.remove(Long.valueOf(id));
    }

    private final boolean allowAlways(String url) {
        Iterator it = MapboxHttpClientKt.ALLOW_FROM_BACKGROUND_LIST.iterator();
        while (it.hasNext()) {
            if (StringsKt.startsWith$default(url, (String) it.next(), false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    private final boolean needToPauseRequest(Request request) {
        if (canSendForegroundRequest()) {
            return false;
        }
        boolean z = (request.getFlags() & 2) != 0;
        if (this.pauseRequestsOnDemand.get() && z) {
            return true;
        }
        if (this.allowBackgroundRequests.get()) {
            return false;
        }
        String url = request.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "request.url");
        return !allowAlways(url);
    }

    public final void processForegroundQueue() {
        while (!this.foregroundRequests.isEmpty() && canSendForegroundRequest()) {
            Map.Entry<Long, RequestDetail> next = this.foregroundRequests.entrySet().iterator().next();
            Intrinsics.checkNotNullExpressionValue(next, "next()");
            Long key = next.getKey();
            next.getValue().start();
            this.foregroundRequests.remove(key);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/mapbox/common/module/MapboxHttpClient$HttpServiceLifecycleObserver;", "Lcom/mapbox/common/LifecycleObserver;", "(Lcom/mapbox/common/module/MapboxHttpClient;)V", "onLifecycleStateChanged", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/common/LifecycleState;", "onMonitoringStateChanged", "Lcom/mapbox/common/LifecycleMonitoringState;", "error", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class HttpServiceLifecycleObserver implements LifecycleObserver {
        public HttpServiceLifecycleObserver() {
        }

        @Override
        public void onLifecycleStateChanged(LifecycleState state) {
            Intrinsics.checkNotNullParameter(state, "state");
            boolean z = MapboxHttpClient.this.lifecycleState == LifecycleState.FOREGROUND || MapboxHttpClient.this.lifecycleState == LifecycleState.MOVING_FOREGROUND;
            MapboxHttpClient.this.lifecycleState = state;
            if (MapboxHttpClient.this.foregroundRequests.isEmpty() || z || !MapboxHttpClient.this.canSendForegroundRequest()) {
                return;
            }
            MapboxHttpClient.this.processForegroundQueue();
        }

        @Override
        public void onMonitoringStateChanged(LifecycleMonitoringState state, String error) {
            Intrinsics.checkNotNullParameter(state, "state");
            if (error != null || state == LifecycleMonitoringState.STOPPED) {
                MapboxHttpClient.this.lifecycleState = LifecycleState.UNKNOWN;
            }
        }
    }

    public static final void getLifeCycleStateCallback$lambda$4(MapboxHttpClient this$0, Expected it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object valueOrElse = it.getValueOrElse(new Expected.Transformer() {
            @Override
            public final Object invoke(Object obj) {
                return MapboxHttpClient.getLifeCycleStateCallback$lambda$4$lambda$3((String) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(valueOrElse, "it.getValueOrElse { LifecycleState.UNKNOWN }");
        this$0.lifecycleState = (LifecycleState) valueOrElse;
    }

    public static final LifecycleState getLifeCycleStateCallback$lambda$4$lambda$3(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return LifecycleState.UNKNOWN;
    }

    public final void disableBackgroundRequests() {
        this.allowBackgroundRequests.set(false);
        if (this.lifecycleMonitor == null || this.lifecycleObserver == null) {
            this.lifecycleMonitor = LifecycleMonitorFactory.getOrCreate();
            this.lifecycleObserver = new HttpServiceLifecycleObserver();
            LifecycleMonitorInterface lifecycleMonitorInterface = this.lifecycleMonitor;
            Intrinsics.checkNotNull(lifecycleMonitorInterface);
            LifecycleObserver lifecycleObserver = this.lifecycleObserver;
            Intrinsics.checkNotNull(lifecycleObserver);
            lifecycleMonitorInterface.registerObserver(lifecycleObserver);
            LifecycleMonitorInterface lifecycleMonitorInterface2 = this.lifecycleMonitor;
            Intrinsics.checkNotNull(lifecycleMonitorInterface2);
            lifecycleMonitorInterface2.getLifecycleState(this.getLifeCycleStateCallback);
        }
    }

    public final void enableBackgroundRequests() {
        this.allowBackgroundRequests.set(true);
    }

    public final void enablePauseRequestsOnDemand() {
        this.pauseRequestsOnDemand.set(true);
        if (this.lifecycleMonitor == null || this.lifecycleObserver == null) {
            this.lifecycleMonitor = LifecycleMonitorFactory.getOrCreate();
            this.lifecycleObserver = new HttpServiceLifecycleObserver();
            LifecycleMonitorInterface lifecycleMonitorInterface = this.lifecycleMonitor;
            Intrinsics.checkNotNull(lifecycleMonitorInterface);
            LifecycleObserver lifecycleObserver = this.lifecycleObserver;
            Intrinsics.checkNotNull(lifecycleObserver);
            lifecycleMonitorInterface.registerObserver(lifecycleObserver);
            LifecycleMonitorInterface lifecycleMonitorInterface2 = this.lifecycleMonitor;
            Intrinsics.checkNotNull(lifecycleMonitorInterface2);
            lifecycleMonitorInterface2.getLifecycleState(this.getLifeCycleStateCallback);
        }
    }

    public final void disablePauseRequestsOnDemand() {
        this.pauseRequestsOnDemand.set(false);
    }

    public final int getForegroundQueueSize() {
        return this.foregroundRequests.size();
    }

    public final boolean canSendForegroundRequest() {
        return this.lifecycleState == LifecycleState.FOREGROUND || this.lifecycleState == LifecycleState.MOVING_FOREGROUND || this.lifecycleState == LifecycleState.UNKNOWN;
    }

    private final HttpRequestError checkRequestRestrictions(Request request) {
        if (this.offline.get()) {
            return new HttpRequestError(HttpRequestErrorType.CONNECTION_ERROR, "Not connected");
        }
        int i = WhenMappings.$EnumSwitchMapping$0[request.getNetworkRestriction().ordinal()];
        if (i != 2) {
            if (i != 3) {
                return null;
            }
            return new HttpRequestError(HttpRequestErrorType.CONNECTION_ERROR, "Not allowed");
        }
        if (this.networkStatus == NetworkStatus.REACHABLE_VIA_WWAN) {
            return new HttpRequestError(HttpRequestErrorType.CONNECTION_ERROR, "No connection satisfies network restriction");
        }
        return null;
    }

    @Override
    public void setMaxRequestsPerHost(byte max) {
        this.detail.setMaxRequestsPerHost(max);
    }

    @Override
    public long request(Request request, final RequestObserver observer) {
        final RequestObserver requestObserver;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(observer, "observer");
        final long jNewId = NetworkIdGenerator.INSTANCE.newId();
        final HttpRequestError httpRequestErrorCheckRequestRestrictions = checkRequestRestrictions(request);
        if (httpRequestErrorCheckRequestRestrictions != null) {
            this.detail.executor().execute(new Runnable() {
                @Override
                public final void run() {
                    MapboxHttpClient.request$lambda$5(observer, jNewId, httpRequestErrorCheckRequestRestrictions);
                }
            });
            return jNewId;
        }
        try {
            requestObserver = observer;
            try {
                RequestDetail requestDetailBuildRequest = this.detail.buildRequest(request, jNewId, requestObserver, new Function1<Long, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        this.this$0.removeCall(j);
                    }
                });
                this.pendingCalls.put(Long.valueOf(jNewId), requestDetailBuildRequest);
                if (needToPauseRequest(request)) {
                    this.foregroundRequests.put(Long.valueOf(jNewId), requestDetailBuildRequest);
                    return jNewId;
                }
                requestDetailBuildRequest.start();
                return jNewId;
            } catch (Exception e) {
                e = e;
                final Exception exc = e;
                this.detail.executor().execute(new Runnable() {
                    @Override
                    public final void run() {
                        MapboxHttpClient.request$lambda$6(requestObserver, jNewId, exc);
                    }
                });
                return jNewId;
            }
        } catch (Exception e2) {
            e = e2;
            requestObserver = observer;
        }
    }

    public static final void request$lambda$5(RequestObserver observer, long j, HttpRequestError httpRequestError) {
        Intrinsics.checkNotNullParameter(observer, "$observer");
        observer.onFailed(j, httpRequestError);
    }

    public static final void request$lambda$6(RequestObserver observer, long j, Exception exception) {
        Intrinsics.checkNotNullParameter(observer, "$observer");
        Intrinsics.checkNotNullParameter(exception, "$exception");
        observer.onFailed(j, new HttpRequestError(HttpRequestErrorType.OTHER_ERROR, String.valueOf(exception.getMessage())));
    }

    @Override
    public void cancelRequest(long id, ResultCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        RequestDetail requestDetailRemoveCall = removeCall(id);
        if (requestDetailRemoveCall != null) {
            RequestDetail.DefaultImpls.cancel$default(requestDetailRemoveCall, null, 1, null);
            callback.run(true);
        } else {
            callback.run(false);
        }
    }

    @Override
    public boolean supportsKeepCompression() {
        return this.detail.supportsKeepCompression();
    }
}
