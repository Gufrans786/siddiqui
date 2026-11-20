.class public interface abstract Lim/zego/zim/callback/ZIMGroupsSearchedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupsSearchedCallback.java"


# virtual methods
.method public abstract onGroupsSearched(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupSearchInfoList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupSearchInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
