.class public interface abstract Lim/zego/zim/callback/ZIMConversationListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMConversationListQueriedCallback.java"


# virtual methods
.method public abstract onConversationListQueried(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conversationList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMConversation;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
