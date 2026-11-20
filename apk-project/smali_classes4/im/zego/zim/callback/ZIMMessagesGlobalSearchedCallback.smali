.class public interface abstract Lim/zego/zim/callback/ZIMMessagesGlobalSearchedCallback;
.super Ljava/lang/Object;
.source "ZIMMessagesGlobalSearchedCallback.java"


# virtual methods
.method public abstract onMessagesGlobalSearched(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageList",
            "nextMessage",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMMessage;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
