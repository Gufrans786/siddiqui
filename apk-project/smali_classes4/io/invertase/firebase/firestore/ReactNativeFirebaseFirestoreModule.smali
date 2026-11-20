.class public Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseFirestoreModule.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "Firestore"


# instance fields
.field private final module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;


# direct methods
.method public static synthetic $r8$lambda$A4AKW_NNgF8Zn1HTb83GOuPyxMA(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->lambda$loadBundle$0(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 41
    const-string v0, "Firestore"

    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    invoke-direct {v1, p1, v0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    return-void
.end method

.method static synthetic lambda$clearPersistence$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$disableNetwork$3(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 104
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$enableNetwork$4(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 118
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$loadBundle$0(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 60
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 62
    invoke-direct {p0, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->taskProgressToWritableMap(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$settings$6(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 148
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$terminate$7(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 162
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$useEmulator$5(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$waitForPendingWrites$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 90
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;->rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private taskProgressToWritableMap(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 211
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getBytesLoaded()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "bytesLoaded"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 213
    const-string v1, "documentsLoaded"

    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getDocumentsLoaded()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTotalBytes()J

    move-result-wide v1

    long-to-double v1, v1

    const-string/jumbo v3, "totalBytes"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 215
    const-string/jumbo v1, "totalDocuments"

    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTotalDocuments()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 217
    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTaskState()Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-result-object p1

    .line 219
    sget-object v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$1;->$SwitchMap$com$google$firebase$firestore$LoadBundleTaskProgress$TaskState:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const-string v2, "Running"

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    const-string v2, "Error"

    goto :goto_0

    .line 225
    :cond_1
    const-string v2, "Success"

    .line 230
    :cond_2
    :goto_0
    const-string/jumbo p1, "taskState"

    invoke-interface {v0, p1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addSnapshotsInSync(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 199
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    invoke-virtual {v0, p1, p2, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->addSnapshotsInSync(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 200
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public clearPersistence(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 71
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 72
    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->clearPersistence(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 73
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public disableNetwork(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 99
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 100
    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->disableNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda6;

    invoke-direct {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 101
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public enableNetwork(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 113
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 114
    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->enableNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 115
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public loadBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 56
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 57
    invoke-virtual {v0, p1, p2, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->loadBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/LoadBundleTask;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda1;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;Lcom/facebook/react/bridge/Promise;)V

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/LoadBundleTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public persistenceCacheIndexManager(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 173
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getPersistentCacheIndexManager()Lcom/google/firebase/firestore/PersistentCacheIndexManager;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->deleteAllIndexes()V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->disableIndexAutoCreation()V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager;->enableIndexAutoCreation()V

    :goto_0
    const/4 p1, 0x0

    .line 193
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 187
    :cond_3
    const-string p1, "firestore/index-manager-null"

    const-string p2, "`PersistentCacheIndexManager` is not available, persistence has not been enabled for Firestore"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeSnapshotsInSync(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 206
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    invoke-virtual {v0, p1, p2, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->removeSnapshotsInSync(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 207
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 47
    const-string v0, "debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setLoggingEnabled(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 48
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setLoggingEnabled(Z)V

    return-void
.end method

.method public settings(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 142
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->createFirestoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 144
    invoke-static {p3}, Lio/invertase/firebase/common/RCTConvertFirebase;->toHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->settings(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda5;

    invoke-direct {p2, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda5;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 145
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public terminate(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 157
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 158
    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->terminate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda7;

    invoke-direct {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 159
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public useEmulator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 128
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 129
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->useEmulator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda3;

    invoke-direct {p2, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 130
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public waitForPendingWrites(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 85
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule;->module:Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;

    .line 86
    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->waitForPendingWrites(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda4;

    invoke-direct {p2, p3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreModule$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 87
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
