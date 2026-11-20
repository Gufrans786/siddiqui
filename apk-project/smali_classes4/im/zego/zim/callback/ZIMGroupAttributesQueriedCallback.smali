.class public interface abstract Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMGroupAttributesQueriedCallback.java"


# virtual methods
.method public abstract onGroupAttributesQueried(Ljava/lang/String;Ljava/util/HashMap;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "groupAttributes",
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
