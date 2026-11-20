.class public interface abstract Lim/zego/zim/callback/ZIMRoomMembersAttributesQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMRoomMembersAttributesQueriedCallback.java"


# virtual methods
.method public abstract onRoomMembersAttributesQueried(Ljava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "infos",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
