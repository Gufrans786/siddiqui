.class public interface abstract Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$CompletionEvent;
.super Ljava/lang/Object;
.source "ChallengeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletionEvent"
.end annotation


# virtual methods
.method public abstract getTransactionId()Ljava/lang/String;
.end method

.method public abstract getTransactionStatus()Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;
.end method
