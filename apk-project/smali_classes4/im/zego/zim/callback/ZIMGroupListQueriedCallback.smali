.class public interface abstract Lim/zego/zim/callback/ZIMGroupListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupListQueriedCallback.java"


# virtual methods
.method public abstract onGroupListQueried(Ljava/util/ArrayList;JLim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroup;",
            ">;J",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
