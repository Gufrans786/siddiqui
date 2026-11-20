.class Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;->c:Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;->a:Landroid/content/Intent;

    const-string v1, "schedule_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;->a:Landroid/content/Intent;

    const-string/jumbo v2, "trackingMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleAlarmReceiver$a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a(Landroid/content/Context;ZI)V

    return-void
.end method
