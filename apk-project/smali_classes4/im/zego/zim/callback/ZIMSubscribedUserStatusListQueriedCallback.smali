.class public interface abstract Lim/zego/zim/callback/ZIMSubscribedUserStatusListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMSubscribedUserStatusListQueriedCallback.java"


# virtual methods
.method public abstract onSubscribedUserStatusListQueried(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userStatusSubscriptionList",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserStatusSubscription;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
