.class final Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;
.super Ljava/lang/Object;
.source "ZIMGenGroupAttributesUpdateInfo.java"


# instance fields
.field Action:I

.field GroupAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field IsNullFromJava:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "groupAttributes",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->Action:I

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->GroupAttributes:Ljava/util/HashMap;

    .line 22
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 25
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->Action:I

    return v0
.end method

.method public getGroupAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->GroupAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->IsNullFromJava:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 26
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->Action:I

    return-void
.end method

.method public setGroupAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupAttributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->GroupAttributes:Ljava/util/HashMap;

    return-void
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

    .line 34
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupAttributesUpdateInfo{Action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->Action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->GroupAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
