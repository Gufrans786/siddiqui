.class public interface abstract Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMMessageReceiptsInfoQueriedCallback.java"


# virtual methods
.method public abstract onMessageReceiptsInfoQueried(Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "infos",
            "errorMessageIDs",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReceiptInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
