.class final Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupListQueryConfig.java"


# instance fields
.field IsNullFromJava:Z

.field NextFlag:J

.field UserIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
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

.method public constructor <init>(JLjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nextFlag",
            "userIDs",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->NextFlag:J

    .line 21
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->UserIDs:Ljava/util/ArrayList;

    .line 22
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getNextFlag()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->NextFlag:J

    return-wide v0
.end method

.method public getUserIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->UserIDs:Ljava/util/ArrayList;

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

    .line 32
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setNextFlag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextFlag"
        }
    .end annotation

    .line 26
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->NextFlag:J

    return-void
.end method

.method public setUserIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userIDs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->UserIDs:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupListQueryConfig{NextFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->NextFlag:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->UserIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
