.class public Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;
.super Ljava/lang/Object;
.source "ZIMRoomAttributesBatchOperationConfig.java"


# instance fields
.field public isDeleteAfterOwnerLeft:Z

.field public isForce:Z

.field public isUpdateOwner:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;->isForce:Z

    .line 22
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;->isDeleteAfterOwnerLeft:Z

    .line 23
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;->isUpdateOwner:Z

    return-void
.end method
