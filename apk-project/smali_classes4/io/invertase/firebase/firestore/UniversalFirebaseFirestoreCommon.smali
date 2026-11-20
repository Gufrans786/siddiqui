.class public Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;
.super Ljava/lang/Object;
.source "UniversalFirebaseFirestoreCommon.java"


# static fields
.field static instanceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->instanceCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFirestoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDocumentForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p0

    return-object p0
.end method

.method static getFirestoreForApp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 4

    .line 39
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->createFirestoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->instanceCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object p0

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gl-rn/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lio/invertase/firebase/app/ReactNativeFirebaseVersion;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->setClientLanguage(Ljava/lang/String;)V

    .line 49
    invoke-static {v1, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    .line 51
    invoke-static {p1, v0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->instanceCache:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static getQueryForFirestore(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Query;
    .locals 1

    .line 102
    const-string v0, "collectionGroup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collectionGroup(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p0

    return-object p0
.end method

.method private static setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/lang/String;)V
    .locals 11

    .line 61
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>()V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_CACHE_SIZE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_HOST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_PERSISTENCE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_SSL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getCacheSizeBytes()J

    move-result-wide v6

    long-to-int v3, v6

    .line 72
    invoke-virtual {v0, v2, v3}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 76
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isPersistenceEnabled()Z

    move-result v7

    .line 79
    invoke-virtual {v0, v5, v7}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v7

    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isSslEnabled()Z

    move-result v8

    .line 83
    invoke-virtual {v0, p1, v8}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, -0x1

    if-ne v3, v9, :cond_0

    const-wide/16 v9, -0x1

    .line 87
    invoke-virtual {v1, v9, v10}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setCacheSizeBytes(J)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    goto :goto_0

    :cond_0
    int-to-long v9, v3

    .line 89
    invoke-virtual {v1, v9, v10}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setCacheSizeBytes(J)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 92
    :goto_0
    invoke-virtual {v1, v6}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setHost(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 93
    invoke-virtual {v1, v7}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setPersistenceEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 94
    invoke-virtual {v1, v8}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setSslEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 96
    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    .line 98
    invoke-virtual {v0, v2}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
