.class public Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;
.super Ljava/lang/Object;
.source "ZIMGroupJoinApplicationSendConfig.java"


# instance fields
.field public pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

.field public wording:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;->wording:Ljava/lang/String;

    return-void
.end method
