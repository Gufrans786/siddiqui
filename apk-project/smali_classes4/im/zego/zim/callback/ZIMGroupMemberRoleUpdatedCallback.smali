.class public interface abstract Lim/zego/zim/callback/ZIMGroupMemberRoleUpdatedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupMemberRoleUpdatedCallback.java"


# virtual methods
.method public abstract onGroupMemberRoleUpdated(Ljava/lang/String;Ljava/lang/String;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "forUserID",
            "role",
            "errorInfo"
        }
    .end annotation
.end method
