.class public Lim/zego/zim/entity/ZIMUserStatusSubscription;
.super Ljava/lang/Object;
.source "ZIMUserStatusSubscription.java"


# instance fields
.field public subscribeExpiredTime:J

.field public userStatus:Lim/zego/zim/entity/ZIMUserStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lim/zego/zim/entity/ZIMUserStatus;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMUserStatus;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMUserStatusSubscription;->userStatus:Lim/zego/zim/entity/ZIMUserStatus;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMUserStatusSubscription;->subscribeExpiredTime:J

    return-void
.end method
