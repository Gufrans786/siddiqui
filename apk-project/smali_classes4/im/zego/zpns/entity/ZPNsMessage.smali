.class public Lim/zego/zpns/entity/ZPNsMessage;
.super Ljava/lang/Object;
.source "ZPNsMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/zego/zpns/entity/ZPNsMessage$Builder;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private notifyId:I

.field private payload:Ljava/lang/String;

.field private pushMessage:Ljava/lang/Object;

.field private pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field private pushType:Lim/zego/zpns/enums/ZPNsType;

.field private requestID:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->title:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->content:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lim/zego/zpns/entity/ZPNsMessage$Builder;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$000(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->title:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$100(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->content:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$200(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Lim/zego/zpns/enums/ZPNsType;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushType:Lim/zego/zpns/enums/ZPNsType;

    .line 68
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$300(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 69
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$400(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushMessage:Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$500(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->extras:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$600(Lim/zego/zpns/entity/ZPNsMessage$Builder;)I

    move-result v0

    iput v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->notifyId:I

    .line 72
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$700(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->requestID:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->access$800(Lim/zego/zpns/entity/ZPNsMessage$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->payload:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lim/zego/zpns/entity/ZPNsMessage$Builder;Lim/zego/zpns/entity/ZPNsMessage$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lim/zego/zpns/entity/ZPNsMessage;-><init>(Lim/zego/zpns/entity/ZPNsMessage$Builder;)V

    return-void
.end method

.method public static builder()Lim/zego/zpns/entity/ZPNsMessage$Builder;
    .locals 1

    .line 155
    new-instance v0, Lim/zego/zpns/entity/ZPNsMessage$Builder;

    invoke-direct {v0}, Lim/zego/zpns/entity/ZPNsMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyId()I
    .locals 1

    .line 96
    iget v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->notifyId:I

    return v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getPushMessage()Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;
    .locals 1

    .line 130
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object v0
.end method

.method public getPushType()Lim/zego/zpns/enums/ZPNsType;
    .locals 1

    .line 122
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushType:Lim/zego/zpns/enums/ZPNsType;

    return-object v0
.end method

.method public getRequestID()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lim/zego/zpns/entity/ZPNsMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->extras:Ljava/lang/String;

    return-void
.end method

.method public setNotifyId(I)V
    .locals 0

    .line 100
    iput p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->notifyId:I

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->payload:Ljava/lang/String;

    return-void
.end method

.method public setPushMessage(Ljava/lang/Object;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushMessage:Ljava/lang/Object;

    return-void
.end method

.method public setPushSource(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-void
.end method

.method public setPushType(Lim/zego/zpns/enums/ZPNsType;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushType:Lim/zego/zpns/enums/ZPNsType;

    return-void
.end method

.method public setRequestID(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->requestID:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lim/zego/zpns/entity/ZPNsMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', payload=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', notifyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', extras=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->extras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushType:Lim/zego/zpns/enums/ZPNsType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushSource:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pushMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/entity/ZPNsMessage;->pushMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
