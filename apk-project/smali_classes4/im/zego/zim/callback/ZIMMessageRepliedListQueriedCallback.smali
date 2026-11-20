.class public interface abstract Lim/zego/zim/callback/ZIMMessageRepliedListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMMessageRepliedListQueriedCallback.java"


# virtual methods
.method public abstract onMessageRepliedListQueried(Ljava/util/ArrayList;JLim/zego/zim/entity/ZIMMessageRootRepliedInfo;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageList",
            "nextFlag",
            "rootRepliedInfo",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;J",
            "Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
