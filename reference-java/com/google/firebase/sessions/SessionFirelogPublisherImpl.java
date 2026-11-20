package com.google.firebase.sessions;

import android.util.Log;
import ch.qos.logback.core.CoreConstants;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

@Singleton
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B3\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0001\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u0016H\u0082@¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;", "Lcom/google/firebase/sessions/SessionFirelogPublisher;", "firebaseApp", "Lcom/google/firebase/FirebaseApp;", "firebaseInstallations", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "sessionSettings", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "eventGDTLogger", "Lcom/google/firebase/sessions/EventGDTLoggerInterface;", "backgroundDispatcher", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/EventGDTLoggerInterface;Lkotlin/coroutines/CoroutineContext;)V", "mayLogSession", "", "sessionDetails", "Lcom/google/firebase/sessions/SessionDetails;", "attemptLoggingSessionEvent", "sessionEvent", "Lcom/google/firebase/sessions/SessionEvent;", "shouldLogSession", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldCollectEvents", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionFirelogPublisherImpl implements SessionFirelogPublisher {
    private static final double randomValueForSampling = Math.random();
    private final CoroutineContext backgroundDispatcher;
    private final EventGDTLoggerInterface eventGDTLogger;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final SessionsSettings sessionSettings;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", f = "SessionFirelogPublisher.kt", i = {0, 1}, l = {98, 104}, m = "shouldLogSession", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C07691 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        C07691(Continuation<? super C07691> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionFirelogPublisherImpl.this.shouldLogSession(this);
        }
    }

    @Inject
    public SessionFirelogPublisherImpl(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallations, SessionsSettings sessionSettings, EventGDTLoggerInterface eventGDTLogger, @Background CoroutineContext backgroundDispatcher) {
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Intrinsics.checkNotNullParameter(firebaseInstallations, "firebaseInstallations");
        Intrinsics.checkNotNullParameter(sessionSettings, "sessionSettings");
        Intrinsics.checkNotNullParameter(eventGDTLogger, "eventGDTLogger");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.firebaseApp = firebaseApp;
        this.firebaseInstallations = firebaseInstallations;
        this.sessionSettings = sessionSettings;
        this.eventGDTLogger = eventGDTLogger;
        this.backgroundDispatcher = backgroundDispatcher;
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1", f = "SessionFirelogPublisher.kt", i = {2}, l = {CoreConstants.OOS_RESET_FREQUENCY, 71, 77}, m = "invokeSuspend", n = {"installationId"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final SessionDetails $sessionDetails;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        AnonymousClass1(SessionDetails sessionDetails, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$sessionDetails = sessionDetails;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionFirelogPublisherImpl.this.new AnonymousClass1(this.$sessionDetails, continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            InstallationId installationId;
            SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
            SessionEvents sessionEvents;
            FirebaseApp firebaseApp;
            SessionDetails sessionDetails;
            SessionsSettings sessionsSettings;
            Object registeredSubscribers$com_google_firebase_firebase_sessions;
            FirebaseApp firebaseApp2;
            SessionDetails sessionDetails2;
            SessionEvents sessionEvents2;
            SessionsSettings sessionsSettings2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = SessionFirelogPublisherImpl.this.shouldLogSession(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    installationId = (InstallationId) obj;
                    sessionFirelogPublisherImpl = SessionFirelogPublisherImpl.this;
                    sessionEvents = SessionEvents.INSTANCE;
                    firebaseApp = SessionFirelogPublisherImpl.this.firebaseApp;
                    sessionDetails = this.$sessionDetails;
                    sessionsSettings = SessionFirelogPublisherImpl.this.sessionSettings;
                    this.L$0 = installationId;
                    this.L$1 = sessionFirelogPublisherImpl;
                    this.L$2 = sessionEvents;
                    this.L$3 = firebaseApp;
                    this.L$4 = sessionDetails;
                    this.L$5 = sessionsSettings;
                    this.label = 3;
                    registeredSubscribers$com_google_firebase_firebase_sessions = FirebaseSessionsDependencies.INSTANCE.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
                    if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                        firebaseApp2 = firebaseApp;
                        obj = registeredSubscribers$com_google_firebase_firebase_sessions;
                        sessionDetails2 = sessionDetails;
                        sessionEvents2 = sessionEvents;
                        sessionsSettings2 = sessionsSettings;
                    }
                    return coroutine_suspended;
                }
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                SessionsSettings sessionsSettings3 = (SessionsSettings) this.L$5;
                SessionDetails sessionDetails3 = (SessionDetails) this.L$4;
                FirebaseApp firebaseApp3 = (FirebaseApp) this.L$3;
                SessionEvents sessionEvents3 = (SessionEvents) this.L$2;
                sessionFirelogPublisherImpl = (SessionFirelogPublisherImpl) this.L$1;
                installationId = (InstallationId) this.L$0;
                ResultKt.throwOnFailure(obj);
                sessionsSettings2 = sessionsSettings3;
                sessionEvents2 = sessionEvents3;
                sessionDetails2 = sessionDetails3;
                firebaseApp2 = firebaseApp3;
            }
            SessionFirelogPublisherImpl sessionFirelogPublisherImpl2 = sessionFirelogPublisherImpl;
            Map<SessionSubscriber.Name, ? extends SessionSubscriber> map = (Map) obj;
            InstallationId installationId2 = installationId;
            sessionFirelogPublisherImpl2.attemptLoggingSessionEvent(sessionEvents2.buildSession(firebaseApp2, sessionDetails2, sessionsSettings2, map, installationId2.getFid(), installationId2.getAuthToken()));
            return Unit.INSTANCE;
            if (((Boolean) obj).booleanValue()) {
                this.label = 2;
                obj = InstallationId.INSTANCE.create(SessionFirelogPublisherImpl.this.firebaseInstallations, this);
                if (obj != coroutine_suspended) {
                    installationId = (InstallationId) obj;
                    sessionFirelogPublisherImpl = SessionFirelogPublisherImpl.this;
                    sessionEvents = SessionEvents.INSTANCE;
                    firebaseApp = SessionFirelogPublisherImpl.this.firebaseApp;
                    sessionDetails = this.$sessionDetails;
                    sessionsSettings = SessionFirelogPublisherImpl.this.sessionSettings;
                    this.L$0 = installationId;
                    this.L$1 = sessionFirelogPublisherImpl;
                    this.L$2 = sessionEvents;
                    this.L$3 = firebaseApp;
                    this.L$4 = sessionDetails;
                    this.L$5 = sessionsSettings;
                    this.label = 3;
                    registeredSubscribers$com_google_firebase_firebase_sessions = FirebaseSessionsDependencies.INSTANCE.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
                    if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                        firebaseApp2 = firebaseApp;
                        obj = registeredSubscribers$com_google_firebase_firebase_sessions;
                        sessionDetails2 = sessionDetails;
                        sessionEvents2 = sessionEvents;
                        sessionsSettings2 = sessionsSettings;
                        SessionFirelogPublisherImpl sessionFirelogPublisherImpl3 = sessionFirelogPublisherImpl;
                        Map<SessionSubscriber.Name, ? extends SessionSubscriber> map2 = (Map) obj;
                        InstallationId installationId3 = installationId;
                        sessionFirelogPublisherImpl3.attemptLoggingSessionEvent(sessionEvents2.buildSession(firebaseApp2, sessionDetails2, sessionsSettings2, map2, installationId3.getFid(), installationId3.getAuthToken()));
                    }
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    @Override
    public void mayLogSession(SessionDetails sessionDetails) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.backgroundDispatcher), null, null, new AnonymousClass1(sessionDetails, null), 3, null);
    }

    public final void attemptLoggingSessionEvent(SessionEvent sessionEvent) {
        try {
            this.eventGDTLogger.log(sessionEvent);
            Log.d(FirebaseSessions.TAG, "Successfully logged Session Start event.");
        } catch (RuntimeException e) {
            Log.e(FirebaseSessions.TAG, "Error logging Session Start event to DataTransport: ", e);
        }
    }

    public final Object shouldLogSession(Continuation<? super Boolean> continuation) {
        C07691 c07691;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl2;
        if (continuation instanceof C07691) {
            c07691 = (C07691) continuation;
            if ((c07691.label & Integer.MIN_VALUE) != 0) {
                c07691.label -= Integer.MIN_VALUE;
            } else {
                c07691 = new C07691(continuation);
            }
        } else {
            c07691 = new C07691(continuation);
        }
        Object registeredSubscribers$com_google_firebase_firebase_sessions = c07691.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c07691.label;
        if (i == 0) {
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
            c07691.L$0 = this;
            c07691.label = 1;
            registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(c07691);
            if (registeredSubscribers$com_google_firebase_firebase_sessions != coroutine_suspended) {
                sessionFirelogPublisherImpl = this;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            sessionFirelogPublisherImpl = (SessionFirelogPublisherImpl) c07691.L$0;
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionFirelogPublisherImpl2 = (SessionFirelogPublisherImpl) c07691.L$0;
            ResultKt.throwOnFailure(registeredSubscribers$com_google_firebase_firebase_sessions);
        }
        if (!sessionFirelogPublisherImpl2.sessionSettings.getSessionsEnabled()) {
            Log.d(FirebaseSessions.TAG, "Sessions SDK disabled through settings API. Events will not be sent.");
            return Boxing.boxBoolean(false);
        }
        if (!sessionFirelogPublisherImpl2.shouldCollectEvents()) {
            Log.d(FirebaseSessions.TAG, "Sessions SDK has dropped this session due to sampling.");
            return Boxing.boxBoolean(false);
        }
        return Boxing.boxBoolean(true);
        Collection collectionValues = ((Map) registeredSubscribers$com_google_firebase_firebase_sessions).values();
        if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
            Iterator it = collectionValues.iterator();
            do {
                if (it.hasNext()) {
                }
            } while (!((SessionSubscriber) it.next()).isDataCollectionEnabled());
            SessionsSettings sessionsSettings = sessionFirelogPublisherImpl.sessionSettings;
            c07691.L$0 = sessionFirelogPublisherImpl;
            c07691.label = 2;
            if (sessionsSettings.updateSettings(c07691) != coroutine_suspended) {
                sessionFirelogPublisherImpl2 = sessionFirelogPublisherImpl;
                if (!sessionFirelogPublisherImpl2.sessionSettings.getSessionsEnabled()) {
                    Log.d(FirebaseSessions.TAG, "Sessions SDK disabled through settings API. Events will not be sent.");
                    return Boxing.boxBoolean(false);
                }
                if (!sessionFirelogPublisherImpl2.shouldCollectEvents()) {
                    Log.d(FirebaseSessions.TAG, "Sessions SDK has dropped this session due to sampling.");
                    return Boxing.boxBoolean(false);
                }
                return Boxing.boxBoolean(true);
            }
            return coroutine_suspended;
        }
        Log.d(FirebaseSessions.TAG, "Sessions SDK disabled through data collection. Events will not be sent.");
        return Boxing.boxBoolean(false);
    }

    private final boolean shouldCollectEvents() {
        return randomValueForSampling <= this.sessionSettings.getSamplingRate();
    }
}
