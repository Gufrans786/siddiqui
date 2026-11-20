.class public interface abstract Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;
.super Ljava/lang/Object;
.source "ChallengeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorEvent"
.end annotation


# virtual methods
.method public abstract getErrorCode()Ljava/lang/String;
.end method

.method public abstract getErrorDetails()Ljava/lang/String;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method
