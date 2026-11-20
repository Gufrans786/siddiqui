.class public interface abstract Lim/zego/zim/callback/ZIMGroupMemberNicknameUpdatedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupMemberNicknameUpdatedCallback.java"


# virtual methods
.method public abstract onGroupMemberNicknameUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMError;)V
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
            "nickname",
            "errorInfo"
        }
    .end annotation
.end method
