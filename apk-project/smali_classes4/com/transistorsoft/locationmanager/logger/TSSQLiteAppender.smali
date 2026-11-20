.class public Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;
.super Lch/qos/logback/core/UnsynchronizedAppenderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;,
        Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/UnsynchronizedAppenderBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "transistor_logback.db"

.field private static final l:J = 0x4c4b40L

.field private static final m:J = 0x5265c00L

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0x6

.field private static final t:I = 0x7

.field private static final u:I = 0xb

.field private static final v:I = 0xc

.field private static final w:I = 0xd

.field private static final x:I = 0xe

.field private static final y:S = 0x1s

.field private static final z:S = 0x2s


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lch/qos/logback/classic/db/names/DBNameResolver;

.field private g:Lch/qos/logback/core/util/Duration;

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;

.field private i:Lch/qos/logback/classic/android/SQLiteLogCleaner;

.field private final j:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x2

    .line 17
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private a(Lch/qos/logback/classic/spi/ILoggingEvent;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 12
    invoke-direct {p0, p2, p1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteStatement;Lch/qos/logback/classic/spi/ILoggingEvent;)V

    .line 13
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 16
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/StackTraceElement;)V

    .line 20
    :try_start_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 22
    const-string p2, "Failed to insert loggingEvent"

    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Lch/qos/logback/classic/spi/ILoggingEvent;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lch/qos/logback/classic/spi/ILoggingEvent;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_EXCEPTION:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 122
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " BIGINT NOT NULL, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->I:Lch/qos/logback/classic/db/names/ColumnName;

    .line 123
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " SMALLINT NOT NULL, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lch/qos/logback/classic/db/names/ColumnName;->TRACE_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 124
    invoke-interface {p0, v5}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " VARCHAR(254) NOT NULL, PRIMARY KEY ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), FOREIGN KEY ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") REFERENCES "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    sget-object v4, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 131
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")  ON DELETE CASCADE )"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfe

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 42
    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private static a(Lch/qos/logback/classic/spi/ILoggingEvent;)S
    .locals 3

    .line 43
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 47
    :goto_0
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-gtz v0, :cond_2

    if-lez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 54
    :cond_3
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p0

    if-eqz p0, :cond_4

    or-int/lit8 p0, v1, 0x2

    int-to-short p0, p0

    return p0

    :cond_4
    return v1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->g:Lch/qos/logback/core/util/Duration;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lch/qos/logback/core/util/Duration;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 7
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getLogCleaner()Lch/qos/logback/classic/android/SQLiteLogCleaner;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->g:Lch/qos/logback/core/util/Duration;

    invoke-interface {v0, p1, v1}, Lch/qos/logback/classic/android/SQLiteLogCleaner;->performLogCleanup(Landroid/database/sqlite/SQLiteDatabase;Lch/qos/logback/core/util/Duration;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 29
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 30
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 31
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/classic/Level;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 32
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 33
    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lch/qos/logback/classic/spi/ILoggingEvent;)S

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;SJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0, p4, p5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    int-to-long p3, p3

    const/4 p5, 0x2

    .line 76
    invoke-virtual {p1, p5, p3, p4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x3

    .line 77
    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 34
    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x7

    .line 36
    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/StackTraceElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 68
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 69
    aget-object p2, p2, v0

    if-eqz p2, :cond_1

    .line 71
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unknown"

    :goto_0
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lch/qos/logback/classic/spi/ILoggingEvent;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0, p2, p3}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Ljava/util/Map;J)V

    .line 26
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lch/qos/logback/classic/spi/IThrowableProxy;J)V

    :cond_0
    return-void
.end method

.method private a(Lch/qos/logback/classic/spi/IThrowableProxy;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-static {v1, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinFirstLine(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v5, 0x1

    int-to-short v1, v1

    move-object v2, p0

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;SJ)V

    .line 87
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result p2

    .line 88
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object p3

    move v5, v1

    move v1, v0

    .line 90
    :goto_1
    array-length v2, p3

    sub-int/2addr v2, p2

    const/16 v4, 0x9

    if-ge v1, v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    aget-object v4, p3, v1

    invoke-static {v2, v4}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinSTEP(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v5, 0x1

    int-to-short v8, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;SJ)V

    add-int/lit8 v1, v1, 0x1

    move v5, v8

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... "

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " common frames omitted"

    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p2, v5, 0x1

    int-to-short p2, p2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;SJ)V

    move v5, p2

    .line 107
    :cond_1
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide p2, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 110
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 111
    throw p1

    .line 112
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Lch/qos/logback/classic/spi/ILoggingEvent;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lch/qos/logback/classic/spi/ILoggingEvent;J)V

    return-void
.end method

.method private a(Ljava/util/Map;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 58
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 67
    throw p1

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v1}, Lch/qos/logback/classic/db/SQLBuilder;->buildCreateLoggingEventTableSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create logback-android tables: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TSLocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private a(Lch/qos/logback/core/util/Duration;J)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    cmp-long p2, p2, v3

    if-lez p2, :cond_1

    const-wide/32 p2, 0x5265c00

    cmp-long p2, v1, p2

    if-gtz p2, :cond_1

    .line 11
    invoke-virtual {p1}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Lch/qos/logback/classic/db/names/DBNameResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    return-object p0
.end method

.method private static b(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;
    .locals 6

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object v1, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_PROPERTY:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {p0, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 22
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " BIGINT NOT NULL, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->MAPPED_KEY:Lch/qos/logback/classic/db/names/ColumnName;

    .line 23
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " VARCHAR(254) NOT NULL, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lch/qos/logback/classic/db/names/ColumnName;->MAPPED_VALUE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 24
    invoke-interface {p0, v5}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " VARCHAR(254) NOT NULL, PRIMARY KEY ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), FOREIGN KEY ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") REFERENCES "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    sget-object v4, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    .line 31
    invoke-interface {p0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    invoke-interface {p0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")  ON DELETE CASCADE )"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private b()Z
    .locals 5

    const-string v0, "DROP TABLE IF EXISTS "

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v4, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_PROPERTY:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {v3, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v4, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_EXCEPTION:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {v3, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {v0, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private c()Z
    .locals 5

    const-string v0, "SELECT sql FROM sqlite_master WHERE name=\'"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v4, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_PROPERTY:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {v0, v4}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v3, "ON DELETE CASCADE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 11
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_1
    throw v0
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public append(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$b;-><init>(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Lch/qos/logback/classic/spi/ILoggingEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic append(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->append(Lch/qos/logback/classic/spi/ILoggingEvent;)V

    return-void
.end method

.method public destroyLog()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroy log success"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_0
    const-string v0, "TSLocationManager"

    const-string/jumbo v1, "\u203c\ufe0f   Failed to destroy log"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getDatabaseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Lch/qos/logback/core/android/AndroidContextUtil;

    invoke-direct {p1}, Lch/qos/logback/core/android/AndroidContextUtil;-><init>()V

    .line 7
    invoke-virtual {p1}, Lch/qos/logback/core/android/AndroidContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "transistor_logback.db"

    invoke-virtual {p1, v1}, Lch/qos/logback/core/android/AndroidContextUtil;->getDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLogCleaner()Lch/qos/logback/classic/android/SQLiteLogCleaner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->i:Lch/qos/logback/classic/android/SQLiteLogCleaner;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$a;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$a;-><init>(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->i:Lch/qos/logback/classic/android/SQLiteLogCleaner;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->i:Lch/qos/logback/classic/android/SQLiteLogCleaner;

    return-object v0
.end method

.method public getMaxHistory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->g:Lch/qos/logback/core/util/Duration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/util/Duration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMaxHistoryMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->g:Lch/qos/logback/core/util/Duration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setDbNameResolver(Lch/qos/logback/classic/db/names/DBNameResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    return-void
.end method

.method public setLogCleaner(Lch/qos/logback/classic/android/SQLiteLogCleaner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->i:Lch/qos/logback/classic/android/SQLiteLogCleaner;

    return-void
.end method

.method public setMaxHistory(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/util/Duration;->valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->g:Lch/qos/logback/core/util/Duration;

    return-void
.end method

.method public start()V
    .locals 9

    const-string v0, "db path: "

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    .line 3
    new-instance v1, Lch/qos/logback/core/android/AndroidContextUtil;

    invoke-direct {v1}, Lch/qos/logback/core/android/AndroidContextUtil;-><init>()V

    .line 4
    const-string/jumbo v2, "transistor_logback.db"

    invoke-virtual {v1, v2}, Lch/qos/logback/core/android/AndroidContextUtil;->getDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->setFilename(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v4, "TSLocationManager"

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const-wide/32 v7, 0x4c4b40

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    const-string v1, "Detected excessively large log database file."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 24
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const-string v1, "Created temporary database file"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 34
    const-string v0, "Cannot determine database filename"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addError(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    const-string v1, "PRAGMA foreign_keys=ON"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    if-nez v0, :cond_5

    .line 52
    new-instance v0, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    invoke-direct {v0}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v0}, Lch/qos/logback/classic/db/SQLBuilder;->buildInsertExceptionSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v0}, Lch/qos/logback/classic/db/SQLBuilder;->buildInsertPropertiesSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->f:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v0}, Lch/qos/logback/classic/db/SQLBuilder;->buildInsertSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->d:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a()Z

    .line 60
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 61
    const-string/jumbo v0, "\u26a0\ufe0f   logback-android tables have no cascading deletes.  Re-creating logger tables with ON DELETE CASCADE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->b()Z

    .line 63
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a()Z

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->start()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 71
    const-string v1, "Cannot open database"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
