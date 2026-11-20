.class public interface abstract Lim/zego/zim/callback/ZIMConversationsSearchedCallback;
.super Ljava/lang/Object;
.source "ZIMConversationsSearchedCallback.java"


# virtual methods
.method public abstract onConversationsSearched(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationSearchInfoList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMConversationSearchInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
