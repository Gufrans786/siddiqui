.class public abstract Lim/zego/zpns/internal/basic/PushClient;
.super Ljava/lang/Object;
.source "PushClient.java"


# instance fields
.field public config:Lim/zego/zpns/util/ZPNsConfig;


# direct methods
.method public constructor <init>(Lim/zego/zpns/util/ZPNsConfig;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lim/zego/zpns/internal/basic/PushClient;->config:Lim/zego/zpns/util/ZPNsConfig;

    return-void
.end method


# virtual methods
.method public getMainActivityClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 43
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 52
    :catchall_0
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public abstract getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;
.end method

.method public abstract getZPNsMessage(Landroid/content/Intent;)Lim/zego/zpns/entity/ZPNsMessage;
.end method

.method public abstract register(Landroid/content/Context;)Lim/zego/zpns/enums/ZPNsErrorCode;
.end method

.method public abstract setApplicationIconBadgeNumber(Landroid/content/Context;I)V
.end method

.method public abstract unRegister(Landroid/content/Context;)Lim/zego/zpns/enums/ZPNsErrorCode;
.end method
