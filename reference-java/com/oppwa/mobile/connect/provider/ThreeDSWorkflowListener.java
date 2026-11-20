package com.oppwa.mobile.connect.provider;

import android.app.Activity;
import com.oppwa.mobile.connect.threeds.OppThreeDSConfig;

public interface ThreeDSWorkflowListener {
    Activity onThreeDSChallengeRequired();

    default OppThreeDSConfig onThreeDSConfigRequired() {
        return null;
    }
}
