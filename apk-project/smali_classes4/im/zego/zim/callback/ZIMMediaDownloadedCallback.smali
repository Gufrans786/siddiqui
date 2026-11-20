.class public interface abstract Lim/zego/zim/callback/ZIMMediaDownloadedCallback;
.super Ljava/lang/Object;
.source "ZIMMediaDownloadedCallback.java"


# virtual methods
.method public abstract onMediaDownloaded(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V
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

.method public abstract onMediaDownloadingProgress(Lim/zego/zim/entity/ZIMMessage;JJ)V
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
