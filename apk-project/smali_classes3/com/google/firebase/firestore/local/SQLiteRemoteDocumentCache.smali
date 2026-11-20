.class final Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;
.super Ljava/lang/Object;
.source "SQLiteRemoteDocumentCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/RemoteDocumentCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;,
        Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
    }
.end annotation


# static fields
.field static final BINDS_PER_STATEMENT:I = 0x9


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

.field private indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$1;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    .line 63
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 64
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    return-void
.end method

.method private decodeMaybeDocument([BII)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 4

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 360
    invoke-static {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->parseFrom([B)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMaybeDocument(Lcom/google/firebase/firestore/proto/MaybeDocument;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v1, Lcom/google/firebase/Timestamp;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3, p3}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    .line 361
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/MutableDocument;->setReadTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 363
    const-string p2, "MaybeDocument failed to parse: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 12
    .param p4    # Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/firebase/firestore/local/QueryContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I",
            "Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 227
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v1

    .line 228
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p2

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT contents, read_time_seconds, read_time_nanos, document_type, path FROM remote_documents WHERE path >= ? AND path < ? AND path_length = ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 236
    const-string v3, ""

    goto :goto_0

    .line 237
    :cond_0
    const-string v3, " AND (document_type IS NULL OR document_type = ?) "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AND (read_time_seconds > ? OR ( read_time_seconds = ? AND read_time_nanos > ?) OR ( read_time_seconds = ? AND read_time_nanos = ? and path > ?)) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, " UNION "

    .line 231
    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string v3, "ORDER BY read_time_seconds, read_time_nanos, path LIMIT ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    add-int/lit8 v5, v5, 0x9

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 251
    invoke-static {v6}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    .line 252
    aput-object v7, v5, v3

    add-int/lit8 v9, v3, 0x2

    .line 253
    invoke-static {v7}, Lcom/google/firebase/firestore/local/EncodedPath;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    add-int/lit8 v7, v3, 0x3

    .line 254
    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x4

    .line 256
    iget v6, v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->dbValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    move v7, v3

    :cond_2
    add-int/lit8 v3, v7, 0x1

    .line 258
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v6, v7, 0x2

    .line 259
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v3

    add-int/lit8 v3, v7, 0x3

    .line 260
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    add-int/lit8 v6, v7, 0x4

    .line 261
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v3

    add-int/lit8 v3, v7, 0x5

    .line 262
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    add-int/lit8 v6, v7, 0x6

    .line 263
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    move v3, v6

    goto :goto_2

    .line 265
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    .line 267
    new-instance v8, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v8}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 268
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 269
    iget-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p1

    new-instance v6, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;

    move-object v7, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v6 .. v11}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)V

    .line 271
    invoke-virtual {p1, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 278
    invoke-virtual {v8}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 281
    iget-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    iget-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->backfill(Lcom/google/firebase/firestore/local/SQLitePersistence;)V

    .line 284
    monitor-enter v9

    .line 285
    :try_start_0
    monitor-exit v9

    return-object v9

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 286
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;
    .locals 7
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 294
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getDocumentsMatchingQuery$3(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Boolean;
    .locals 0

    .line 352
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V
    .locals 10
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/BackgroundQueue;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Landroid/database/Cursor;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 303
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v0, 0x1

    .line 304
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x2

    .line 305
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    .line 306
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    const/4 v0, 0x4

    .line 307
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v9, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;[BIIZLjava/lang/String;Lcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V

    .line 325
    invoke-interface {p3}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;->submit(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 10

    .line 100
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 101
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 100
    const-string v2, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object p2

    .line 106
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMaybeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 112
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 114
    invoke-virtual {p2}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 115
    invoke-virtual {p2}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 116
    invoke-static {p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->forMutableDocument(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    move-result-object p2

    iget p2, p2, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->dbValue:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 117
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p2

    .line 108
    const-string v0, "INSERT OR REPLACE INTO remote_documents (path, path_length, read_time_seconds, read_time_nanos, document_type, contents) VALUES (?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v0, p2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/firebase/firestore/local/IndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-void
.end method

.method public get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1

    .line 147
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    return-object p1
.end method

.method public getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 155
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT contents, read_time_seconds, read_time_nanos, document_type, path FROM remote_documents WHERE path IN ("

    const-string v4, ") ORDER BY path"

    invoke-direct {p1, v2, v3, v1, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 172
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 175
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 180
    iget-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->backfill(Lcom/google/firebase/firestore/local/SQLitePersistence;)V

    .line 183
    monitor-enter v0

    .line 184
    :try_start_0
    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAll(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->getCollectionParents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 194
    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 199
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x9

    const/16 v0, 0x384

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    .line 200
    invoke-direct {p0, v1, p2, p3, v2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 203
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 205
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v0, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0, p2, p3, v2}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;

    move-result-object v0

    .line 206
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move v0, v4

    goto :goto_1

    .line 213
    :cond_3
    sget-object p2, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->DOCUMENT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p3, p2}, Lcom/google/firebase/firestore/util/Util;->firstNEntries(Ljava/util/Map;ILjava/util/Comparator;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 8
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/firestore/local/QueryContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v5, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;

    new-instance v6, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;

    invoke-direct {v6, p1, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;)V

    const v4, 0x7fffffff

    move-object v1, p0

    move-object v3, p2

    move-object v7, p4

    .line 344
    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentType;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getAll$0$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V

    return-void
.end method

.method synthetic lambda$getAll$1$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;Landroid/database/Cursor;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1, p2, p5, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V

    if-eqz p4, :cond_0

    .line 275
    invoke-virtual {p4}, Lcom/google/firebase/firestore/local/QueryContext;->incrementDocumentReadCount()V

    :cond_0
    return-void
.end method

.method synthetic lambda$processRowInBackground$2$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache([BIIZLjava/lang/String;Lcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->decodeMaybeDocument([BII)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 314
    iget-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->documentTypeBackfiller:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;

    invoke-virtual {p4, p5, p2, p3, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;->enqueue(Ljava/lang/String;IILcom/google/firebase/firestore/model/MutableDocument;)V

    :cond_0
    if-eqz p6, :cond_2

    .line 316
    invoke-interface {p6, p1}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 317
    :cond_2
    :goto_0
    monitor-enter p7

    .line 318
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p2

    invoke-interface {p7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    monitor-exit p7

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 130
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v3, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 132
    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_1
    new-instance p1, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "DELETE FROM remote_documents WHERE path IN ("

    const-string v4, ")"

    invoke-direct {p1, v2, v3, v0, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 138
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->executeNextSubquery()V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/local/IndexManager;->updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-void
.end method

.method public setIndexManager(Lcom/google/firebase/firestore/local/IndexManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    return-void
.end method
