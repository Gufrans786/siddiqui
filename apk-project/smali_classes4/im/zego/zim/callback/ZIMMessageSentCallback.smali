.class public interface abstract Lim/zego/zim/callback/ZIMMessageSentCallback;
.super Ljava/lang/Object;
.source "ZIMMessageSentCallback.java"


# virtual methods
.method public abstract onMessageAttached(Lim/zego/zim/entity/ZIMMessage;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract onMessageSent(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "errorInfo"
        }
    .end annotation
.end method
