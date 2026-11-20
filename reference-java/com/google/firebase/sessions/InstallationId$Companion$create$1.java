package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.InstallationId$Companion", f = "InstallationId.kt", i = {0, 1}, l = {31, 39}, m = "create", n = {"firebaseInstallations", "authToken"}, s = {"L$0", "L$0"})
final class InstallationId$Companion$create$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final InstallationId.Companion this$0;

    InstallationId$Companion$create$1(InstallationId.Companion companion, Continuation<? super InstallationId$Companion$create$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.create(null, this);
    }
}
