.class public Lcom/transistorsoft/locationmanager/event/TerminateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION:Ljava/lang/String; = "TERMINATE_EVENT"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;Landroid/content/Intent;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/transistorsoft/locationmanager/event/TerminateEvent$a;-><init>(Lcom/transistorsoft/locationmanager/event/TerminateEvent;Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->onHeadlessChange(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;)V

    return-void
.end method
