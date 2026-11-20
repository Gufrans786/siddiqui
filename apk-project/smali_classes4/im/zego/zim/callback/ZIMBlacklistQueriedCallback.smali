.class public interface abstract Lim/zego/zim/callback/ZIMBlacklistQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMBlacklistQueriedCallback.java"


# virtual methods
.method public abstract onBlacklistQueried(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blacklist",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
