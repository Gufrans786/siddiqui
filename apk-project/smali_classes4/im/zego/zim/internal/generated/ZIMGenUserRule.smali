.class final Lim/zego/zim/internal/generated/ZIMGenUserRule;
.super Ljava/lang/Object;
.source "ZIMGenUserRule.java"


# instance fields
.field IsNullFromJava:Z

.field OfflinePushRule:Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offlinePushRule",
            "isNullFromJava"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->OfflinePushRule:Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;

    .line 16
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->IsNullFromJava:Z

    return v0
.end method

.method public getOfflinePushRule()Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->OfflinePushRule:Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;

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

    .line 25
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->IsNullFromJava:Z

    return-void
.end method

.method public setOfflinePushRule(Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlinePushRule"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->OfflinePushRule:Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenUserRule{OfflinePushRule="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->OfflinePushRule:Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserRule;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
