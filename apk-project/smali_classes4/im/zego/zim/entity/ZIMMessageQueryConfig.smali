.class public Lim/zego/zim/entity/ZIMMessageQueryConfig;
.super Ljava/lang/Object;
.source "ZIMMessageQueryConfig.java"


# instance fields
.field public count:I

.field public isPreferQueryFromServer:Z

.field public nextMessage:Lim/zego/zim/entity/ZIMMessage;

.field public reverse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->nextMessage:Lim/zego/zim/entity/ZIMMessage;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->count:I

    .line 27
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->reverse:Z

    .line 28
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->isPreferQueryFromServer:Z

    return-void
.end method
