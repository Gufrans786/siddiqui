.class public Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseFirestoreDocumentModule.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "FirestoreDocument"

.field private static documentSnapshotListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OpLAA7jAknD02y0JJpelCixcQfc(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/DocumentReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lFrZBKq3HSGZdhuLx-q0d3ivdAU(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->lambda$documentOnSnapshot$0(ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wyewm8X7XX5x6a1lJ2KZdcC6uvY(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->lambda$sendOnSnapshotEvent$14(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 42
    const-string v0, "FirestoreDocument"

    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$documentBatch$10(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseDocumentBatches(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$documentBatch$11(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->batch()Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 236
    check-cast v1, Ljava/util/Map;

    .line 237
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    const-string v3, "path"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    const-string v4, "data"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 242
    invoke-static {p0, v3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    .line 244
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "DELETE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "SET"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "UPDATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/WriteBatch;->delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_1
    const-string v2, "options"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 254
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "merge"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/firestore/WriteBatch;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 259
    :cond_3
    const-string v2, "mergeFields"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 260
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 264
    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 270
    :cond_4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 271
    invoke-static {v5}, Lcom/google/firebase/firestore/SetOptions;->mergeFields(Ljava/util/List;)Lcom/google/firebase/firestore/SetOptions;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/firestore/WriteBatch;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 273
    :cond_5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/firestore/WriteBatch;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 249
    :pswitch_2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/firestore/WriteBatch;->update(Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/firestore/WriteBatch;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6a6cd337 -> :sswitch_2
        0x14042 -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$documentBatch$12(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 284
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 285
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$documentDelete$3(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$documentGet$1(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/Source;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/DocumentReference;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 131
    invoke-static {p2, p3, p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->snapshotToWritableMap(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$documentGet$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$documentOnSnapshot$0(ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    if-eqz p5, :cond_1

    .line 70
    sget-object p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p4, :cond_0

    .line 72
    invoke-interface {p4}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 73
    sget-object p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    :cond_0
    invoke-direct {p0, p2, p3, p1, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void

    .line 77
    :cond_1
    invoke-direct {p0, p2, p3, p1, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->sendOnSnapshotEvent(Ljava/lang/String;Ljava/lang/String;ILcom/google/firebase/firestore/DocumentSnapshot;)V

    return-void
.end method

.method static synthetic lambda$documentSet$4(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$documentSet$5(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/firestore/DocumentReference;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 176
    const-string v0, "merge"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    const-string v0, "mergeFields"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 183
    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {v1}, Lcom/google/firebase/firestore/SetOptions;->mergeFields(Ljava/util/List;)Lcom/google/firebase/firestore/SetOptions;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 188
    :cond_2
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$documentSet$6(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 196
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$documentUpdate$7(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$documentUpdate$8(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$documentUpdate$9(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 215
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 216
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$sendOnSnapshotEvent$13(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-static {p0, p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->snapshotToWritableMap(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendOnSnapshotEvent$14(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 297
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 299
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v0, "snapshot"

    invoke-interface {v3, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 302
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object p4

    .line 304
    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    const-string v2, "firestore_document_sync_event"

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

    .line 312
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v4, v5, v6, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method private sendOnSnapshotError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 6

    .line 319
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 320
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 322
    instance-of v1, p4, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v3, "message"

    const-string v4, "code"

    if-eqz v1, :cond_0

    .line 323
    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;

    move-object v5, p4

    check-cast v5, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 325
    invoke-virtual {p4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-direct {v1, v5, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/Throwable;)V

    .line 326
    invoke-virtual {v1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getCode()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v4, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v3, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_0
    const-string/jumbo p4, "unknown"

    invoke-interface {v0, v4, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string p4, "An unknown error occurred"

    invoke-interface {v0, v3, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    const-string p4, "error"

    invoke-interface {v2, p4, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 334
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object p4

    .line 336
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    const-string v1, "firestore_document_sync_event"

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p4, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

.method private sendOnSnapshotEvent(Ljava/lang/String;Ljava/lang/String;ILcom/google/firebase/firestore/DocumentSnapshot;)V
    .locals 2

    .line 294
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p4

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda2;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    invoke-virtual {p4, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public documentBatch(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 226
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 230
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 229
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda8;

    invoke-direct {p2, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda8;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 282
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public documentDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 145
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 146
    invoke-static {p1, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/DocumentReference;)V

    invoke-static {p2, p3}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda4;

    invoke-direct {p2, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 148
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public documentGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 109
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 110
    invoke-static {v0, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p3

    if-eqz p4, :cond_2

    .line 114
    const-string/jumbo v0, "source"

    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 116
    const-string v0, "server"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object p4, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "cache"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 119
    sget-object p4, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 121
    :cond_1
    sget-object p4, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    goto :goto_0

    .line 124
    :cond_2
    sget-object p4, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    .line 128
    :goto_0
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p3, p4, p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/Source;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda6;

    invoke-direct {p2, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 133
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public documentOffSnapshot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 99
    sget-object p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 102
    sget-object p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public documentOnSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    sget-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 65
    invoke-static {v0, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p3

    .line 67
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p4, p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 84
    const-string p1, "includeMetadataChanges"

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    goto :goto_0

    .line 88
    :cond_1
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 92
    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    .line 94
    sget-object p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public documentSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 166
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 167
    invoke-static {p1, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p2

    .line 169
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda12;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda13;

    invoke-direct {p4, p5, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda13;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/firebase/firestore/DocumentReference;)V

    .line 170
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda14;

    invoke-direct {p2, p6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda14;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 193
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public documentUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 206
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 207
    invoke-static {p1, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p2

    .line 209
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 211
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance p4, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda10;

    invoke-direct {p4, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda10;-><init>(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 210
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda11;

    invoke-direct {p2, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda11;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 213
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public invalidate()V
    .locals 4

    .line 47
    invoke-super {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->invalidate()V

    .line 49
    sget-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    sget-object v2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 51
    sget-object v3, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/ListenerRegistration;

    .line 52
    invoke-interface {v2}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->documentSnapshotListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
