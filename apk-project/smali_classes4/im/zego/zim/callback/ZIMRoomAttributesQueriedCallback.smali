.class public interface abstract Lim/zego/zim/callback/ZIMRoomAttributesQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMRoomAttributesQueriedCallback.java"


# virtual methods
.method public abstract onRoomAttributesQueried(Ljava/lang/String;Ljava/util/HashMap;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "roomAttributes",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
