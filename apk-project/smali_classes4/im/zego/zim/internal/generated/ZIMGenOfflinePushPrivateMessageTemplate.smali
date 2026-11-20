.class final Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;
.super Ljava/lang/Object;
.source "ZIMGenOfflinePushPrivateMessageTemplate.java"


# instance fields
.field ContentParameters:Ljava/lang/String;

.field IsNullFromJava:Z

.field TemplateID:Ljava/lang/String;

.field TitleParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "templateID",
            "titleParameters",
            "contentParameters",
            "isNullFromJava"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TemplateID:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TitleParameters:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->ContentParameters:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getContentParameters()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->ContentParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->IsNullFromJava:Z

    return v0
.end method

.method public getTemplateID()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TemplateID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleParameters()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TitleParameters:Ljava/lang/String;

    return-object v0
.end method

.method public setContentParameters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentParameters"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->ContentParameters:Ljava/lang/String;

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

    .line 41
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->IsNullFromJava:Z

    return-void
.end method

.method public setTemplateID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "templateID"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TemplateID:Ljava/lang/String;

    return-void
.end method

.method public setTitleParameters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleParameters"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TitleParameters:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenOfflinePushPrivateMessageTemplate{TemplateID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TemplateID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TitleParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->TitleParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ContentParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->ContentParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
