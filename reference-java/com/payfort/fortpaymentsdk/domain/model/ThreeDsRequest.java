package com.payfort.fortpaymentsdk.domain.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;", "", "sdkToken", "", "responseToken", "(Ljava/lang/String;Ljava/lang/String;)V", "getResponseToken", "()Ljava/lang/String;", "getSdkToken", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ThreeDsRequest {
    private final String responseToken;
    private final String sdkToken;

    public static ThreeDsRequest copy$default(ThreeDsRequest threeDsRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = threeDsRequest.sdkToken;
        }
        if ((i & 2) != 0) {
            str2 = threeDsRequest.responseToken;
        }
        return threeDsRequest.copy(str, str2);
    }

    public final String getSdkToken() {
        return this.sdkToken;
    }

    public final String getResponseToken() {
        return this.responseToken;
    }

    public final ThreeDsRequest copy(String sdkToken, String responseToken) {
        Intrinsics.checkNotNullParameter(sdkToken, "sdkToken");
        Intrinsics.checkNotNullParameter(responseToken, "responseToken");
        return new ThreeDsRequest(sdkToken, responseToken);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThreeDsRequest)) {
            return false;
        }
        ThreeDsRequest threeDsRequest = (ThreeDsRequest) other;
        return Intrinsics.areEqual(this.sdkToken, threeDsRequest.sdkToken) && Intrinsics.areEqual(this.responseToken, threeDsRequest.responseToken);
    }

    public int hashCode() {
        return (this.sdkToken.hashCode() * 31) + this.responseToken.hashCode();
    }

    public String toString() {
        return "ThreeDsRequest(sdkToken=" + this.sdkToken + ", responseToken=" + this.responseToken + ")";
    }

    public ThreeDsRequest(String sdkToken, String responseToken) {
        Intrinsics.checkNotNullParameter(sdkToken, "sdkToken");
        Intrinsics.checkNotNullParameter(responseToken, "responseToken");
        this.sdkToken = sdkToken;
        this.responseToken = responseToken;
    }

    public final String getResponseToken() {
        return this.responseToken;
    }

    public final String getSdkToken() {
        return this.sdkToken;
    }
}
