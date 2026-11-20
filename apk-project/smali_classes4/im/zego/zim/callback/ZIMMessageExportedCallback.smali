.class public interface abstract Lim/zego/zim/callback/ZIMMessageExportedCallback;
.super Ljava/lang/Object;
.source "ZIMMessageExportedCallback.java"


# virtual methods
.method public abstract onMessageExported(Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorInfo"
        }
    .end annotation
.end method

.method public abstract onMessageExportingProgress(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "importedMessageCount",
            "totalMessageCount"
        }
    .end annotation
.end method
