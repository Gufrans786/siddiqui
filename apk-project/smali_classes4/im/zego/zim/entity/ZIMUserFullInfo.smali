.class public Lim/zego/zim/entity/ZIMUserFullInfo;
.super Ljava/lang/Object;
.source "ZIMUserFullInfo.java"


# instance fields
.field public baseInfo:Lim/zego/zim/entity/ZIMUserInfo;

.field public extendedData:Ljava/lang/String;

.field public userAvatarUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lim/zego/zim/entity/ZIMUserInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMUserInfo;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMUserInfo;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->userAvatarUrl:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->extendedData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMUserFullInfo{baseInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAvatarUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', extendedData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->extendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
