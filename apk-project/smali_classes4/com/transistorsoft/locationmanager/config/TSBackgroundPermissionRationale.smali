.class public Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;
.super Lcom/transistorsoft/locationmanager/config/a;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/config/IModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;,
        Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "backgroundPermissionRationale"

.field private static final k:Ljava/lang/String; = "applicationName"

.field private static final l:Ljava/lang/String; = "backgroundPermissionOptionLabel"

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/lang/String; = "Allow all the time"

.field private static final o:Ljava/lang/String; = "Allow {applicationName} to access this device\'s location even when closed or not in use?"

.field private static final p:Ljava/lang/String; = "[CHANGEME] This app collects location data for FEATURE X and FEATURE Y."

.field private static final q:Ljava/lang/String; = "Change to \"{backgroundPermissionOptionLabel}\""

.field private static final r:Ljava/lang/String; = "title"

.field private static final s:Ljava/lang/String; = "message"

.field private static final t:Ljava/lang/String; = "positiveAction"

.field private static final u:Ljava/lang/String; = "negativeAction"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Dialog;

.field private h:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;

.field private i:Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$KcWLaDGgrauQJBsG14gkkzMStYU()V
    .locals 0

    invoke-static {}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->b()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->m:Ljava/util/List;

    .line 3
    const-string v1, "applicationName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v1, "backgroundPermissionOptionLabel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "backgroundPermissionRationale"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->applyDefaults()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    const-string v0, "backgroundPermissionRationale"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    .line 21
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    .line 24
    :cond_1
    const-string v0, "positiveAction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    .line 27
    :cond_2
    const-string v0, "negativeAction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    :cond_3
    if-eqz p2, :cond_4

    .line 31
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->applyDefaults()V

    :cond_4
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    const-string v4, "applicationName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v4, :cond_1

    .line 10
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 11
    :cond_2
    const-string v4, "backgroundPermissionOptionLabel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_3

    .line 13
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getBackgroundPermissionOptionLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 15
    :cond_3
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v5, "backgroundPermissionRationale attempted to apply template tag backgroundPermissionOptionLabel but this is only available with compileSdkVersion >= 30"

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 16
    const-string v4, "Allow all the time"

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\\{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->i:Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;

    if-eqz v0, :cond_1

    .line 32
    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;->onComplete()V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->h:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transistorsoft/tslocationmanager/R$id;->btn_positive_action:I

    if-ne p1, v0, :cond_2

    .line 37
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->h:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;

    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;->onClickOk()V

    goto :goto_0

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->h:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;

    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;->onClickCancel()V

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->stop()V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    return-object p1
.end method

.method private static synthetic b()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public applyDefaults()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "Allow {applicationName} to access this device\'s location even when closed or not in use?"

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    const-string v0, "[CHANGEME] This app collects location data for FEATURE X and FEATURE Y."

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 8
    const-string v0, "Change to \"{backgroundPermissionOptionLabel}\""

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public equals(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getPositiveAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getNegativeAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getDirtyFields()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/config/a;->getDirtyFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onStartActivity(Landroid/app/Activity;Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;->onComplete()V

    return-void

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->i:Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;

    .line 8
    new-instance p2, Landroid/app/Dialog;

    sget v0, Lcom/transistorsoft/tslocationmanager/R$style;->PermissionRationaleDialog:I

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    .line 9
    sget v0, Lcom/transistorsoft/tslocationmanager/R$layout;->tslocationmanager_permission_rationale_layout:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 10
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    sget v0, Lcom/transistorsoft/tslocationmanager/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    sget v0, Lcom/transistorsoft/tslocationmanager/R$id;->message:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    sget v0, Lcom/transistorsoft/tslocationmanager/R$id;->btn_positive_action:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 19
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$a;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$a;-><init>(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;)V

    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    sget v1, Lcom/transistorsoft/tslocationmanager/R$id;->btn_negative_action:I

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 28
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    return-void
.end method

.method public setNegativeAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    return-void
.end method

.method public setPositiveAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    return-void
.end method

.method public shouldShow(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public show(Landroid/app/Activity;Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->h:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;

    .line 9
    new-instance p2, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->onStartActivity(Landroid/app/Activity;Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->g:Landroid/app/Dialog;

    .line 7
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->h:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;

    .line 8
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->i:Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$CompletionHandler;

    return-void
.end method

.method public toJson(Z)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v0, "message"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v0, "positiveAction"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v0, "negativeAction"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    const-string v2, "positiveAction"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    const-string v2, "negativeAction"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public update(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/a;->a()V

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d:Ljava/lang/String;

    .line 9
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getPositiveAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getPositiveAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getPositiveAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->e:Ljava/lang/String;

    .line 13
    const-string v0, "positiveAction"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getNegativeAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getNegativeAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getNegativeAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->f:Ljava/lang/String;

    .line 17
    const-string p1, "negativeAction"

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
