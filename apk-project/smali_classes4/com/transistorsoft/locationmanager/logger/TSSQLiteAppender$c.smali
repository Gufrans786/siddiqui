.class Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lch/qos/logback/core/util/Duration;

.field final synthetic c:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Landroid/database/sqlite/SQLiteDatabase;Lch/qos/logback/core/util/Duration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->c:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->b:Lch/qos/logback/core/util/Duration;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Cleared logs older than "

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->b:Lch/qos/logback/core/util/Duration;

    invoke-virtual {v3}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->c:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Lch/qos/logback/classic/db/names/DBNameResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lch/qos/logback/classic/db/SQLBuilder;->buildDeleteExpiredLogsSQL(Lch/qos/logback/classic/db/names/DBNameResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;->b:Lch/qos/logback/core/util/Duration;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
