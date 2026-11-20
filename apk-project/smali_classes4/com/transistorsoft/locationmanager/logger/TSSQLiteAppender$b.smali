.class Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Lch/qos/logback/classic/spi/ILoggingEvent;

.field final synthetic b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->a:Lch/qos/logback/classic/spi/ILoggingEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->d(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->a:Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-static {v1, v2, v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Lch/qos/logback/classic/spi/ILoggingEvent;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->a:Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-static {v3, v4, v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Lch/qos/logback/classic/spi/ILoggingEvent;J)V

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 17
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_2

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 24
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 25
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 27
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;->b:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    const-string v2, "Cannot append event"

    invoke-virtual {v1, v2, v0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
