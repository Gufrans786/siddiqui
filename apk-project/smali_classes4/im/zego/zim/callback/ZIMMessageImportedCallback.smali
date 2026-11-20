.class public interface abstract Lim/zego/zim/callback/ZIMMessageImportedCallback;
.super Ljava/lang/Object;
.source "ZIMMessageImportedCallback.java"


# virtual methods
.method public abstract onMessageImported(Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorInfo"
        }
    .end annotation
.end method

.method public abstract onMessageImportingProgress(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exportedMessageCount",
            "totalMessageCount"
        }
    .end annotation
.end method
