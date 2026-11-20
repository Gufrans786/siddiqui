.class public Lcom/transistorsoft/locationmanager/scheduler/ScheduleService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v0

    invoke-static {p0, v3, p1, v0}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, v3, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 6
    :cond_0
    const-string v0, "schedule_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 8
    const-string/jumbo v0, "trackingMode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a(Landroid/content/Context;ZI)V

    .line 12
    :cond_1
    invoke-virtual {p0, p3}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    const/4 p1, 0x3

    return p1
.end method
