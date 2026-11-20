.class Lcom/transistorsoft/locationmanager/logger/TSLog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/logger/TSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "BackgroundGeolocation log"

.field private static final f:Ljava/lang/String; = "message/rfc822"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

.field private final d:Lcom/transistorsoft/locationmanager/data/SQLQuery;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->a:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->b:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    .line 5
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->d:Lcom/transistorsoft/locationmanager/data/SQLQuery;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "error"

    const-string v1, "Send log: "

    .line 1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    const-string v1, "Failed to fetch Activity from WeakReference.  It seems the application process has been destroyed."

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->d:Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    const-string v1, "Failed to read log database."

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v6, "message/rfc822"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->a:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v8, "BackgroundGeolocation log"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v6

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v9, "TSLocationManager3.7.0 (444)"

    invoke-static {v9}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->print()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    .line 24
    :try_start_0
    invoke-virtual {v6, v7}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 26
    sget-object v10, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to write state to email body: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/util/Sensors;->print()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->writeLogFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    .line 33
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    const-string v1, "Failed to write log file"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".tslocationmanager.fileprovider"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-static {v3, v6, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 40
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    invoke-interface {v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;->onSuccess()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 52
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 53
    const-string v1, "NO_EMAIL_CLIENT"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$a;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;->onFailure(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
