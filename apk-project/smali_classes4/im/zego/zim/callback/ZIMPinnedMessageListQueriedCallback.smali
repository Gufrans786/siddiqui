.class public interface abstract Lim/zego/zim/callback/ZIMPinnedMessageListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMPinnedMessageListQueriedCallback.java"


# virtual methods
.method public abstract onPinnedMessageListQueried(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
