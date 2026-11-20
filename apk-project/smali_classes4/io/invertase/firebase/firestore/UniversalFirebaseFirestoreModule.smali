.class public Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;
.super Lio/invertase/firebase/common/UniversalFirebaseModule;
.source "UniversalFirebaseFirestoreModule.java"


# static fields
.field private static emulatorConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onSnapshotInSyncListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->onSnapshotInSyncListeners:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->emulatorConfigs:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/common/UniversalFirebaseModule;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addSnapshotsInSync$0(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 57
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 59
    new-instance v1, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;

    const-string v2, "firestore_snapshots_in_sync_event"

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

.method static synthetic lambda$settings$2(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    const-string v0, "cacheSizeBytes"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_"

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 108
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_CACHE_SIZE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 109
    invoke-virtual {v1, v3, v0}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->setIntValue(Ljava/lang/String;I)V

    .line 115
    :cond_0
    const-string v0, "host"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_HOST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v3, v0}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    const-string v0, "persistence"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_PERSISTENCE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 125
    invoke-virtual {v1, v3, v0}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->setBooleanValue(Ljava/lang/String;Z)V

    .line 131
    :cond_2
    const-string/jumbo v0, "ssl"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_SSL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    invoke-virtual {v1, v3, v0}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->setBooleanValue(Ljava/lang/String;Z)V

    .line 139
    :cond_3
    const-string v0, "serverTimestampBehavior"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_SERVER_TIMESTAMP_BEHAVIOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 141
    invoke-virtual {v1, p1, p0}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$useEmulator$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->createFirestoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->emulatorConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    sget-object v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->emulatorConfigs:Ljava/util/HashMap;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/firestore/FirebaseFirestore;->useEmulator(Ljava/lang/String;I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method addSnapshotsInSync(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 52
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 53
    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->addSnapshotsInSyncListener(Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    .line 68
    sget-object p2, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->onSnapshotInSyncListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method clearPersistence(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->clearPersistence()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method disableNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->disableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method enableNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->enableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method loadBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 1

    .line 153
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 154
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/firebase/firestore/FirebaseFirestore;->loadBundle([B)Lcom/google/firebase/firestore/LoadBundleTask;

    move-result-object p1

    return-object p1
.end method

.method removeSnapshotsInSync(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 72
    sget-object p1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->onSnapshotInSyncListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 75
    sget-object p1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->onSnapshotInSyncListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method settings(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 101
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method terminate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 167
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->createFirestoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    sget-object p2, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->instanceCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 169
    sget-object p2, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->instanceCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 170
    sget-object p2, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->instanceCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->terminate()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method useEmulator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreModule$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method waitForPendingWrites(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p1, p2}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->waitForPendingWrites()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
