.class public interface abstract Lim/zego/zim/callback/ZIMMediaMessageSentCallback;
.super Ljava/lang/Object;
.source "ZIMMediaMessageSentCallback.java"


# virtual methods
.method public abstract onMediaUploadingProgress(Lim/zego/zim/entity/ZIMMediaMessage;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "currentFileSize",
            "totalFileSize"
        }
    .end annotation
.end method

.method public abstract onMessageAttached(Lim/zego/zim/entity/ZIMMediaMessage;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract onMessageSent(Lim/zego/zim/entity/ZIMMediaMessage;Lim/zego/zim/entity/ZIMError;)V
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
