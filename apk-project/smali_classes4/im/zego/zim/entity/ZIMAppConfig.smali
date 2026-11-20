.class public Lim/zego/zim/entity/ZIMAppConfig;
.super Ljava/lang/Object;
.source "ZIMAppConfig.java"


# instance fields
.field public appID:J

.field public appSign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMAppConfig;->appID:J

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMAppConfig;->appSign:Ljava/lang/String;

    return-void
.end method
