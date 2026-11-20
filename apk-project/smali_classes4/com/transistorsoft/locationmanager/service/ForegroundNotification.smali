.class public Lcom/transistorsoft/locationmanager/service/ForegroundNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTIFICATION_ACTION:Ljava/lang/String; = "notificationaction"

.field public static final NOTIFICATION_ID:I = 0x97b639

.field static final a:Ljava/lang/String; = "default"

.field static final b:Ljava/lang/String; = "notificationButtonPause"

.field private static final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "TSLocationManager"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 4

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v3, "notificationaction"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/high16 v3, 0x8000000

    if-lt p2, v2, :cond_0

    .line 106
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p2

    invoke-static {p0, v0, v1, p2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 110
    :goto_0
    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    .line 112
    :cond_1
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find Button resource in notification_layout for notification-action: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id"

    invoke-virtual {v0, p2, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p1, p0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void

    .line 96
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to find TextView resource: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 9

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v2

    .line 10
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    sget v2, Lcom/transistorsoft/tslocationmanager/R$layout;->tslocationmanager_notification_layout:I

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "layout"

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    .line 17
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find custom notification layout \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' in app/src/main/res/layout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->b(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V

    return-void

    .line 22
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 25
    sget v4, Lcom/transistorsoft/tslocationmanager/R$layout;->tslocationmanager_notification_layout:I

    if-ne v2, v4, :cond_2

    .line 26
    const-string v2, "notificationButtonPause"

    invoke-static {p0, v3, v2}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "applicationName"

    const-string v6, "id"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v4, :cond_3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    :goto_1
    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 37
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "notificationSmallIcon"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/notification/TSLocalNotification;->getSmallIcon(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 42
    :cond_5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLargeIcon()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "notificationLargeIcon"

    invoke-virtual {v2, v7, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 51
    :cond_6
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to find notificationLargeIcon: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 56
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "notificationTitle"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 58
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 60
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_8

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    :cond_9
    :goto_3
    invoke-static {p0, v3, v5, v2}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notificationText"

    invoke-virtual {v1, v4, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 66
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v4, v1}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_b
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getStrings()Ljava/util/Map;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 71
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v4, v2}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 79
    :cond_c
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-static {p0, v3, v1}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    goto :goto_5

    .line 86
    :cond_d
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/notification/TSLocalNotification;->getSmallIcon(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 87
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 89
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_e

    .line 91
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_e
    return-void
.end method

.method private static b(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 15
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/notification/TSLocalNotification;->getSmallIcon(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLargeIcon()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {v2, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 23
    :cond_2
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find notificationLargeIcon: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getColor()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    return-void
.end method

.method public static build(Landroid/content/Context;)Landroid/app/Notification;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/notification/TSLocalNotification;->build(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 7
    sget-object v1, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getPriority()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->b(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 17
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->c(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 46
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x62

    iput v0, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method private static c(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/notification/TSLocalNotification;->getSmallIcon(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static createNotificationChannel(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    .line 8
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_1
    const-string v2, "TSLocationManager"

    .line 13
    :goto_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    .line 26
    :cond_4
    new-instance p0, Landroid/app/NotificationChannel;

    const/4 p1, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p1, -0x1

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 32
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static onUpdateChannelId(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getPreviousValues()Ljava/util/Map;

    move-result-object v0

    .line 7
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->createNotificationChannel(Landroid/content/Context;Z)V

    .line 9
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->build(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    const v3, 0x97b639

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    if-eqz v0, :cond_3

    .line 14
    const-string v2, "channelId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_2
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 21
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 23
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static onUpdateChannelName(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 6
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_1
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
