.class public Lcom/intentfilter/androidpermissions/services/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "android-permissions"


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {p0, p1, v0}, Lcom/intentfilter/androidpermissions/services/NotificationService;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    .line 32
    invoke-direct {p0}, Lcom/intentfilter/androidpermissions/services/NotificationService;->createNotificationChannel()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->context:Landroid/content/Context;

    sget v1, Lcom/intentfilter/androidpermissions/R$string;->notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "android-permissions"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 41
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    filled-new-array {v2}, [I

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/intentfilter/androidpermissions/helpers/VersionOrchestrator;->getImmutablePendingIntentFlags([I)I

    move-result v2

    .line 47
    invoke-static {v0, v1, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 50
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->context:Landroid/content/Context;

    const-string v2, "android-permissions"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 56
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 58
    invoke-virtual {p3, p5}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    new-instance p4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p4, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 61
    invoke-virtual {p4, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/services/NotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
