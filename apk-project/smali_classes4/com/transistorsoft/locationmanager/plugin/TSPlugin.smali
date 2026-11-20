.class public Lcom/transistorsoft/locationmanager/plugin/TSPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIREBASE:I = 0x1

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->b:Ljava/util/Map;

    .line 11
    const-string/jumbo v1, "tslocationmanager"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :catch_0
    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 6
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method private native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native b()Ljava/lang/String;
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "TSLocationManager"

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x1

    .line 2
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    const-string v2, "getInstance"

    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    const-string/jumbo v2, "subscribe"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private native c()Ljava/lang/String;
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, " - "

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->k()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "{NAME}"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p2, p1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 15
    :cond_1
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 16
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-object v5, v3, v5

    .line 17
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 18
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "."

    invoke-static {v3, v5}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-direct {p0, v0, p2, p1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v4

    .line 27
    :catch_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private native d()Ljava/lang/String;
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native f()Ljava/lang/String;
.end method

.method private native g()Ljava/lang/String;
.end method

.method public static getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->j()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    .line 4
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native i()Ljava/lang/String;
.end method

.method private static declared-synchronized j()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    invoke-direct {v1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;-><init>()V

    sput-object v1, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    .line 2
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c:Lcom/transistorsoft/locationmanager/plugin/TSPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canUsePersistEvent(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPluginForEvent(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 15
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1, v0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method public register(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p2

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setPluginForEvent(ILjava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->canUsePersistEvent(Landroid/content/Context;)Z

    return-void
.end method

.method public subscribe(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
