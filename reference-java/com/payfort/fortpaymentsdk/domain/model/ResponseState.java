package com.payfort.fortpaymentsdk.domain.model;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "Failure", "Loading", "Success", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class ResponseState<T> {
    public ResponseState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Loading;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "", "()V", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Loading extends ResponseState {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }
    }

    private ResponseState() {
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Failure;", "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "", "response", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V", "getResponse", "()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Failure extends ResponseState {
        private final SdkResponse response;

        public static Failure copy$default(Failure failure, SdkResponse sdkResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                sdkResponse = failure.response;
            }
            return failure.copy(sdkResponse);
        }

        public final SdkResponse getResponse() {
            return this.response;
        }

        public final Failure copy(SdkResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            return new Failure(response);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Failure) && Intrinsics.areEqual(this.response, ((Failure) other).response);
        }

        public int hashCode() {
            return this.response.hashCode();
        }

        public String toString() {
            return "Failure(response=" + this.response + ")";
        }

        public Failure(SdkResponse response) {
            super(null);
            Intrinsics.checkNotNullParameter(response, "response");
            this.response = response;
        }

        public final SdkResponse getResponse() {
            return this.response;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u0001HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;", "item", "(Ljava/lang/Object;)V", "getItem", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/ResponseState$Success;", "equals", "", "other", "", "hashCode", "", "toString", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Success<T> extends ResponseState<T> {
        private final T item;

        public static Success copy$default(Success success, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = success.item;
            }
            return success.copy(obj);
        }

        public final T component1() {
            return this.item;
        }

        public final Success<T> copy(T item) {
            return new Success<>(item);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.item, ((Success) other).item);
        }

        public int hashCode() {
            T t = this.item;
            if (t == null) {
                return 0;
            }
            return t.hashCode();
        }

        public String toString() {
            return "Success(item=" + this.item + ")";
        }

        public Success(T t) {
            super(null);
            this.item = t;
        }

        public final T getItem() {
            return this.item;
        }
    }
}
