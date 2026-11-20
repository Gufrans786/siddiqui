.class public interface abstract Lim/zego/zim/callback/ZIMGroupApplicationListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupApplicationListQueriedCallback.java"


# virtual methods
.method public abstract onGroupApplicationListQueried(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupApplicationInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
