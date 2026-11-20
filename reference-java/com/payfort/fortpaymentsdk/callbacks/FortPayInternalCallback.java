package com.payfort.fortpaymentsdk.callbacks;

import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, d2 = {"Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;", "", "onFailure", "", "sdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "onSuccess", "startLoading", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface FortPayInternalCallback {
    void onFailure(SdkResponse sdkResponse);

    void onSuccess(SdkResponse sdkResponse);

    void startLoading();
}
