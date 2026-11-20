package com.payfort.fortpaymentsdk.handlers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.ErrorEnum;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.worker.SendLogsWorker;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002¨\u0006\u000f"}, d2 = {"Lcom/payfort/fortpaymentsdk/handlers/WorkerHandler;", "", "()V", "createWorkerRequest", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "enum", "Lcom/payfort/fortpaymentsdk/domain/model/ErrorEnum;", "throwable", "", "isFortRequestContainsSdkToken", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WorkerHandler {
    public static final WorkerHandler INSTANCE = new WorkerHandler();

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ErrorEnum.values().length];
            try {
                iArr[ErrorEnum.CONNECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ErrorEnum.INTERNAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ErrorEnum.EXTERNAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private WorkerHandler() {
    }

    public final void createWorkerRequest(Context context, FortRequest fortRequest, ErrorEnum errorEnum, Throwable throwable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(errorEnum, "enum");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        SdkRequest sdkRequestCreateSdkRequestForWorker = CreatorHandler.INSTANCE.createSdkRequestForWorker(context, fortRequest);
        Map<String, Object> requestMap = sdkRequestCreateSdkRequestForWorker.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap, "sdkRequest.requestMap");
        requestMap.put(Constants.FORT_PARAMS.CLIENT_SIDE_ERROR, errorEnum.name());
        Map<String, Object> requestMap2 = sdkRequestCreateSdkRequestForWorker.getRequestMap();
        Intrinsics.checkNotNullExpressionValue(requestMap2, "sdkRequest.requestMap");
        requestMap2.put(Constants.FORT_PARAMS.CLIENT_SIDE_ERROR_DETAILS, throwable.getMessage());
        int i = WhenMappings.$EnumSwitchMapping$0[errorEnum.ordinal()];
        if (i == 1) {
            Map<String, Object> requestMap3 = sdkRequestCreateSdkRequestForWorker.getRequestMap();
            Intrinsics.checkNotNullExpressionValue(requestMap3, "sdkRequest.requestMap");
            requestMap3.put(Constants.FORT_PARAMS.CLIENT_SIDE_ERROR_DESCRIPTION, throwable.getStackTrace());
        } else if (i == 2) {
            Map<String, Object> requestMap4 = sdkRequestCreateSdkRequestForWorker.getRequestMap();
            Intrinsics.checkNotNullExpressionValue(requestMap4, "sdkRequest.requestMap");
            requestMap4.put(Constants.FORT_PARAMS.CLIENT_SIDE_ERROR_DESCRIPTION, throwable.getMessage());
        } else if (i == 3) {
            Map<String, Object> requestMap5 = sdkRequestCreateSdkRequestForWorker.getRequestMap();
            Intrinsics.checkNotNullExpressionValue(requestMap5, "sdkRequest.requestMap");
            requestMap5.put(Constants.FORT_PARAMS.CLIENT_SIDE_ERROR_DESCRIPTION, throwable.getStackTrace());
        }
        if (isFortRequestContainsSdkToken(fortRequest)) {
            SendLogsWorker.INSTANCE.sendLog(context, sdkRequestCreateSdkRequestForWorker);
        }
    }

    private final boolean isFortRequestContainsSdkToken(FortRequest fortRequest) {
        Map<String, Object> requestMap;
        return ((fortRequest == null || (requestMap = fortRequest.getRequestMap()) == null) ? null : requestMap.get(Constants.FORT_PARAMS.SDK_TOKEN)) != null;
    }
}
