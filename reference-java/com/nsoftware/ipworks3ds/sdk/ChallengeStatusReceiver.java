package com.nsoftware.ipworks3ds.sdk;

import com.nsoftware.ipworks3ds.sdk.event.CompletionEvent;
import com.nsoftware.ipworks3ds.sdk.event.ProtocolErrorEvent;
import com.nsoftware.ipworks3ds.sdk.event.RuntimeErrorEvent;

public interface ChallengeStatusReceiver {
    void cancelled();

    void completed(CompletionEvent completionEvent);

    void protocolError(ProtocolErrorEvent protocolErrorEvent);

    void runtimeError(RuntimeErrorEvent runtimeErrorEvent);

    void timedout();
}
