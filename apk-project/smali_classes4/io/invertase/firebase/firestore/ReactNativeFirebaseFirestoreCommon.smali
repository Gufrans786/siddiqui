.class Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCommon;
.super Ljava/lang/Object;
.source "ReactNativeFirebaseFirestoreCommon.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getServerTimestampBehavior(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .locals 2

    .line 54
    invoke-static {p0, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreCommon;->createFirestoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/UniversalFirebasePreferences;

    move-result-object p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreStatics;->FIRESTORE_SERVER_TIMESTAMP_BEHAVIOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    const-string v0, "none"

    invoke-virtual {p1, p0, v0}, Lio/invertase/firebase/common/UniversalFirebasePreferences;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    const-string p1, "estimate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    sget-object p0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->ESTIMATE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-object p0

    .line 64
    :cond_0
    const-string p1, "previous"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 65
    sget-object p0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->PREVIOUS:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-object p0

    .line 68
    :cond_1
    sget-object p0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->NONE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-object p0
.end method

.method static rejectPromiseFirestoreException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 3

    .line 31
    instance-of v0, p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {v0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, p1}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreException;Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {v0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lio/invertase/firebase/firestore/UniversalFirebaseFirestoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_2
    invoke-static {p0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method
