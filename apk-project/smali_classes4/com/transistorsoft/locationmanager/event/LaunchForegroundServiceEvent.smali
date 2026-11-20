.class public Lcom/transistorsoft/locationmanager/event/LaunchForegroundServiceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION:Ljava/lang/String; = "LAUNCH_FOREGROUND_SERVICE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->launchQueuedServices(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
