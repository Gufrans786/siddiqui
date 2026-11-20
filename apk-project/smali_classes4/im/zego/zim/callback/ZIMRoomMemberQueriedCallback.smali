.class public interface abstract Lim/zego/zim/callback/ZIMRoomMemberQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMRoomMemberQueriedCallback.java"


# virtual methods
.method public abstract onRoomMemberQueried(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "memberList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
