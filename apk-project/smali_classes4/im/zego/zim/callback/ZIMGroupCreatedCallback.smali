.class public interface abstract Lim/zego/zim/callback/ZIMGroupCreatedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupCreatedCallback.java"


# virtual methods
.method public abstract onGroupCreated(Lim/zego/zim/entity/ZIMGroupFullInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "userList",
            "errorUserList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/entity/ZIMGroupFullInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
