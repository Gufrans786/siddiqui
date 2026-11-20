.class public Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;
.super Lim/zego/zpns/ZPNsMessageReceiver;
.source "ZPNsPluginEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZPNsPluginEventHandler"

.field private static instance:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

.field public static isRegisterPushInvoked:Ljava/lang/Boolean;

.field public static plugin_instance:Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;


# instance fields
.field SHOW_IN_FOREGROUND:Ljava/lang/String;

.field private handler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$msendEvent(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->sendEvent(Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->isRegisterPushInvoked:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lim/zego/zpns/ZPNsMessageReceiver;-><init>()V

    .line 43
    const-string/jumbo v0, "show_in_foreground"

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->SHOW_IN_FOREGROUND:Ljava/lang/String;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 82
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->handler:Landroid/os/Handler;

    .line 85
    :cond_0
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;
    .locals 2

    .line 46
    sget-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->instance:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->instance:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    invoke-direct {v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;-><init>()V

    sput-object v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->instance:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->instance:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    return-object v0
.end method

.method public static getObjectToMap(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 323
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const/4 v6, 0x1

    .line 324
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 325
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 327
    const-string v7, ""

    .line 328
    :cond_0
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUseWakeFulService(Lim/zego/zpns/entity/ZPNsMessage;)Z
    .locals 5

    const-string v0, "FCM message priority: "

    .line 89
    invoke-virtual {p1}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v1

    sget-object v2, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lim/zego/zpns/entity/ZPNsMessage;->getPushMessage()Ljava/lang/Object;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 93
    const-string v2, "getPriority"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 96
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

.method private launchMainActivity(Landroid/content/Context;)V
    .locals 3

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->SHOW_IN_FOREGROUND:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get launch intent for package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZPNsPluginEventHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runBackgroundMessageHandler(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    .locals 5

    .line 105
    const-string v0, ""

    .line 0
    const-string v1, "ZPNsBackgroundMessageHandlerClassPath: "

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 108
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ZPNsBackgroundMessageHandlerClassPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 112
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zpns_reactnative_sdk/callback/ZPNsBackgroundMessageHandler;

    .line 115
    invoke-interface {v1, p1, p2}, Lim/zego/zpns_reactnative_sdk/callback/ZPNsBackgroundMessageHandler;->onThroughMessageReceived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    :try_start_2
    const-string p1, "ZPNsBackgroundMessageHandlerClassPath: Find class failure"

    invoke-static {p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    const-string p1, "ZPNsBackgroundMessageHandlerClassPath: Find ApplicationInfo failure"

    invoke-static {p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendEvent(Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V
    .locals 2

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendEvent: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", ctx is null: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 57
    invoke-static {p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz p1, :cond_1

    .line 75
    sget-object p1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 76
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "im.zego.zpns.reactnative."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-interface {p1, p3, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onNotificationArrived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    .locals 4

    .line 258
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 260
    const-string v2, "event"

    const-string v3, "notificationArrived"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v2, "title"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "content"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "extras"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v2

    invoke-static {v2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsConverter;->convertPushSourceType(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)I

    move-result v2

    const-string v3, "pushSourceType"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 268
    invoke-direct {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$3;

    invoke-direct {v2, p0, p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$3;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;)V

    .line 269
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onNotificationArrived. title: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", content: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 282
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", extras: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 284
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 278
    invoke-static {p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNotificationClicked(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    .locals 8

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotificationClicked. title: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", extras: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "510"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 207
    const-string v6, "event"

    const-string v7, "notificationClicked"

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v6, "title"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "content"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v6, "extras"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v6, "payload"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getPayload()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v6

    invoke-static {v6}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsConverter;->convertPushSourceType(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)I

    move-result v6

    const-string v7, "pushSourceType"

    invoke-interface {v5, v7, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v6, "message"

    invoke-interface {v0, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 216
    sget-object v5, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->plugin_instance:Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;

    if-eqz v5, :cond_1

    .line 217
    sget-object v4, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->isRegisterPushInvoked:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-direct {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$2;

    invoke-direct {v5, p0, p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$2;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;)V

    .line 219
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 228
    :cond_0
    sput-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

    goto :goto_0

    .line 231
    :cond_1
    sput-object v0, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->clickedResultMap:Lcom/facebook/react/bridge/WritableMap;

    .line 232
    invoke-direct {p0, p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->launchMainActivity(Landroid/content/Context;)V

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "launchMainActivity,click map:"

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 239
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 235
    invoke-static {p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsRegisterMessage;)V
    .locals 6

    .line 291
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getErrorCode()Lim/zego/zpns/enums/ZPNsErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lim/zego/zpns/enums/ZPNsErrorCode;->getCode()I

    move-result v0

    .line 292
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 295
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 296
    const-string v4, "pushID"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getCommandResult()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "errorCode"

    invoke-interface {v3, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v4, "msg"

    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v4, "message"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 302
    const-string v3, ""

    if-eqz v0, :cond_0

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "registered failed. code="

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", msg="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registered success. pushID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->getCommandResult()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    invoke-direct {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;

    invoke-direct {v0, p0, p1, v2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;)V

    .line 309
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onThroughBackgroundMessage(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    .locals 4

    .line 157
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 158
    const-string v1, "event"

    const-string/jumbo v2, "throughMessageReceived"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "title"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "content"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "extras"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v1

    invoke-static {v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsConverter;->convertPushSourceType(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)I

    move-result v1

    const-string v2, "pushSourceType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 164
    sget-object v1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->isBackgroundMessageHandleSet:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    sget-object p1, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsModule;->backgroundEventList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 168
    :cond_0
    invoke-direct {p0, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getUseWakeFulService(Lim/zego/zpns/entity/ZPNsMessage;)Z

    move-result v1

    .line 169
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-static {p1}, Lcom/facebook/react/HeadlessJsTaskService;->acquireWakeLockNow(Landroid/content/Context;)V

    .line 173
    const-class v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    const/16 v3, 0x2710

    invoke-static {p1, v0, v3, v2, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;Z)V

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onThroughBackgroundMessage. title: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", content: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 179
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", extras: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 175
    invoke-static {p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onThroughForegroundMessage(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    .locals 4

    .line 126
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 128
    const-string v2, "event"

    const-string/jumbo v3, "throughMessageReceived"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v2, "title"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "content"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "extras"

    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v2

    invoke-static {v2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsConverter;->convertPushSourceType(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)I

    move-result v2

    const-string v3, "pushSourceType"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 136
    invoke-direct {p0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$1;

    invoke-direct {v2, p0, p1, v0}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$1;-><init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;)V

    .line 137
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onThroughForegroundMessage. title: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", content: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", extras: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getExtras()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 145
    invoke-static {p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsLogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onThroughMessageReceived(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V
    .locals 2

    .line 188
    invoke-virtual {p2}, Lim/zego/zpns/entity/ZPNsMessage;->getPushSource()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v0

    sget-object v1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    if-ne v0, v1, :cond_0

    .line 189
    const-string p1, "ZPNsPluginEventHandler"

    const-string p2, "Receive FCM ZPNsMessage. waiting for FCMReceiver to callback event"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    invoke-static {p1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginUtils;->isApplicationForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->onThroughForegroundMessage(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0, p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->onThroughBackgroundMessage(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    .line 199
    :goto_0
    invoke-direct {p0, p1, p2}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->runBackgroundMessageHandler(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsMessage;)V

    return-void
.end method
