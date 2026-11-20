.class public interface abstract Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupMembersMutedCallback.java"


# virtual methods
.method public abstract onGroupMembersMuted(Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
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
            "groupID",
            "isMute",
            "duration",
            "mutedMemberIDs",
            "errorUserList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
