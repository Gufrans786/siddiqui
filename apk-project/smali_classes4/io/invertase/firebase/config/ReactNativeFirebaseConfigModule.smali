.class public Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;
.super Lio/invertase/firebase/common/ReactNativeFirebaseModule;
.source "ReactNativeFirebaseConfigModule.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "Config"

.field private static mConfigUpdateRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;


# direct methods
.method public static synthetic $r8$lambda$2BPvKwLe5SExzNuPxDYjHg2xeB4(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$activate$0(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G8ixYZ0FlYN9sTbbPvdt_bNEfcA(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$reset$3(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDoNZUgUUSqCLua85ze_8Ox-tAA(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$setDefaults$5(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IwZDlDa9GCGT3OHa2Ck9gLzXsTo(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$setDefaultsFromResource$6(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YjuCtqO51Eyq3ebKS_ud1Pk3U6k(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$setCustomSignals$8(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bFkzlCTYjFUU63tT-hSTAlw11S0(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$fetchAndActivate$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzEv4tq_5ImcZrBdzYCzoH9RzXs(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$setConfigSettings$4(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$weChXfg4JTpyBOjSCa2-LqONnVc(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$ensureInitialized$7(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJSflxf5ZXth-SiFJ-c69HewAl4(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->lambda$fetch$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->mConfigUpdateRegistrations:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 43
    const-string v0, "Config"

    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    invoke-direct {v1, p1, v0}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    return-void
.end method

.method private synthetic lambda$activate$0(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 68
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$ensureInitialized$7(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 171
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 172
    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$fetch$1(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 82
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithConfigException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$fetchAndActivate$2(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 96
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithConfigException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$reset$3(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 110
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithConfigException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$setConfigSettings$4(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 124
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$setCustomSignals$8(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 264
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 267
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$setDefaults$5(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 138
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$setDefaultsFromResource$6(Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 152
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource_not_found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "The specified resource name was not found."

    invoke-static {p1, v1, v0}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p1, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithExceptionMap(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method private rejectPromiseWithConfigException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 2
    .param p2    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 281
    const-string/jumbo p2, "unknown"

    const-string v0, "Operation cannot be completed successfully, due to an unknown error."

    invoke-static {p1, p2, v0}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "fetch() operation cannot be completed successfully, due to throttling."

    .line 293
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 289
    const-string/jumbo v1, "throttled"

    invoke-static {p1, v1, v0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_1
    const-string v0, "fetch() operation cannot be completed successfully."

    .line 299
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 295
    const-string v1, "failure"

    invoke-static {p1, v1, v0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->rejectPromiseWithCodeAndMessage(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resultWithConstants(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 273
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 274
    const-string v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object p1, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    const-string v1, "[DEFAULT]"

    invoke-virtual {p1, v1}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->getConstantsForApp(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "constants"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public activate(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 64
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 65
    invoke-virtual {v0, p1}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->activate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda1;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public ensureInitialized(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 167
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 168
    invoke-virtual {v0, p1}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->ensureInitialized(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda6;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 169
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public fetch(Ljava/lang/String;DLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 78
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    double-to-long p2, p2

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->fetch(Ljava/lang/String;J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda4;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public fetchAndActivate(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 92
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 93
    invoke-virtual {v0, p1}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->fetchAndActivate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda3;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    invoke-virtual {v0}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->getConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 49
    invoke-super {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseModule;->invalidate()V

    .line 51
    sget-object v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->mConfigUpdateRegistrations:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    .line 57
    invoke-interface {v1}, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;->remove()V

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigUpdated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 181
    sget-object v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->mConfigUpdateRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;

    invoke-direct {v1, p0, p1}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->addOnConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    move-result-object v0

    .line 244
    sget-object v1, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->mConfigUpdateRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeConfigUpdateRegistration(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 250
    sget-object v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->mConfigUpdateRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;->remove()V

    .line 254
    sget-object v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->mConfigUpdateRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 106
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 107
    invoke-virtual {v0, p1}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->reset(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda0;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setConfigSettings(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 120
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 121
    invoke-static {p2}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->setConfigSettings(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda2;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 122
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setCustomSignals(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 260
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 261
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->setCustomSignals(Ljava/lang/String;Ljava/util/HashMap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda8;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 262
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setDefaults(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 134
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 135
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->setDefaults(Ljava/lang/String;Ljava/util/HashMap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda5;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 136
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setDefaultsFromResource(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 148
    iget-object v0, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->module:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    .line 149
    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->setDefaultsFromResource(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$$ExternalSyntheticLambda7;-><init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Lcom/facebook/react/bridge/Promise;)V

    .line 150
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
