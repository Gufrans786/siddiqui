.class public abstract Lim/zego/zpns/ZPNsMessageReceiver;
.super Lim/zego/zpns/internal/basic/IntentReceiver;
.source "ZPNsMessageReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZPNsMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lim/zego/zpns/internal/basic/IntentReceiver;-><init>()V

    return-void
.end method

.method private getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "im.zego.zim.zpns.intent.action.MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ZPNsMessageReceiver"

    const-string/jumbo v4, "zego_push_message"

    if-eqz v2, :cond_0

    const-string v2, "on_registered"

    invoke-direct {p0, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lim/zego/zpns/entity/ZPNsRegisterMessage;

    .line 25
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getCommandResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->setDeviceToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getCommandResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v1

    const-string v2, "1.0"

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Lim/zego/zpns/internal/util/PushIDGenerateTools;->getPushID(Ljava/lang/String;ZLim/zego/zpns/enums/ZPNsConstants$PushSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->setPushID(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2, v0}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->setCommandResult(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRegistered command message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->onRegistered(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsRegisterMessage;)V

    return-void

    .line 31
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "on_through_message"

    invoke-direct {p0, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lim/zego/zpns/entity/ZPNsMessage;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onThroughMessageReceived push message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->onThroughMessageReceived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    return-void

    .line 35
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "on_notification_clicked"

    invoke-direct {p0, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lim/zego/zpns/entity/ZPNsMessage;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotificationClicked push message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->onNotificationClicked(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    return-void

    .line 39
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "on_notification_arrived"

    invoke-direct {p0, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lim/zego/zpns/entity/ZPNsMessage;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotificationArrived push message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lim/zego/zpns/ZPNsMessageReceiver;->onNotificationArrived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    :cond_3
    return-void
.end method

.method protected abstract onNotificationArrived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
.end method

.method protected abstract onNotificationClicked(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
.end method

.method protected abstract onRegistered(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsRegisterMessage;)V
.end method

.method protected abstract onThroughMessageReceived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
.end method
