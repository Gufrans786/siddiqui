.class public Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseFirestoreCollectionModule.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "FirestoreCollection"

.field private static collectionSnapshotListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$88rl5K__rt_dIPtnVhJw3UeqjzI(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->lambda$handleQueryOnSnapshot$4(ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ApvANZW_VZoYz_Lc7unaE-MU87s(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->lambda$namedQueryGet$1(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqtncXBAAAS7I2oddCMazzbpNaQ(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->lambda$sendOnSnapshotEvent$7(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rd4Y8d1CYwKC1C78wz4UH4m0olw(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->lambda$namedQueryOnSnapshot$0(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 41
    const-string v0, "FirestoreCollection"

    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    return-void
.end method

.method private getSource(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/firebase/firestore/Source;
    .locals 2

    if-eqz p1, :cond_2

    .line 444
    const-string/jumbo v0, "source"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 446
    const-string v0, "server"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    sget-object p1, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    return-object p1

    .line 448
    :cond_0
    const-string v0, "cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 449
    sget-object p1, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    return-object p1

    .line 451
    :cond_1
    sget-object p1, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    return-object p1

    .line 454
    :cond_2
    sget-object p1, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    return-object p1
.end method

.method private handleQueryGet(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Lcom/google/firebase/firestore/Source;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->get(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 370
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private handleQueryOnSnapshot(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 6

    if-eqz p5, :cond_0

    .line 339
    const-string v0, "includeMetadataChanges"

    invoke-interface {p5, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-interface {p5, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 341
    sget-object p5, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    goto :goto_0

    .line 343
    :cond_0
    sget-object p5, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    :goto_0
    move-object v5, p5

    .line 346
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/MetadataChanges;)V

    .line 360
    iget-object p1, p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 361
    invoke-virtual {p1, v5, v0}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    .line 363
    sget-object p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$aggregateQuery$3(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 9

    .line 253
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 255
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    const/4 v1, 0x0

    move v2, v1

    .line 257
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 258
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 259
    const-string v4, "aggregateType"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 260
    const-string v4, ""

    .line 261
    :cond_0
    const-string v5, "field"

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    const-string v6, "key"

    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v6, "firestore/invalid-argument"

    if-nez v3, :cond_1

    .line 265
    const-string p0, "key may not be null"

    invoke-static {p1, v6, p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "count"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "sum"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "average"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v8, v1

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid AggregateType: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v6, p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 275
    :pswitch_1
    invoke-static {v5}, Lcom/google/firebase/firestore/AggregateField;->sum(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->get(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_5

    .line 277
    const-string p0, "firestore/unknown"

    const-string/jumbo p2, "sum unexpectedly null"

    invoke-static {p1, p0, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 284
    :pswitch_2
    invoke-static {v5}, Lcom/google/firebase/firestore/AggregateField;->average(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->get(Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;)Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_6

    .line 286
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 300
    :cond_7
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 302
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p1, p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a321e3 -> :sswitch_2
        0x1be4b -> :sswitch_1
        0x5a7510f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$collectionCount$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    const-string p1, "count"

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 192
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$handleQueryGet$5(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 372
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$handleQueryOnSnapshot$4(ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 6

    if-eqz p6, :cond_1

    .line 349
    sget-object p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p4, :cond_0

    .line 351
    invoke-interface {p4}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 352
    sget-object p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 354
    :cond_0
    invoke-direct {p0, p2, p3, p1, p6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void

    :cond_1
    move-object v0, p0

    move v3, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    move-object v4, p5

    .line 356
    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->sendOnSnapshotEvent(Ljava/lang/String;Ljava/lang/String;ILcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/MetadataChanges;)V

    return-void
.end method

.method private synthetic lambda$namedQueryGet$1(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 147
    invoke-virtual {p8}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p8}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p8

    move-object v3, p8

    check-cast v3, Lcom/google/firebase/firestore/Query;

    if-nez v3, :cond_0

    .line 150
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void

    .line 152
    :cond_0
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 155
    invoke-direct {p0, p7}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->getSource(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/firebase/firestore/Source;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->handleQueryGet(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Lcom/google/firebase/firestore/Source;Lcom/facebook/react/bridge/Promise;)V

    return-void

    .line 158
    :cond_1
    invoke-virtual {p8}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$namedQueryOnSnapshot$0(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 76
    invoke-virtual {p8}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p8}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p8

    move-object v3, p8

    check-cast v3, Lcom/google/firebase/firestore/Query;

    if-nez v3, :cond_0

    .line 79
    new-instance p4, Ljava/lang/NullPointerException;

    invoke-direct {p4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void

    .line 81
    :cond_0
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    move v4, p3

    move-object v5, p7

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->handleQueryOnSnapshot(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 88
    invoke-virtual {p8}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v1, v2, v4, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$sendOnSnapshotEvent$6(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/MetadataChanges;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    const-string v0, "onSnapshot"

    invoke-static {p0, p1, v0, p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->snapshotToWritableMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/MetadataChanges;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendOnSnapshotEvent$7(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 393
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 395
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v0, "snapshot"

    invoke-interface {v3, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 398
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object p4

    .line 400
    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    const-string v2, "firestore_collection_sync_event"

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p4, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void

    :cond_0
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 408
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v4, v5, v6, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method private sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 6

    .line 415
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 416
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 418
    instance-of v1, p4, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v3, "message"

    const-string v4, "code"

    if-eqz v1, :cond_0

    .line 419
    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;

    move-object v5, p4

    check-cast v5, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 421
    invoke-virtual {p4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-direct {v1, v5, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/Throwable;)V

    .line 422
    invoke-virtual {v1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getCode()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v4, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v3, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    const-string/jumbo p4, "unknown"

    invoke-interface {v0, v4, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string p4, "An unknown error occurred"

    invoke-interface {v0, v3, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    const-string p4, "error"

    invoke-interface {v2, p4, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 430
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object p4

    .line 432
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    const-string v1, "firestore_collection_sync_event"

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p4, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

.method private sendOnSnapshotEvent(Ljava/lang/String;Ljava/lang/String;ILcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/MetadataChanges;)V
    .locals 2

    .line 387
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->getTransactionalExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p4, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/MetadataChanges;)V

    .line 386
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p4

    new-instance p5, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0, p1, p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda4;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    invoke-virtual {p4, p5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public aggregateQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 210
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    .line 211
    new-instance p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;

    .line 215
    invoke-static {v0, v1, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getQueryForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object p4

    invoke-direct/range {p1 .. p7}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 220
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move p4, p3

    .line 222
    :goto_0
    invoke-interface {p8}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p5

    const/4 p6, 0x1

    if-ge p4, p5, :cond_4

    .line 223
    invoke-interface {p8, p4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p5

    .line 224
    const-string p7, "aggregateType"

    invoke-interface {p5, p7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    if-nez p7, :cond_0

    .line 225
    const-string p7, ""

    .line 226
    :cond_0
    const-string v0, "field"

    invoke-interface {p5, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 228
    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move p6, v1

    goto :goto_2

    :sswitch_0
    const-string p6, "count"

    invoke-virtual {p7, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    const/4 p6, 0x2

    goto :goto_2

    :sswitch_1
    const-string/jumbo v0, "sum"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :sswitch_2
    const-string p6, "average"

    invoke-virtual {p7, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    goto :goto_1

    :cond_2
    move p6, p3

    :cond_3
    :goto_2
    packed-switch p6, :pswitch_data_0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid AggregateType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "firestore/invalid-argument"

    invoke-static {p9, p2, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 230
    :pswitch_0
    invoke-static {}, Lcom/google/firebase/firestore/AggregateField;->count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 233
    :pswitch_1
    invoke-static {p5}, Lcom/google/firebase/firestore/AggregateField;->sum(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 236
    :pswitch_2
    invoke-static {p5}, Lcom/google/firebase/firestore/AggregateField;->average(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 244
    :cond_4
    iget-object p1, p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 246
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/firestore/AggregateField;

    .line 247
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    invoke-virtual {p2, p6, p5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    new-array p3, p3, [Lcom/google/firebase/firestore/AggregateField;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/firebase/firestore/AggregateField;

    .line 245
    invoke-virtual {p1, p4, p2}, Lcom/google/firebase/firestore/Query;->aggregate(Lcom/google/firebase/firestore/AggregateField;[Lcom/google/firebase/firestore/AggregateField;)Lcom/google/firebase/firestore/AggregateQuery;

    move-result-object p1

    .line 249
    sget-object p2, Lcom/google/firebase/firestore/AggregateSource;->SERVER:Lcom/google/firebase/firestore/AggregateSource;

    .line 250
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/AggregateQuery;->get(Lcom/google/firebase/firestore/AggregateSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;

    invoke-direct {p2, p8, p9}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    .line 251
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a321e3 -> :sswitch_2
        0x1be4b -> :sswitch_1
        0x5a7510f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public collectionCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 173
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    .line 174
    new-instance p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;

    .line 178
    invoke-static {v0, v1, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getQueryForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object p4

    invoke-direct/range {p1 .. p7}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 183
    iget-object p1, p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->count()Lcom/google/firebase/firestore/AggregateQuery;

    move-result-object p1

    .line 185
    sget-object p2, Lcom/google/firebase/firestore/AggregateSource;->SERVER:Lcom/google/firebase/firestore/AggregateSource;

    .line 186
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/AggregateQuery;->get(Lcom/google/firebase/firestore/AggregateSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda7;

    invoke-direct {p2, p8}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 187
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public collectionGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 318
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    .line 319
    new-instance p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;

    .line 323
    invoke-static {v0, v1, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getQueryForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object p4

    invoke-direct/range {p1 .. p7}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 327
    invoke-direct {p0, p8}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->getSource(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/firebase/firestore/Source;

    move-result-object p2

    invoke-direct {p0, p1, p2, p9}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->handleQueryGet(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Lcom/google/firebase/firestore/Source;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public collectionOffSnapshot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 123
    sget-object p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 126
    sget-object p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->removeEventListeningExecutor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public collectionOnSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 104
    sget-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    .line 109
    new-instance p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;

    .line 113
    invoke-static {v0, v1, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getQueryForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object p4

    invoke-direct/range {p1 .. p7}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V

    move-object p4, p3

    move p5, p8

    move-object p6, p9

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 118
    invoke-direct/range {p1 .. p6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->handleQueryOnSnapshot(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public invalidate()V
    .locals 4

    .line 46
    invoke-super {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->invalidate()V

    .line 48
    sget-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    sget-object v2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 50
    sget-object v3, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/ListenerRegistration;

    .line 51
    invoke-interface {v2}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public namedQueryGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 142
    invoke-static/range {p1 .. p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p4

    .line 144
    invoke-virtual {p4, p3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getNamedQuery(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v2, p9

    invoke-direct/range {v0 .. v8}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda5;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 145
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public namedQueryOnSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 67
    sget-object p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->collectionSnapshotListeners:Landroid/util/SparseArray;

    move/from16 v4, p8

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static/range {p1 .. p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p4

    .line 73
    invoke-virtual {p4, p3}, Lcom/google/firebase/firestore/FirebaseFirestore;->getNamedQuery(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda2;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 74
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
