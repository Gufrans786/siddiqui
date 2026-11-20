.class public interface abstract Lim/zego/zim/callback/ZIMMessageSentFullCallback;
.super Ljava/lang/Object;
.source "ZIMMessageSentFullCallback.java"


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

.method public abstract onMultipleMediaUploadingProgress(Lim/zego/zim/entity/ZIMMultipleMessage;JJIJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "currentFileSize",
            "totalFileSize",
            "messageInfoIndex",
            "currentIndexFileSize",
            "totalIndexFileSize"
        }
    .end annotation
.end method
