.class public Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGroupMemberQueryConfig.java"


# instance fields
.field public count:I

.field public nextFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;->nextFlag:I

    .line 18
    iput v0, p0, Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;->count:I

    return-void
.end method
