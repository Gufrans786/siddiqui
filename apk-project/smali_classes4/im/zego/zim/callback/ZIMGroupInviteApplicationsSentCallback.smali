.class public interface abstract Lim/zego/zim/callback/ZIMGroupInviteApplicationsSentCallback;
.super Ljava/lang/Object;
.source "ZIMGroupInviteApplicationsSentCallback.java"


# virtual methods
.method public abstract onGroupInviteApplicationsSent(Ljava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "errorUserList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
