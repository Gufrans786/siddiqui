.class public Lim/zego/zpns_reactnative_sdk/internal/ZPNsFCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZPNsFCMReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZPNsFCM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZPNs Flutter FCM message received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZPNsFCM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    const-string p1, "broadcast received but intent contained no extras to process RemoteMessage. Operation cancelled."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "print intent extras: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 34
    const-string/jumbo p1, "this is notification, ignore"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v1, "title"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, ""

    if-eqz p2, :cond_3

    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p2, v2

    .line 48
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v3, "content"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 53
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 55
    invoke-static {}, Lim/zego/zpns/entity/ZPNsMessage;->builder()Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object v3

    sget-object v4, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 56
    invoke-virtual {v3, v4}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->pushSource(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v0}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->pushMessage(Ljava/lang/Object;)Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->title(Ljava/lang/String;)Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object p2

    .line 59
    invoke-virtual {p2, v1}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->content(Ljava/lang/String;)Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object p2

    .line 60
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->extras(Ljava/lang/String;)Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object p2

    sget-object v0, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_THROUGH:Lim/zego/zpns/enums/ZPNsType;

    .line 61
    invoke-virtual {p2, v0}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->pushType(Lim/zego/zpns/enums/ZPNsType;)Lim/zego/zpns/entity/ZPNsMessage$Builder;

    move-result-object p2

    .line 63
    invoke-static {p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginUtils;->isApplicationForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    invoke-static {}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getInstance()Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    move-result-object v0

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->build()Lim/zego/zpns/entity/ZPNsMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->onThroughForegroundMessage(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    return-void

    .line 66
    :cond_5
    invoke-static {}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getInstance()Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    move-result-object v0

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage$Builder;->build()Lim/zego/zpns/entity/ZPNsMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->onThroughBackgroundMessage(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    return-void
.end method
