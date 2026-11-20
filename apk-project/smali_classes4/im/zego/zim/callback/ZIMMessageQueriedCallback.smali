.class public interface abstract Lim/zego/zim/callback/ZIMMessageQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMMessageQueriedCallback.java"


# virtual methods
.method public abstract onMessageQueried(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "messageList",
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
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
