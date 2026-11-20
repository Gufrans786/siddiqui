.class public interface abstract Lim/zego/zim/callback/ZIMCallInvitationListQueriedCallback;
.super Ljava/lang/Object;
.source "ZIMCallInvitationListQueriedCallback.java"


# virtual methods
.method public abstract onCallInvitationListQueried(Ljava/util/ArrayList;JLim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callList",
            "nextFlag",
            "errorInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMCallInfo;",
            ">;J",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation
.end method
