.class public interface abstract Lim/zego/zim/callback/ZIMMessagesSearchedCallback;
.super Ljava/lang/Object;
.source "ZIMMessagesSearchedCallback.java"


# virtual methods
.method public abstract onMessagesSearched(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "messageList",
            "nextMessage",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lim/zego/zim/enums/ZIMConversationType;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMMessage;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
