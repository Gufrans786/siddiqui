package com.payfort.fortpaymentsdk.worker;

import android.content.Context;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.RxWorker;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import ch.qos.logback.core.CoreConstants;
import com.google.gson.Gson;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\b\u0010\f\u001a\u00020\rH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;", "Landroidx/work/RxWorker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "getAppContext", "()Landroid/content/Context;", "createWork", "Lio/reactivex/Single;", "Landroidx/work/ListenableWorker$Result;", "getSdkRequest", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SendLogsWorker extends RxWorker {

    public static final Companion INSTANCE = new Companion(null);
    private static String environment = "";
    private static final Gson gson = new Gson();
    private final Context appContext;

    public final Context getAppContext() {
        return this.appContext;
    }

    public SendLogsWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        this.appContext = appContext;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;", "", "()V", Constants.EXTRAS.SDK_ENVIRONMENT, "", "gson", "Lcom/google/gson/Gson;", "sendLog", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "sdkRequest", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "setEnvironment", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void setEnvironment(String environment) {
            Intrinsics.checkNotNullParameter(environment, "environment");
            SendLogsWorker.environment = environment;
        }

        public final void sendLog(Context context, SdkRequest sdkRequest) throws Throwable {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(sdkRequest, "sdkRequest");
            HashMap map = new HashMap();
            String json = SendLogsWorker.gson.toJson(sdkRequest);
            Intrinsics.checkNotNullExpressionValue(json, "gson.toJson(sdkRequest)");
            map.put(Constants.FORT_PARAMS.SDK_REQUEST, json);
            Data dataBuild = new Data.Builder().putAll(map).build();
            Intrinsics.checkNotNullExpressionValue(dataBuild, "Builder()\n              …\n                .build()");
            Constraints constraintsBuild = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).setRequiresBatteryNotLow(true).build();
            if (SendLogsWorker.environment.length() > 0) {
                Utils.INSTANCE.saveLatestEnvironment$fortpayment_release(context, SendLogsWorker.environment);
            }
            WorkManager.getInstance(context).enqueue(new OneTimeWorkRequest.Builder(SendLogsWorker.class).setConstraints(constraintsBuild).setInputData(dataBuild).build());
        }
    }

    private final SdkRequest getSdkRequest() {
        Object objFromJson = gson.fromJson(getInputData().getString(Constants.FORT_PARAMS.SDK_REQUEST), (Class<Object>) SdkRequest.class);
        Intrinsics.checkNotNullExpressionValue(objFromJson, "gson.fromJson(inputData.…, SdkRequest::class.java)");
        return (SdkRequest) objFromJson;
    }

    @Override
    public Single<ListenableWorker.Result> createWork() {
        if (environment.length() == 0) {
            environment = Utils.INSTANCE.getLatestEnvironment$fortpayment_release(this.appContext);
        }
        Observable<SdkResponse> observableLogData = InjectionUtils.INSTANCE.provideFortRepository(environment).logData(getSdkRequest());
        final AnonymousClass1 anonymousClass1 = new Function1<Throwable, Unit>() {
            @Override
            public Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            public final void invoke2(Throwable th) {
                if ((th instanceof IOException) && (th instanceof UnknownHostException)) {
                    ListenableWorker.Result.retry();
                } else {
                    ListenableWorker.Result.failure();
                }
            }
        };
        Observable<SdkResponse> observableDoOnError = observableLogData.doOnError(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SendLogsWorker.createWork$lambda$0(anonymousClass1, obj);
            }
        });
        final AnonymousClass2 anonymousClass2 = new Function1<SdkResponse, ListenableWorker.Result>() {
            @Override
            public final ListenableWorker.Result invoke(SdkResponse it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return ListenableWorker.Result.success();
            }
        };
        Single<ListenableWorker.Result> singleFromObservable = Single.fromObservable(observableDoOnError.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return SendLogsWorker.createWork$lambda$1(anonymousClass2, obj);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(singleFromObservable, "fromObservable(provideFo…map { Result.success() })");
        return singleFromObservable;
    }

    public static final void createWork$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final ListenableWorker.Result createWork$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ListenableWorker.Result) tmp0.invoke(obj);
    }
}
