.class public interface abstract Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelled()V
.end method

.method public abstract completed(Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;)V
.end method

.method public abstract protocolError(Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;)V
.end method

.method public abstract runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V
.end method

.method public abstract timedout()V
.end method
