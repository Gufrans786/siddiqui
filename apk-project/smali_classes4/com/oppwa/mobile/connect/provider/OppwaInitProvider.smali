.class public Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;
.super Landroid/content/ContentProvider;
.source "OppwaInitProvider.java"


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static synthetic $r8$lambda$B4l2_gNk_G6-ZgpbiD0JGbo3xAI(Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzJRilMGrUQn8Lj-nWxHdqYZKig(Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private synthetic a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 4
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/Throwable;)V

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs(Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->init(Landroid/content/Context;)V

    .line 4
    :try_start_0
    new-instance v0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
