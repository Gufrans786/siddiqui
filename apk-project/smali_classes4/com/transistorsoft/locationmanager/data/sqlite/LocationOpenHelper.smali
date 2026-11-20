.class public Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final GEOFENCES_TABLE_NAME:Ljava/lang/String; = "geofences"

.field public static final LOCATION_TABLE_NAME:Ljava/lang/String; = "locations"

.field private static a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper; = null

.field private static final b:Ljava/lang/String; = "transistor_location_manager"

.field private static final c:I = 0x6

.field private static final d:Ljava/lang/String; = "id INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT NOT NULL DEFAULT \'\', timestamp TEXT, json TEXT, data BLOB, encrypted BOOLEAN NOT NULL DEFAULT 0, locked BOOLEAN NOT NULL DEFAULT 0"

.field private static final e:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS locations (id INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT NOT NULL DEFAULT \'\', timestamp TEXT, json TEXT, data BLOB, encrypted BOOLEAN NOT NULL DEFAULT 0, locked BOOLEAN NOT NULL DEFAULT 0);"

.field private static final f:Ljava/lang/String; = "DROP TABLE IF EXISTS locations"

.field private static final g:Ljava/lang/String; = "id INTEGER PRIMARY KEY AUTOINCREMENT, identifier TEXT NOT NULL UNIQUE, latitude DOUBLE NOT NULL, sin_latitude DOUBLE NOT NULL, cos_latitude DOUBLE NOT NULL, longitude DOUBLE NOT NULL, sin_longitude DOUBLE NOT NULL, cos_longitude DOUBLE NOT NULL, radius DOUBLE NOT NULL, notifyOnEntry BOOLEAN NOT NULL DEFAULT 0, notifyOnExit BOOLEAN NOT NULL DEFAULT 0, notifyOnDwell BOOLEAN NOT NULL DEFAULT 0, loiteringDelay INTEGER NOT NULL DEFAULT 0, extras TEXT, vertices TEXT"

.field private static final h:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS geofences (id INTEGER PRIMARY KEY AUTOINCREMENT, identifier TEXT NOT NULL UNIQUE, latitude DOUBLE NOT NULL, sin_latitude DOUBLE NOT NULL, cos_latitude DOUBLE NOT NULL, longitude DOUBLE NOT NULL, sin_longitude DOUBLE NOT NULL, cos_longitude DOUBLE NOT NULL, radius DOUBLE NOT NULL, notifyOnEntry BOOLEAN NOT NULL DEFAULT 0, notifyOnExit BOOLEAN NOT NULL DEFAULT 0, notifyOnDwell BOOLEAN NOT NULL DEFAULT 0, loiteringDelay INTEGER NOT NULL DEFAULT 0, extras TEXT, vertices TEXT);"

.field private static final i:Ljava/lang/String; = "DROP TABLE IF EXISTS geofences"

.field private static final j:Ljava/lang/String; = "ALTER TABLE locations ADD COLUMN uuid TEXT NOT NULL DEFAULT \'\'"

.field private static final k:Ljava/lang/String; = "ALTER TABLE locations ADD COLUMN data BLOB"

.field private static final l:Ljava/lang/String; = "ALTER TABLE locations ADD COLUMN encrypted BOOLEAN NOT NULL DEFAULT 0"

.field private static final m:Ljava/lang/String; = "ALTER TABLE geofences ADD COLUMN vertices TEXT"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 1
    const-string/jumbo v2, "transistor_location_manager"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    .line 2
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->a:Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS locations (id INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT NOT NULL DEFAULT \'\', timestamp TEXT, json TEXT, data BLOB, encrypted BOOLEAN NOT NULL DEFAULT 0, locked BOOLEAN NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    const-string v1, "CREATE TABLE IF NOT EXISTS geofences (id INTEGER PRIMARY KEY AUTOINCREMENT, identifier TEXT NOT NULL UNIQUE, latitude DOUBLE NOT NULL, sin_latitude DOUBLE NOT NULL, cos_latitude DOUBLE NOT NULL, longitude DOUBLE NOT NULL, sin_longitude DOUBLE NOT NULL, cos_longitude DOUBLE NOT NULL, radius DOUBLE NOT NULL, notifyOnEntry BOOLEAN NOT NULL DEFAULT 0, notifyOnExit BOOLEAN NOT NULL DEFAULT 0, notifyOnDwell BOOLEAN NOT NULL DEFAULT 0, loiteringDelay INTEGER NOT NULL DEFAULT 0, extras TEXT, vertices TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x1

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const-string p2, "DROP TABLE IF EXISTS geofences"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 18

    move-object/from16 v1, p1

    move/from16 v0, p2

    const-string v11, "json"

    const-string v2, "ALTER TABLE locations ADD COLUMN encrypted BOOLEAN NOT NULL DEFAULT 0"

    const-string v12, "ALTER TABLE geofences ADD COLUMN vertices TEXT"

    const-string v3, "ALTER TABLE locations ADD COLUMN data BLOB"

    .line 1
    const-string v13, "TSLocationManager"

    const-string/jumbo v14, "\ud83d\udee0\ud83d\udee0\ud83d\udee0\ud83d\udee0\ud83d\udee0\ud83d\udee0\ud83d\udee0\ud83d\udee0\ud83d\udee0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\ud83d\udee0 onUpgrade database version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CREATE TABLE IF NOT EXISTS geofences (id INTEGER PRIMARY KEY AUTOINCREMENT, identifier TEXT NOT NULL UNIQUE, latitude DOUBLE NOT NULL, sin_latitude DOUBLE NOT NULL, cos_latitude DOUBLE NOT NULL, longitude DOUBLE NOT NULL, sin_longitude DOUBLE NOT NULL, cos_longitude DOUBLE NOT NULL, radius DOUBLE NOT NULL, notifyOnEntry BOOLEAN NOT NULL DEFAULT 0, notifyOnExit BOOLEAN NOT NULL DEFAULT 0, notifyOnDwell BOOLEAN NOT NULL DEFAULT 0, loiteringDelay INTEGER NOT NULL DEFAULT 0, extras TEXT, vertices TEXT);"

    const-string v5, "ALTER TABLE locations ADD COLUMN uuid TEXT NOT NULL DEFAULT \'\'"

    const-string v15, "Ignored SQLITE error: "

    packed-switch v0, :pswitch_data_0

    move-object v1, v14

    goto/16 :goto_7

    :pswitch_0
    move-object/from16 v17, v14

    goto/16 :goto_5

    .line 6
    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    :pswitch_2
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    :try_start_1
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_1
    :pswitch_4
    :try_start_2
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v2, 0x0

    .line 32
    :try_start_3
    const-string v3, "locations"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :try_start_4
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 33
    :goto_2
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 36
    const-string/jumbo v4, "uuid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " JSON to data BLOB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 38
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 39
    const-string v5, "data"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 40
    const-string v0, "encrypted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string v0, ""

    invoke-virtual {v4, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "locations"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v4, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 46
    :cond_0
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v14

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v17, v14

    move-object v14, v2

    :goto_3
    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v17, v14

    .line 51
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_5
    :try_start_7
    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SQLITE ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v1, v17

    .line 62
    :goto_7
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
