.class public Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseFirestoreTransactionModule.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "FirestoreTransaction"


# instance fields
.field private transactionHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 44
    const-string v0, "FirestoreTransaction"

    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic lambda$transactionBegin$2(Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Ljava/lang/String;)V
    .locals 6

    .line 134
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 135
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "update"

    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    .line 142
    invoke-virtual {p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getTransactionId()I

    move-result v5

    const-string v1, "firestore_transaction_event"

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    invoke-virtual {p0, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

.method static synthetic lambda$transactionBegin$3(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->resetState(Lcom/google/firebase/firestore/Transaction;)V

    .line 132
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda2;-><init>(Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->await()V

    .line 152
    iget-boolean p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->aborted:Z

    if-nez p1, :cond_9

    .line 159
    iget-boolean p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->timeout:Z

    if-nez p1, :cond_8

    .line 165
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getCommandBuffer()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 173
    :cond_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_7

    .line 176
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 177
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "path"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string/jumbo v4, "type"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {p3, v3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    .line 182
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "DELETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "SET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "UPDATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    const-string v4, "data"

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 210
    :pswitch_0
    invoke-virtual {p4, v3}, Lcom/google/firebase/firestore/Transaction;->delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_3

    .line 184
    :pswitch_1
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-static {p3, v4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v4

    .line 185
    const-string v5, "options"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 187
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "merge"

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 188
    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v2

    invoke-virtual {p4, v3, v4, v2}, Lcom/google/firebase/firestore/Transaction;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_3

    .line 190
    :cond_4
    const-string v5, "mergeFields"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 191
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 194
    invoke-static {v2}, Lio/invertase/firebase/common/RCTConvertFirebase;->toArrayList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 195
    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    :cond_5
    invoke-static {v6}, Lcom/google/firebase/firestore/SetOptions;->mergeFields(Ljava/util/List;)Lcom/google/firebase/firestore/SetOptions;

    move-result-object v2

    .line 198
    invoke-virtual {p4, v3, v4, v2}, Lcom/google/firebase/firestore/Transaction;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_3

    .line 201
    :cond_6
    invoke-virtual {p4, v3, v4}, Lcom/google/firebase/firestore/Transaction;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;)Lcom/google/firebase/firestore/Transaction;

    goto :goto_3

    .line 206
    :pswitch_2
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {p3, v2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v2

    .line 207
    invoke-virtual {p4, v3, v2}, Lcom/google/firebase/firestore/Transaction;->update(Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;)Lcom/google/firebase/firestore/Transaction;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-object p1

    .line 160
    :cond_8
    new-instance p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string/jumbo p1, "timeout"

    sget-object p2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->DEADLINE_EXCEEDED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw p0

    .line 153
    :cond_9
    new-instance p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string p1, "abort"

    sget-object p2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw p0

    nop

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

.method static synthetic lambda$transactionBegin$4(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 219
    iget-boolean v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 225
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string/jumbo v1, "type"

    if-eqz v0, :cond_1

    .line 226
    const-string p3, "complete"

    invoke-interface {v3, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    .line 232
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getTransactionId()I

    move-result v6

    const-string v2, "firestore_transaction_event"

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p1, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void

    :cond_1
    move-object v5, p2

    .line 236
    const-string p2, "error"

    invoke-interface {v3, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    .line 239
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 241
    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;

    move-object v2, p3

    check-cast v2, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 243
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {v1, v2, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/Throwable;)V

    .line 244
    const-string p3, "code"

    invoke-virtual {v1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string p3, "message"

    invoke-virtual {v1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v3, p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 249
    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    .line 253
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getTransactionId()I

    move-result v6

    const-string v2, "firestore_transaction_event"

    invoke-direct/range {v1 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    invoke-virtual {p1, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

.method static synthetic lambda$transactionGetDocument$0(Ljava/lang/String;Ljava/lang/String;Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lcom/google/firebase/firestore/DocumentReference;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-virtual {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->getDocument(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object p2

    .line 83
    invoke-static {p0, p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->snapshotToWritableMap(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$transactionGetDocument$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 4

    .line 49
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 51
    iget-object v3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->abort()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 60
    invoke-super {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->invalidate()V

    return-void
.end method

.method public transactionApplyBuffer(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 109
    iget-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->signalBufferReceived(Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_0
    return-void
.end method

.method public transactionBegin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 118
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    invoke-direct {v0, p1, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;-><init>(Ljava/lang/String;I)V

    .line 120
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 123
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object p3

    .line 126
    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p3, p2, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->runTransaction(Lcom/google/firebase/firestore/Transaction$Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p3, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda1;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public transactionDispose(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 97
    iget-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;->abort()V

    .line 102
    iget-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public transactionGetDocument(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 66
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->transactionHandlers:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    if-nez p3, :cond_0

    .line 70
    const-string p1, "internal-error"

    const-string p2, "An internal error occurred whilst attempting to find a native transaction by id."

    invoke-static {p5, p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 78
    invoke-static {v0, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p4

    .line 81
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->getTransactionalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lcom/google/firebase/firestore/DocumentReference;)V

    .line 80
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda4;

    invoke-direct {p2, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 85
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
