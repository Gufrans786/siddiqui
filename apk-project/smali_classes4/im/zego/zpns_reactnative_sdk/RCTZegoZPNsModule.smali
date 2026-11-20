.class public Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RCTZegoZPNsModule.java"


# static fields
.field public static final Prefix:Ljava/lang/String; = "im.zego.zpns.reactnative."

.field public static backgroundEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/facebook/react/bridge/WritableMap;",
            "Lim/zego/zpns/entity/ZPNsMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field public static clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

.field public static isBackgroundMessageHandleSet:Ljava/lang/Boolean;

.field public static reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->isBackgroundMessageHandleSet:Ljava/lang/Boolean;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->backgroundEventList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 62
    sput-object p1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 63
    sput-object p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->plugin_instance:Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;

    return-void
.end method

.method private getUseWakeFulService(Lim/zego/zpns/entity/ZPNsMessage;)Z
    .locals 5

    const-string v0, "FCM message priority: "

    .line 220
    invoke-virtual {p1}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v1

    sget-object v2, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {p1}, Lim/zego/zpns/entity/ZPNsMessage;->getPushMessage()Ljava/lang/Object;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 224
    const-string v2, "getPriority"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 226
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v2, :cond_0

    return v2

    :catch_0
    :cond_0
    return v3
.end method

.method static synthetic lambda$registerPush$0()V
    .locals 3

    .line 128
    sget-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

    if-eqz v0, :cond_0

    sget-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_0

    .line 129
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 130
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "im.zego.zpns.reactnative.notificationClicked"

    sget-object v2, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

    .line 131
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 132
    sput-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public addLocalNotification(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 171
    sget-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 172
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 174
    const-string/jumbo v2, "title"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 175
    :goto_0
    const-string v3, "content"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 176
    :goto_1
    const-string v5, "payload"

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    .line 177
    :goto_2
    const-string v7, "channelID"

    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v4

    .line 178
    :goto_3
    const-string v8, "androidSound"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object p1, v4

    .line 180
    :goto_4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "mipmap"

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ic_launcher"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 182
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 184
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 185
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 186
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_5

    .line 187
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 189
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 191
    invoke-virtual {v9, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 193
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 194
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 195
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    .line 199
    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 205
    invoke-virtual {v9, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    .line 206
    invoke-virtual {v9, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 208
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 209
    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createNotificationChannel(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 149
    sget-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 150
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 152
    const-string v2, "channelID"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 153
    :goto_0
    const-string v3, "channelName"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 154
    :goto_1
    const-string v5, "androidSound"

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 157
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, p1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 164
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_3
    return-void
.end method

.method public enableDebug(Ljava/lang/Boolean;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lim/zego/zpns/ZPNsManager;->enableDebug(Z)V

    const/4 p1, 0x0

    .line 104
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v1, "prefix"

    const-string v2, "im.zego.zpns.reactnative."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "ZPNsNativeModule"

    return-object v0
.end method

.method public getVersion(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 98
    invoke-static {}, Lim/zego/zpns/ZPNsManager;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object v0

    invoke-virtual {v0}, Lim/zego/zpns/ZPNsManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->plugin_instance:Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;

    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->isRegisterPushInvoked:Ljava/lang/Boolean;

    return-void
.end method

.method public registerPush(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 p1, 0x1

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->isRegisterPushInvoked:Ljava/lang/Boolean;

    .line 125
    sget-object p1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

    if-eqz p1, :cond_0

    sget-object p1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    new-instance p2, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_0
    invoke-static {}, Lim/zego/zpns/ZPNsManager;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object p1

    sget-object p2, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    invoke-virtual {p1, p2}, Lim/zego/zpns/ZPNsManager;->registerPush(Landroid/app/Application;)V

    const/4 p1, 0x0

    .line 137
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public setBackgroundMessageHandler()V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->isBackgroundMessageHandleSet:Ljava/lang/Boolean;

    .line 238
    sget-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->backgroundEventList:Ljava/util/List;

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->backgroundEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 240
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/react/bridge/WritableMap;

    .line 241
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lim/zego/zpns/entity/ZPNsMessage;

    .line 243
    invoke-direct {p0, v2}, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->getUseWakeFulService(Lim/zego/zpns/entity/ZPNsMessage;)Z

    move-result v2

    .line 244
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v6, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-static {v3}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    sget-object v5, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v5}, Lcom/facebook/react/HeadlessJsTaskService;->acquireWakeLockNow(Landroid/content/Context;)V

    .line 248
    sget-object v5, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v6, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    const/16 v7, 0x2710

    invoke-static {v5, v6, v7, v4, v2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;Z)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThroughBackgroundMessage. title: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "title"

    .line 252
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", content: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "content"

    .line 254
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", extras: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "extras"

    .line 256
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 250
    invoke-static {v2, v3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    sget-object v1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->backgroundEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 261
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocalBadge(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 215
    invoke-static {}, Lim/zego/zpns/ZPNsManager;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object v0

    sget-object v1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lim/zego/zpns/ZPNsManager;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    return-void
.end method

.method public setPushConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 109
    invoke-static {p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsConverter;->convertPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zpns/util/ZPNsConfig;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lim/zego/zpns/ZPNsManager;->setPushConfig(Lim/zego/zpns/util/ZPNsConfig;)V

    .line 111
    iget-boolean p1, p1, Lim/zego/zpns/util/ZPNsConfig;->enableFCMPush:Z

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->printSystemProperty()V

    :cond_0
    const/4 p1, 0x0

    .line 114
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterPush(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 142
    invoke-static {}, Lim/zego/zpns/ZPNsManager;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object v0

    invoke-virtual {v0}, Lim/zego/zpns/ZPNsManager;->unregisterPush()V

    const/4 v0, 0x0

    .line 143
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public writeCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 93
    invoke-static {p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
