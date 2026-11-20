package com.payfort.fortpaymentsdk.domain.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/StringResult;", "", "()V", "Failure", "Loading", "Success", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult$Failure;", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult$Loading;", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult$Success;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class StringResult {
    public StringResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/StringResult$Loading;", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult;", "()V", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Loading extends StringResult {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }
    }

    private StringResult() {
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/StringResult$Success;", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult;", "response", "", "(Ljava/lang/String;)V", "getResponse", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Success extends StringResult {
        private final String response;

        public static Success copy$default(Success success, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = success.response;
            }
            return success.copy(str);
        }

        public final String getResponse() {
            return this.response;
        }

        public final Success copy(String response) {
            Intrinsics.checkNotNullParameter(response, "response");
            return new Success(response);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.response, ((Success) other).response);
        }

        public int hashCode() {
            return this.response.hashCode();
        }

        public String toString() {
            return "Success(response=" + this.response + ")";
        }

        public Success(String response) {
            super(null);
            Intrinsics.checkNotNullParameter(response, "response");
            this.response = response;
        }

        public final String getResponse() {
            return this.response;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/StringResult$Failure;", "Lcom/payfort/fortpaymentsdk/domain/model/StringResult;", "throwable", "", "(Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Failure extends StringResult {
        private final Throwable throwable;

        public static Failure copy$default(Failure failure, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                th = failure.throwable;
            }
            return failure.copy(th);
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public final Failure copy(Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return new Failure(throwable);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Failure) && Intrinsics.areEqual(this.throwable, ((Failure) other).throwable);
        }

        public int hashCode() {
            return this.throwable.hashCode();
        }

        public String toString() {
            return "Failure(throwable=" + this.throwable + ")";
        }

        public Failure(Throwable throwable) {
            super(null);
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            this.throwable = throwable;
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }
    }
}
