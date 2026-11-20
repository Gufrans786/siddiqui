.class public interface abstract Lim/zego/zim/callback/ZIMConversationMarkSetCallback;
.super Ljava/lang/Object;
.source "ZIMConversationMarkSetCallback.java"


# virtual methods
.method public abstract onConversationMarkSet(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failedConversationInfos",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMConversationBaseInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
