package nts;

import com.nsoftware.ipworks3ds.sdk.ChallengeStatusReceiver;
import com.nsoftware.ipworks3ds.sdk.event.CompletionEvent;
import com.nsoftware.ipworks3ds.sdk.event.ProtocolErrorEvent;
import com.nsoftware.ipworks3ds.sdk.event.RuntimeErrorEvent;

public class C0108 implements ChallengeStatusReceiver {

    public ChallengeStatusReceiver f142;

    public C0108(ChallengeStatusReceiver challengeStatusReceiver) {
        this.f142 = challengeStatusReceiver;
    }

    @Override
    public void cancelled() {
        try {
            ChallengeStatusReceiver challengeStatusReceiver = this.f142;
            if (challengeStatusReceiver != null) {
                challengeStatusReceiver.cancelled();
            }
        } catch (NullPointerException e) {
            C0273.f1383.m3992(e.getMessage());
        }
    }

    @Override
    public void completed(CompletionEvent completionEvent) {
        try {
            ChallengeStatusReceiver challengeStatusReceiver = this.f142;
            if (challengeStatusReceiver != null) {
                challengeStatusReceiver.completed(completionEvent);
            }
        } catch (NullPointerException e) {
            C0273.f1383.m3992(e.getMessage());
        }
    }

    @Override
    public void protocolError(ProtocolErrorEvent protocolErrorEvent) {
        C0273.f1383.m3992(C0558.m5452(8, 15, 24) + protocolErrorEvent.getErrorMessage());
        try {
            ChallengeStatusReceiver challengeStatusReceiver = this.f142;
            if (challengeStatusReceiver != null) {
                challengeStatusReceiver.protocolError(protocolErrorEvent);
            }
        } catch (NullPointerException e) {
            C0273.f1383.m3992(e.getMessage());
        }
    }

    @Override
    public void runtimeError(RuntimeErrorEvent runtimeErrorEvent) {
        C0273.f1383.m3992(C0558.m5452(23, 13, 28) + runtimeErrorEvent.getErrorCode() + ": " + runtimeErrorEvent.getErrorMessage());
        try {
            ChallengeStatusReceiver challengeStatusReceiver = this.f142;
            if (challengeStatusReceiver != null) {
                challengeStatusReceiver.runtimeError(runtimeErrorEvent);
            }
        } catch (NullPointerException e) {
            C0273.f1383.m3992(e.getMessage());
        }
    }

    @Override
    public void timedout() {
        C0273.f1383.m3992(C0558.m5452(0, 8, 73));
        try {
            ChallengeStatusReceiver challengeStatusReceiver = this.f142;
            if (challengeStatusReceiver != null) {
                challengeStatusReceiver.timedout();
            }
        } catch (NullPointerException e) {
            C0273.f1383.m3992(e.getMessage());
        }
    }
}
