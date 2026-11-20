.class final Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;
.super Ljava/lang/Object;
.source "ZIMGenUserOfflinePushRule.java"


# instance fields
.field IsNullFromJava:Z

.field NotToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field OnlinePlatforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "onlinePlatforms",
            "notToReceiveOfflinePushPlatforms",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->OnlinePlatforms:Ljava/util/ArrayList;

    .line 22
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->NotToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;

    .line 23
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->IsNullFromJava:Z

    return v0
.end method

.method public getNotToReceiveOfflinePushPlatforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->NotToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOnlinePlatforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->OnlinePlatforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setIsNullFromJava(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNullFromJava"
        }
    .end annotation

    .line 40
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->IsNullFromJava:Z

    return-void
.end method

.method public setNotToReceiveOfflinePushPlatforms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notToReceiveOfflinePushPlatforms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->NotToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnlinePlatforms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlinePlatforms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->OnlinePlatforms:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenUserOfflinePushRule{OnlinePlatforms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->OnlinePlatforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NotToReceiveOfflinePushPlatforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->NotToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
