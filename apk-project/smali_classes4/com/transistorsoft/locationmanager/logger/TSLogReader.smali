.class public Lcom/transistorsoft/locationmanager/logger/TSLogReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static final c:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static final d:Ljava/lang/String; = "Failed to open database"

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_CLASS:Lch/qos/logback/classic/db/names/ColumnName;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_METHOD:Lch/qos/logback/classic/db/names/ColumnName;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lch/qos/logback/classic/db/names/ColumnName;->FORMATTED_MESSAGE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->e:[Ljava/lang/String;

    .line 11
    new-instance v0, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    invoke-direct {v0}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->b:Ljava/text/SimpleDateFormat;

    .line 13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 29
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, " "

    .line 1
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3
    :try_start_0
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, v4}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    .line 4
    sget-object v6, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->b:Ljava/text/SimpleDateFormat;

    sget-object v7, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, v7}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    sget-object v6, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, v6}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    sget-object v6, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_CLASS:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, v6}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 8
    array-length v7, v6

    if-lez v7, :cond_0

    .line 9
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->CALLER_METHOD:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, v1}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->FORMATTED_MESSAGE:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, v1}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "FAILURE DURING getLog: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a(I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v11, 0x0

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    :try_start_0
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->getSelection(Lch/qos/logback/classic/db/names/DefaultDBNameResolver;)Ljava/lang/String;

    move-result-object v12

    .line 14
    sget-object v3, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_EXCEPTION:Lch/qos/logback/classic/db/names/TableName;

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ASC"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 18
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 19
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v8, v4

    if-eqz v6, :cond_1

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 24
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    sget-object v6, Lch/qos/logback/classic/db/names/ColumnName;->TRACE_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v5, v6}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-wide v4, v8

    goto :goto_0

    :cond_2
    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 31
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->getOrder()I

    move-result v2

    sget v3, Lcom/transistorsoft/locationmanager/data/SQLQuery;->ORDER_ASC:I

    if-ne v2, v3, :cond_4

    const-string v2, "ASC"

    goto :goto_1

    .line 35
    :cond_4
    const-string v2, "DESC"

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->getLimit()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->getLimit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :cond_5
    move-object v10, v11

    .line 37
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->e:[Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v12

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_2
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 40
    invoke-static {v11, v14}, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->a(Landroid/database/Cursor;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 42
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7

    .line 45
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v11, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    :goto_3
    if-eqz v11, :cond_8

    .line 50
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 51
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 54
    throw p0

    .line 55
    :cond_9
    :goto_4
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to open database"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object v11
.end method
