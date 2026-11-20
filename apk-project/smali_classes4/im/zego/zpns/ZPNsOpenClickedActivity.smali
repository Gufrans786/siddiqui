.class public Lim/zego/zpns/ZPNsOpenClickedActivity;
.super Landroid/app/Activity;
.source "ZPNsOpenClickedActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZPNsOpenClickedActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCreate"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lim/zego/zpns/ZPNsOpenClickedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZPNsOpenClickedActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object p1

    check-cast p1, Lim/zego/zpns/internal/ZPNsManagerInternal;

    invoke-virtual {p0}, Lim/zego/zpns/ZPNsOpenClickedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->assignMyContext(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object p1

    invoke-virtual {p0}, Lim/zego/zpns/ZPNsOpenClickedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lim/zego/zpns/ZPNsOpenClickedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lim/zego/zpns/ZPNsManager;->getZPNsMessage(Landroid/app/Application;Landroid/content/Intent;)Lim/zego/zpns/entity/ZPNsMessage;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lim/zego/zpns/ZPNsOpenClickedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;->create(Landroid/content/Context;)Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;->messageDispatch(Lim/zego/zpns/entity/ZPNsMessage;)V

    .line 25
    invoke-virtual {p0}, Lim/zego/zpns/ZPNsOpenClickedActivity;->finish()V

    return-void
.end method
