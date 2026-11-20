.class public Lim/zego/zpns/entity/ZPNsRegisterMessage;
.super Ljava/lang/Object;
.source "ZPNsRegisterMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;
    }
.end annotation


# instance fields
.field private commandResult:Ljava/lang/String;

.field private deviceToken:Ljava/lang/String;

.field private errorCode:Lim/zego/zpns/enums/ZPNsErrorCode;

.field private msg:Ljava/lang/String;

.field private pushCmdType:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

.field private pushID:Ljava/lang/String;

.field private pushMessage:Ljava/lang/Object;

.field private pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;


# direct methods
.method private constructor <init>(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->SUCCESS:Lim/zego/zpns/enums/ZPNsErrorCode;

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->errorCode:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->msg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushID:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$000(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Lim/zego/zpns/enums/ZPNsErrorCode;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->errorCode:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 54
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$100(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->msg:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$200(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->commandResult:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$300(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushCmdType:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    .line 57
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$400(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 58
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$500(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushMessage:Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->access$600(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->deviceToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;Lim/zego/zpns/entity/ZPNsRegisterMessage$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lim/zego/zpns/entity/ZPNsRegisterMessage;-><init>(Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;)V

    return-void
.end method

.method public static builder()Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;
    .locals 1

    .line 63
    new-instance v0, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;

    invoke-direct {v0}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCommandResult()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->commandResult:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lim/zego/zpns/enums/ZPNsErrorCode;
    .locals 1

    .line 67
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->errorCode:Lim/zego/zpns/enums/ZPNsErrorCode;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPushCmdType()Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;
    .locals 1

    .line 99
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushCmdType:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-object v0
.end method

.method public getPushID()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushID:Ljava/lang/String;

    return-object v0
.end method

.method public getPushMessage()Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;
    .locals 1

    .line 91
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object v0
.end method

.method public setCommandResult(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->commandResult:Ljava/lang/String;

    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->deviceToken:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Lim/zego/zpns/enums/ZPNsErrorCode;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->errorCode:Lim/zego/zpns/enums/ZPNsErrorCode;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPushCmdType(Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushCmdType:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-void
.end method

.method public setPushID(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushID:Ljava/lang/String;

    return-void
.end method

.method public setPushMessage(Ljava/lang/Object;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushMessage:Ljava/lang/Object;

    return-void
.end method

.method public setPushSource(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{  errorCode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->errorCode:Lim/zego/zpns/enums/ZPNsErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', commandResult=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->commandResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushCmdType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushCmdType:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->pushMessage:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "is null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', deviceToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsRegisterMessage;->deviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
