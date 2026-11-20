package com.oppwa.mobile.connect.threeds;

import com.nsoftware.ipworks3ds.sdk.ChallengeStatusReceiver;
import com.nsoftware.ipworks3ds.sdk.event.CompletionEvent;
import com.nsoftware.ipworks3ds.sdk.event.ErrorMessage;
import com.nsoftware.ipworks3ds.sdk.event.ProtocolErrorEvent;
import com.nsoftware.ipworks3ds.sdk.event.RuntimeErrorEvent;
import com.oppwa.mobile.connect.threeds.constant.TransactionStatus;

class a implements ChallengeStatusReceiver {
    private final ChallengeCallback a;

    private static class C0066a implements ChallengeCallback.CompletionEvent {
        private final String a;
        private final TransactionStatus b;

        C0066a(String str, TransactionStatus transactionStatus) {
            this.a = str;
            this.b = transactionStatus;
        }

        @Override
        public String getTransactionId() {
            return this.a;
        }

        @Override
        public TransactionStatus getTransactionStatus() {
            return this.b;
        }
    }

    private static class b implements ChallengeCallback.ErrorEvent {
        private final String a;
        private final String b;
        private final String c;

        b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override
        public String getErrorCode() {
            return this.a;
        }

        @Override
        public String getErrorDetails() {
            return this.c;
        }

        @Override
        public String getErrorMessage() {
            return this.b;
        }
    }

    a(ChallengeCallback challengeCallback) {
        this.a = challengeCallback;
    }

    @Override
    public void cancelled() {
        this.a.onCancel();
    }

    @Override
    public void completed(CompletionEvent completionEvent) {
        this.a.onComplete(new C0066a(completionEvent.getSDKTransactionID(), TransactionStatus.fromString(completionEvent.getTransactionStatus())));
    }

    @Override
    public void protocolError(ProtocolErrorEvent protocolErrorEvent) {
        ErrorMessage errorMessage = protocolErrorEvent.getErrorMessage();
        this.a.onFailure(new b(errorMessage.getErrorCode(), errorMessage.getErrorDescription(), errorMessage.getErrorDetails()));
    }

    @Override
    public void runtimeError(RuntimeErrorEvent runtimeErrorEvent) {
        this.a.onFailure(new b(runtimeErrorEvent.getErrorCode(), runtimeErrorEvent.getErrorMessage(), null));
    }

    @Override
    public void timedout() {
        this.a.onFailure(new b(ChallengeCallback.TIMEOUT_ERROR_CODE, "Transaction closed due to internal timeout expiration", null));
    }
}
