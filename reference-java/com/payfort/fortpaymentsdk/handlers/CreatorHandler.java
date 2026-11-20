package com.payfort.fortpaymentsdk.handlers;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.ErrorEnum;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.MerchantToken;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.exceptions.InvalidCvcLengthException;
import com.payfort.fortpaymentsdk.exceptions.MerchantTokenNoExistException;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.views.CardCvvView;
import com.payfort.fortpaymentsdk.views.CardExpiryView;
import com.payfort.fortpaymentsdk.views.CardHolderNameView;
import com.payfort.fortpaymentsdk.views.FortCardNumberView;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.HttpException;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ@\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\t\u001a\u0004\u0018\u00010\nJ2\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001b¨\u0006\u001f"}, d2 = {"Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;", "", "()V", "convertThrowableToSdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "throwable", "", "fortRequest", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "createSdkRequest", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "createSdkRequestForWorker", "createSdkRequestFromComponents", "cardNumberView", "Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;", "cvvView", "Lcom/payfort/fortpaymentsdk/views/CardCvvView;", "holderNameView", "Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;", "expiryView", "Lcom/payfort/fortpaymentsdk/views/CardExpiryView;", "isRememberMe", "", "createSdkRequestFromMerchantToken", "sdkToken", "", Constants.EXTRAS.SDK_MERCHANT_TOKEN, "Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;", "cvc", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CreatorHandler {
    public static final CreatorHandler INSTANCE = new CreatorHandler();

    private CreatorHandler() {
    }

    public final SdkRequest createSdkRequest(Context context, FortRequest fortRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        SdkRequest sdkRequest = new SdkRequest();
        sdkRequest.setDeviceOS(Utils.INSTANCE.getOsDetails(context));
        sdkRequest.setDeviceId(Utils.INSTANCE.getDeviceId(context));
        sdkRequest.setRequestMap(fortRequest != null ? fortRequest.getRequestMap() : null);
        return sdkRequest;
    }

    public final SdkRequest createSdkRequestForWorker(Context context, FortRequest fortRequest) {
        Map<String, Object> requestMap;
        Intrinsics.checkNotNullParameter(context, "context");
        SdkRequest sdkRequest = new SdkRequest();
        sdkRequest.setDeviceOS(Utils.INSTANCE.getOsDetails(context));
        sdkRequest.setDeviceId(Utils.INSTANCE.getDeviceId(context));
        HashMap map = new HashMap();
        map.put(Constants.FORT_PARAMS.SDK_TOKEN, (fortRequest == null || (requestMap = fortRequest.getRequestMap()) == null) ? null : requestMap.get(Constants.FORT_PARAMS.SDK_TOKEN));
        sdkRequest.setRequestMap(map);
        return sdkRequest;
    }

    public static SdkRequest createSdkRequestFromMerchantToken$default(CreatorHandler creatorHandler, Context context, String str, MerchantToken merchantToken, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            merchantToken = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return creatorHandler.createSdkRequestFromMerchantToken(context, str, merchantToken, str2);
    }

    public final SdkRequest createSdkRequestFromMerchantToken(Context context, String sdkToken, MerchantToken merchantToken, String cvc) {
        String strSubstring;
        String strSubstring2;
        String expDate;
        String expDate2;
        Intrinsics.checkNotNullParameter(context, "context");
        SdkRequest sdkRequest = new SdkRequest();
        if (merchantToken == null || (expDate2 = merchantToken.getExpDate()) == null) {
            strSubstring = null;
        } else {
            strSubstring = expDate2.substring(2);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
        }
        if (merchantToken == null || (expDate = merchantToken.getExpDate()) == null) {
            strSubstring2 = null;
        } else {
            strSubstring2 = expDate.substring(0, 2);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        String str = strSubstring + strSubstring2;
        sdkRequest.setDeviceId(Utils.INSTANCE.getDeviceId(context));
        sdkRequest.setDeviceOS(Utils.INSTANCE.getOsDetails(context));
        HashMap map = new HashMap();
        map.put(Constants.FORT_PARAMS.CARD_NUMBER, merchantToken != null ? merchantToken.getMaskedCardNumber() : null);
        map.put(Constants.FORT_PARAMS.CARD_SECURITY_CODE, cvc);
        map.put(Constants.FORT_PARAMS.EXPIRY_DATE, str);
        map.put(Constants.FORT_PARAMS.SDK_TOKEN, sdkToken);
        sdkRequest.setRequestMap(map);
        return sdkRequest;
    }

    public final SdkRequest createSdkRequestFromComponents(Context context, FortCardNumberView cardNumberView, CardCvvView cvvView, CardHolderNameView holderNameView, CardExpiryView expiryView, boolean isRememberMe, FortRequest fortRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cardNumberView, "cardNumberView");
        Intrinsics.checkNotNullParameter(cvvView, "cvvView");
        Intrinsics.checkNotNullParameter(holderNameView, "holderNameView");
        Intrinsics.checkNotNullParameter(expiryView, "expiryView");
        String strValueOf = String.valueOf(cvvView.getText$fortpayment_release());
        String strValueOf2 = String.valueOf(holderNameView.getText$fortpayment_release());
        String strValueOf3 = String.valueOf(cardNumberView.getText$fortpayment_release());
        String strValueOf4 = String.valueOf(expiryView.getText$fortpayment_release());
        String strSubstring = strValueOf4.substring(3);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
        String strSubstring2 = strValueOf4.substring(0, 2);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        String str = strSubstring + strSubstring2;
        String str2 = isRememberMe ? "on" : "off";
        String strValueOf5 = String.valueOf(Utils.INSTANCE.getParamValue(fortRequest != null ? fortRequest.getRequestMap() : null, Constants.FORT_PARAMS.SDK_TOKEN));
        SdkRequest sdkRequest = new SdkRequest();
        sdkRequest.setDeviceId(Utils.INSTANCE.getDeviceId(context));
        sdkRequest.setDeviceOS(Utils.INSTANCE.getOsDetails(context));
        HashMap map = new HashMap();
        map.put(Constants.FORT_PARAMS.CARD_NUMBER, strValueOf3);
        map.put(Constants.FORT_PARAMS.CARD_SECURITY_CODE, strValueOf);
        map.put(Constants.FORT_PARAMS.EXPIRY_DATE, str);
        map.put(Constants.FORT_PARAMS.CUSTOMER_NAME, strValueOf2);
        map.put(Constants.FORT_PARAMS.SDK_TOKEN, strValueOf5);
        map.put(Constants.FORT_PARAMS.REMEMBER_ME, str2);
        sdkRequest.setRequestMap(map);
        return sdkRequest;
    }

    public final SdkResponse convertThrowableToSdkResponse(Context context, Throwable throwable, FortRequest fortRequest) {
        SdkResponse technicalProblemResponse;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        SdkResponse technicalProblemResponse2 = null;
        if (throwable instanceof IOException ? true : throwable instanceof SocketTimeoutException) {
            technicalProblemResponse2 = MapUtils.getFailedToInitConnectionResponse(context.getResources().getString(R.string.pf_no_connection), fortRequest != null ? fortRequest.getRequestMap() : null);
            WorkerHandler.INSTANCE.createWorkerRequest(context, fortRequest, ErrorEnum.CONNECTION, throwable);
        } else if (throwable instanceof MerchantTokenNoExistException) {
            technicalProblemResponse2 = MapUtils.getTechnicalProblemResponse(context.getResources().getString(R.string.pf_no_token_name), fortRequest != null ? fortRequest.getRequestMap() : null);
            WorkerHandler.INSTANCE.createWorkerRequest(context, fortRequest, ErrorEnum.INTERNAL, throwable);
        } else if (throwable instanceof InvalidCvcLengthException) {
            WorkerHandler.INSTANCE.createWorkerRequest(context, fortRequest, ErrorEnum.INTERNAL, throwable);
            if (((InvalidCvcLengthException) throwable).getCardBrand() == CardBrand.AMEX) {
                technicalProblemResponse = MapUtils.getTechnicalProblemResponse(context.getResources().getString(R.string.pf_cancel_cvv_amex_length), fortRequest != null ? fortRequest.getRequestMap() : null);
            } else {
                technicalProblemResponse = MapUtils.getTechnicalProblemResponse(context.getResources().getString(R.string.pf_cancel_cvv_length), fortRequest != null ? fortRequest.getRequestMap() : null);
            }
            technicalProblemResponse2 = technicalProblemResponse;
        } else if (throwable instanceof HttpException) {
            WorkerHandler.INSTANCE.createWorkerRequest(context, fortRequest, ErrorEnum.EXTERNAL, throwable);
        } else {
            technicalProblemResponse2 = MapUtils.getTechnicalProblemResponse(context.getResources().getString(R.string.pf_technical_problem), fortRequest != null ? fortRequest.getRequestMap() : null);
            WorkerHandler.INSTANCE.createWorkerRequest(context, fortRequest, ErrorEnum.EXTERNAL, throwable);
        }
        Intrinsics.checkNotNull(technicalProblemResponse2);
        return technicalProblemResponse2;
    }
}
