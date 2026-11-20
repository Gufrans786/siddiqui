.class public Lim/zego/zim/entity/ZIMLogConfig;
.super Ljava/lang/Object;
.source "ZIMLogConfig.java"


# instance fields
.field public logPath:Ljava/lang/String;

.field public logSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMLogConfig;->logPath:Ljava/lang/String;

    const-wide/32 v0, 0x500000

    .line 25
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMLogConfig;->logSize:J

    return-void
.end method
