.class public interface abstract Lim/zego/zim/callback/ZIMCallCancelSentCallback;
.super Ljava/lang/Object;
.source "ZIMCallCancelSentCallback.java"


# virtual methods
.method public abstract onCallCancelSent(Ljava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callID",
            "errorInvitees",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
