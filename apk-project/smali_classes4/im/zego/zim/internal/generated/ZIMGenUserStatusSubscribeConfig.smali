.class final Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;
.super Ljava/lang/Object;
.source "ZIMGenUserStatusSubscribeConfig.java"


# instance fields
.field IsNullFromJava:Z

.field SubscriptionDuration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subscriptionDuration",
            "isNullFromJava"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->SubscriptionDuration:I

    .line 16
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getSubscriptionDuration()I
    .locals 1

    .line 19
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->SubscriptionDuration:I

    return v0
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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setSubscriptionDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionDuration"
        }
    .end annotation

    .line 21
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->SubscriptionDuration:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenUserStatusSubscribeConfig{SubscriptionDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->SubscriptionDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
