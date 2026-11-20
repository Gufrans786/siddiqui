.class public Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;
.super Ljava/lang/Object;
.source "ZIMCallInvitationQueryConfig.java"


# instance fields
.field public count:I

.field public nextFlag:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;->count:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;->nextFlag:J

    return-void
.end method
