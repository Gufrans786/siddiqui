package com.oppwa.mobile.connect.threeds;

import com.oppwa.mobile.connect.threeds.constant.TransactionStatus;

public interface ChallengeCallback {
    public static final String TIMEOUT_ERROR_CODE = "000";

    public interface CompletionEvent {
        String getTransactionId();

        TransactionStatus getTransactionStatus();
    }

    public interface ErrorEvent {
        String getErrorCode();

        String getErrorDetails();

        String getErrorMessage();
    }

    void onCancel();

    void onComplete(CompletionEvent completionEvent);

    void onFailure(ErrorEvent errorEvent);
}
