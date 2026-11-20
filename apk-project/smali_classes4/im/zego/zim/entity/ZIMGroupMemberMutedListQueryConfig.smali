.class public Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGroupMemberMutedListQueryConfig.java"


# instance fields
.field public count:I

.field public nextFlag:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;->nextFlag:J

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;->count:I

    return-void
.end method
