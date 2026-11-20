.class public interface abstract Lim/zego/zim/callback/ZIMUsersStatusSubscribedCallback;
.super Ljava/lang/Object;
.source "ZIMUsersStatusSubscribedCallback.java"


# virtual methods
.method public abstract onUsersStatusSubscribed(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorUserList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
