.class public interface abstract Lim/zego/zim/callback/ZIMGroupMemberMutedListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupMemberMutedListQueriedCallback.java"


# virtual methods
.method public abstract onGroupMemberListQueried(Ljava/lang/String;JLjava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "nextFlag",
            "userList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
