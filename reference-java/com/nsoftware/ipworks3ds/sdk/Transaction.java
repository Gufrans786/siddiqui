package com.nsoftware.ipworks3ds.sdk;

import android.app.Activity;
import android.app.ProgressDialog;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;

public interface Transaction {
    void close();

    void doChallenge(Activity activity, ChallengeParameters challengeParameters, ChallengeStatusReceiver challengeStatusReceiver, int i) throws InvalidInputException, SDKRuntimeException;

    AuthenticationRequestParameters getAuthenticationRequestParameters() throws SDKRuntimeException;

    ProgressDialog getProgressView(Activity activity) throws InvalidInputException, SDKRuntimeException;
}
