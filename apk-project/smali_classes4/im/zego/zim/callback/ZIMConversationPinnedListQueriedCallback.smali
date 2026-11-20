.class public interface abstract Lim/zego/zim/callback/ZIMConversationPinnedListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMConversationPinnedListQueriedCallback.java"


# virtual methods
.method public abstract onConversationPinnedListQueried(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
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
