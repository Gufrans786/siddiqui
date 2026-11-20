.class final Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;
.super Ljava/lang/Object;
.source "ZIMGenFriendRelationInfo.java"


# instance fields
.field IsNullFromJava:Z

.field Type:I

.field UserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "userID",
            "isNullFromJava"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->Type:I

    .line 18
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->UserID:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->Type:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->UserID:Ljava/lang/String;

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

    .line 29
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 23
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->Type:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->UserID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenFriendRelationInfo{Type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
