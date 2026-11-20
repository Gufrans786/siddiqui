.class public Lim/zego/zim/entity/ZIMSelfUserInfo;
.super Ljava/lang/Object;
.source "ZIMSelfUserInfo.java"


# instance fields
.field public userFullInfo:Lim/zego/zim/entity/ZIMUserFullInfo;

.field public userRule:Lim/zego/zim/entity/ZIMUserRule;

.field public userStatus:Lim/zego/zim/entity/ZIMUserStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lim/zego/zim/entity/ZIMUserRule;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMUserRule;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMSelfUserInfo;->userRule:Lim/zego/zim/entity/ZIMUserRule;

    .line 9
    new-instance v0, Lim/zego/zim/entity/ZIMUserFullInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMUserFullInfo;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMSelfUserInfo;->userFullInfo:Lim/zego/zim/entity/ZIMUserFullInfo;

    .line 10
    new-instance v0, Lim/zego/zim/entity/ZIMUserStatus;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMUserStatus;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMSelfUserInfo;->userStatus:Lim/zego/zim/entity/ZIMUserStatus;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMSelfUserInfo{userRule="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMSelfUserInfo;->userRule:Lim/zego/zim/entity/ZIMUserRule;

    .line 16
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMUserRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userFullInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMSelfUserInfo;->userFullInfo:Lim/zego/zim/entity/ZIMUserFullInfo;

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMUserFullInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMSelfUserInfo;->userStatus:Lim/zego/zim/entity/ZIMUserStatus;

    .line 17
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMUserStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
