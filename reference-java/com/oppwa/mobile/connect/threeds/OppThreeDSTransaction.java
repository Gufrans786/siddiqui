package com.oppwa.mobile.connect.threeds;

import android.app.Activity;
import android.app.ProgressDialog;
import com.nsoftware.ipworks3ds.sdk.AuthenticationRequestParameters;
import com.nsoftware.ipworks3ds.sdk.ChallengeParameters;
import com.nsoftware.ipworks3ds.sdk.Transaction;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;

public class OppThreeDSTransaction {
    private final Transaction a;
    private final int b;

    OppThreeDSTransaction(Transaction transaction, int i) {
        this.a = transaction;
        this.b = i;
    }

    public void close() {
        this.a.close();
    }

    public void doChallenge(Activity activity, String str, ChallengeCallback challengeCallback) throws InvalidInputException, SDKRuntimeException {
        if (activity == null) {
            throw new InvalidInputException("Activity is null");
        }
        ChallengeParameters challengeParameters = new ChallengeParameters();
        challengeParameters.setThreeDSServerAuthResponse(str);
        this.a.doChallenge(activity, challengeParameters, new a(challengeCallback), this.b);
    }

    public String getAuthRequestParams() throws SDKRuntimeException {
        AuthenticationRequestParameters authenticationRequestParameters = this.a.getAuthenticationRequestParameters();
        if (authenticationRequestParameters != null) {
            return authenticationRequestParameters.getAuthRequest();
        }
        return null;
    }

    public ProgressDialog getProgressView(Activity activity) throws InvalidInputException, SDKRuntimeException {
        return this.a.getProgressView(activity);
    }
}
