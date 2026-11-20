.class public Lim/zego/zim/entity/ZIMMessageDeleteConfig;
.super Ljava/lang/Object;
.source "ZIMMessageDeleteConfig.java"


# instance fields
.field public isAlsoDeleteServerMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageDeleteConfig;->isAlsoDeleteServerMessage:Z

    return-void
.end method
