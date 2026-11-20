.class public interface abstract Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;
.super Ljava/lang/Object;
.source "ChallengeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;,
        Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$CompletionEvent;
    }
.end annotation


# static fields
.field public static final TIMEOUT_ERROR_CODE:Ljava/lang/String; = "000"


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$CompletionEvent;)V
.end method

.method public abstract onFailure(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;)V
.end method
