.class public Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;
.super Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;
.source "ReactNativeFirebaseCrashlyticsInitProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFBCrashlyticsInit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;-><init>()V

    return-void
.end method

.method static isCrashlyticsCollectionEnabled()Z
    .locals 7

    .line 34
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseJSON;

    move-result-object v0

    .line 35
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseMeta;

    move-result-object v1

    .line 36
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebasePreferences;

    move-result-object v2

    .line 38
    const-string v3, "crashlytics_auto_collection_enabled"

    invoke-virtual {v2, v3}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "RNFBCrashlyticsInit"

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v2, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsCollectionEnabled via RNFBPreferences: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, v3}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v0, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsCollectionEnabled via RNFBJSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsCollectionEnabled via RNFBMeta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsCollectionEnabled final value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static isCrashlyticsJavascriptExceptionHandlerChainingEnabled()Z
    .locals 7

    .line 89
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseJSON;

    move-result-object v0

    .line 90
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseMeta;

    move-result-object v1

    .line 91
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebasePreferences;

    move-result-object v2

    .line 93
    const-string v3, "crashlytics_javascript_exception_handler_chaining_enabled"

    invoke-virtual {v2, v3}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "RNFBCrashlyticsInit"

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v2, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsJavascriptExceptionHandlerChainingEnabled via RNFBPreferences: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, v3}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v0, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsJavascriptExceptionHandlerChainingEnabled via RNFBJSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsJavascriptExceptionHandlerChainingEnabled via RNFBMeta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCrashlyticsJavascriptExceptionHandlerChainingEnabled final value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static isErrorGenerationOnJSCrashEnabled()Z
    .locals 7

    .line 67
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseJSON;

    move-result-object v0

    .line 68
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseMeta;

    move-result-object v1

    .line 69
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebasePreferences;

    move-result-object v2

    .line 71
    const-string v3, "crashlytics_is_error_generation_on_js_crash_enabled"

    invoke-virtual {v2, v3}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "RNFBCrashlyticsInit"

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v2, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebasePreferences;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isErrorGenerationOnJSCrashEnabled via RNFBPreferences: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0, v3}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v0, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isErrorGenerationOnJSCrashEnabled via RNFBJSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v1, v3, v5}, Lio/invertase/firebase/common/ReactNativeFirebaseMeta;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isErrorGenerationOnJSCrashEnabled via RNFBMeta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isErrorGenerationOnJSCrashEnabled final value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    .line 116
    const-string v0, "RNFBCrashlyticsInit"

    invoke-super {p0}, Lio/invertase/firebase/common/ReactNativeFirebaseInitProvider;->onCreate()Z

    .line 119
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    .line 121
    invoke-static {}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsInitProvider;->isCrashlyticsCollectionEnabled()Z

    move-result v2

    .line 120
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 122
    const-string v1, "initialization successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 124
    const-string v2, "initialization failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method
