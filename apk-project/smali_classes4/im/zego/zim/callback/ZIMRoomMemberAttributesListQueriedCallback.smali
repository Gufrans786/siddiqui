.class public interface abstract Lim/zego/zim/callback/ZIMRoomMemberAttributesListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMRoomMemberAttributesListQueriedCallback.java"


# virtual methods
.method public abstract onRoomMemberAttributesListQueried(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "infos",
            "nextFlag",
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
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
