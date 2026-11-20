.class public interface abstract Lim/zego/zim/callback/ZIMFriendApplicationListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMFriendApplicationListQueriedCallback.java"


# virtual methods
.method public abstract onFriendApplicationListQueried(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendApplicationInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
