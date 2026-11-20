.class public interface abstract Lim/zego/zim/callback/ZIMGroupMembersSearchedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupMembersSearchedCallback.java"


# virtual methods
.method public abstract onGroupMembersSearched(Ljava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "userList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
