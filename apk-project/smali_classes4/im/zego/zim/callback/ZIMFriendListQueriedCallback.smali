.class public interface abstract Lim/zego/zim/callback/ZIMFriendListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMFriendListQueriedCallback.java"


# virtual methods
.method public abstract onFriendListQueried(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "friendList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
