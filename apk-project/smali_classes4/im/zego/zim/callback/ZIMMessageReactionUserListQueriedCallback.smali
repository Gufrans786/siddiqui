.class public interface abstract Lim/zego/zim/callback/ZIMMessageReactionUserListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMMessageReactionUserListQueriedCallback.java"


# virtual methods
.method public abstract onMessageReactionUserListQueried(Lim/zego/zim/entity/ZIMMessage;Ljava/util/ArrayList;Ljava/lang/String;JILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "userInfoList",
            "reactionType",
            "nextFlag",
            "totalCount",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/entity/ZIMMessage;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
