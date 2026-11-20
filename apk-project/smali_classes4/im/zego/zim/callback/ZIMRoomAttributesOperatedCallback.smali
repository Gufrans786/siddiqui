.class public interface abstract Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;
.super Ljava/lang/Object;
.source "ZIMRoomAttributesOperatedCallback.java"


# virtual methods
.method public abstract onRoomAttributesOperated(Ljava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "errorKeys",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
