.class public Lcom/microsoft/codepush/react/CodePush;
.super Ljava/lang/Object;
.source "CodePush.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static volatile mCurrentInstance:Lcom/microsoft/codepush/react/CodePush; = null

.field private static mPublicKey:Ljava/lang/String; = null

.field private static mReactHostHolder:Lcom/microsoft/codepush/react/ReactHostHolder; = null

.field private static mReactInstanceHolder:Lcom/microsoft/codepush/react/ReactInstanceHolder; = null

.field private static mServerUrl:Ljava/lang/String; = "https://api.revopush.org/"

.field private static sAppVersion:Ljava/lang/String; = null

.field private static sIsRunningBinaryVersion:Z = false

.field private static sNeedToReportRollback:Z = false

.field private static sTestConfigurationFlag:Z = false


# instance fields
.field private mAssetsBundleFileName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeploymentKey:Ljava/lang/String;

.field private mDidUpdate:Z

.field private final mIsDebugMode:Z

.field private mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

.field private mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

.field private mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/codepush/react/CodePush;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    .line 75
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    .line 76
    new-instance p2, Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePush;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    .line 77
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mDeploymentKey:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    .line 79
    new-instance p1, Lcom/microsoft/codepush/react/SettingsManager;

    iget-object p2, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/microsoft/codepush/react/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    .line 81
    sget-object p1, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 84
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    new-instance p2, Lcom/microsoft/codepush/react/CodePushUnknownException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to get package info for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 90
    :cond_0
    :goto_0
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    .line 92
    const-string p1, "PublicKey"

    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->getCustomPropertyFromStringsIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    .line 95
    :cond_1
    const-string p1, "ServerUrl"

    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->getCustomPropertyFromStringsIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    .line 99
    :cond_2
    invoke-virtual {p0, v0}, Lcom/microsoft/codepush/react/CodePush;->clearDebugCacheIfNeeded(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->initializeUpdateAfterRestart()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;ZI)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 111
    invoke-direct {p0, p4}, Lcom/microsoft/codepush/react/CodePush;->getPublicKeyByResourceDescriptor(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 105
    sput-object p4, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    if-eqz p5, :cond_0

    .line 118
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->getPublicKeyByResourceDescriptor(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    .line 121
    :cond_0
    sput-object p4, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method public static getBundleUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-static {p0}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCustomPropertyFromStringsIfExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CodePush"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Specified "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;Z)Lcom/microsoft/codepush/react/CodePush;
    .locals 2

    .line 27
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/microsoft/codepush/react/CodePush;

    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    sput-object v1, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    return-object p0
.end method

.method public static getJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 229
    const-string v0, "index.android.bundle"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJSBundleFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 233
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v0, p0}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFileInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Lcom/microsoft/codepush/react/CodePushNotInitializedException;

    const-string v0, "A CodePush instance has not been created yet. Have you added it to your app\'s list of ReactPackages?"

    invoke-direct {p0, v0}, Lcom/microsoft/codepush/react/CodePushNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPublicKeyByResourceDescriptor(I)Ljava/lang/String;
    .locals 4

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 137
    :cond_0
    new-instance p1, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;

    const-string v0, "Specified public key is empty"

    invoke-direct {p1, v0}, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get public key, related resource descriptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " can not be found"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getReactHost()Lcom/facebook/react/ReactHost;
    .locals 1

    .line 417
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mReactHostHolder:Lcom/microsoft/codepush/react/ReactHostHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    invoke-interface {v0}, Lcom/microsoft/codepush/react/ReactHostHolder;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method static getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .line 410
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mReactInstanceHolder:Lcom/microsoft/codepush/react/ReactInstanceHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    invoke-interface {v0}, Lcom/microsoft/codepush/react/ReactInstanceHolder;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceUrl()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method private hasBinaryVersionChanged(Lorg/json/JSONObject;)Z
    .locals 2

    .line 359
    const-string v0, "appVersion"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isPackageBundleLatest(Lorg/json/JSONObject;)Z
    .locals 5

    .line 344
    :try_start_0
    const-string v0, "binaryModifiedTime"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 348
    :goto_0
    const-string v2, "appVersion"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->getBinaryResourcesModifiedTime()J

    move-result-wide v1

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 352
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->isUsingTestConfiguration()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 354
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v1, "Error in reading binary modified date from package metadata"

    invoke-direct {v0, v1, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isUsingTestConfiguration()Z
    .locals 1

    .line 384
    sget-boolean v0, Lcom/microsoft/codepush/react/CodePush;->sTestConfigurationFlag:Z

    return v0
.end method

.method public static overrideAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 368
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    return-void
.end method

.method private rollbackPackage()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/microsoft/codepush/react/SettingsManager;->saveFailedUpdate(Lorg/json/JSONObject;)V

    .line 374
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->rollbackPackage()V

    .line 375
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removePendingUpdate()V

    return-void
.end method

.method public static setReactHost(Lcom/microsoft/codepush/react/ReactHostHolder;)V
    .locals 0

    .line 406
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->mReactHostHolder:Lcom/microsoft/codepush/react/ReactHostHolder;

    return-void
.end method

.method public static setReactInstanceHolder(Lcom/microsoft/codepush/react/ReactInstanceHolder;)V
    .locals 0

    .line 402
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->mReactInstanceHolder:Lcom/microsoft/codepush/react/ReactInstanceHolder;

    return-void
.end method

.method public static setUsingTestConfiguration(Z)V
    .locals 0

    .line 392
    sput-boolean p0, Lcom/microsoft/codepush/react/CodePush;->sTestConfigurationFlag:Z

    return-void
.end method


# virtual methods
.method public clearDebugCacheIfNeeded(Z)V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/SettingsManager;->isPendingUpdate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 166
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "ReactNativeDevBundle.js"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public clearUpdates()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->clearUpdates()V

    .line 397
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removePendingUpdate()V

    .line 398
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removeFailedUpdates()V

    return-void
.end method

.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Lcom/microsoft/codepush/react/CodePushNativeModule;

    iget-object v3, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    iget-object v4, p0, Lcom/microsoft/codepush/react/CodePush;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    iget-object v5, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    move-object v2, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/codepush/react/CodePushNativeModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/microsoft/codepush/react/CodePush;Lcom/microsoft/codepush/react/CodePushUpdateManager;Lcom/microsoft/codepush/react/CodePushTelemetryManager;Lcom/microsoft/codepush/react/SettingsManager;)V

    .line 427
    new-instance p1, Lcom/microsoft/codepush/react/CodePushDialog;

    invoke-direct {p1, v1}, Lcom/microsoft/codepush/react/CodePushDialog;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 442
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public didUpdate()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 178
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetsBundleFileName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mAssetsBundleFileName:Ljava/lang/String;

    return-object v0
.end method

.method getBinaryResourcesModifiedTime()J
    .locals 4

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "CODE_PUSH_APK_BUILD_TIME"

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v2, "Error in getting binary resources modified time"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeploymentKey()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDeploymentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getJSBundleFileInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 241
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mAssetsBundleFileName:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "assets://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mAssetsBundleFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageBundlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushMalformedDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->clearUpdates()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 255
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->logBundleUrl(Ljava/lang/String;)V

    .line 256
    sput-boolean v1, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return-object p1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v2

    .line 261
    invoke-direct {p0, v2}, Lcom/microsoft/codepush/react/CodePush;->isPackageBundleLatest(Lorg/json/JSONObject;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 262
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->logBundleUrl(Ljava/lang/String;)V

    .line 263
    sput-boolean v4, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return-object v0

    .line 267
    :cond_1
    iput-boolean v4, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 268
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/microsoft/codepush/react/CodePush;->hasBinaryVersionChanged(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->clearUpdates()V

    .line 272
    :cond_3
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->logBundleUrl(Ljava/lang/String;)V

    .line 273
    sput-boolean v1, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return-object p1
.end method

.method public getPackageFolder()Ljava/lang/String;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    const-string v2, "packageHash"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 186
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 279
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method initializeUpdateAfterRestart()V
    .locals 4

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 287
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->getPendingUpdate()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    .line 299
    invoke-direct {p0, v1}, Lcom/microsoft/codepush/react/CodePush;->isPackageBundleLatest(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/microsoft/codepush/react/CodePush;->hasBinaryVersionChanged(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    :try_start_1
    const-string v1, "isLoading"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 309
    const-string v0, "Update did not finish loading the last time, rolling back to a previous version."

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 310
    sput-boolean v2, Lcom/microsoft/codepush/react/CodePush;->sNeedToReportRollback:Z

    .line 311
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePush;->rollbackPackage()V

    return-void

    .line 315
    :cond_1
    iput-boolean v2, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 319
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    const-string v3, "hash"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/codepush/react/SettingsManager;->savePendingUpdate(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v2, "Unable to read pending update metadata stored in SharedPreferences"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 300
    :cond_2
    :goto_0
    const-string v0, "Skipping initializeUpdateAfterRestart(), binary version is newer"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 295
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 296
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->clearUpdates()V

    :cond_3
    return-void
.end method

.method invalidateCurrentInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 330
    sput-object v0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    return-void
.end method

.method isDebugMode()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    return v0
.end method

.method isRunningBinaryVersion()Z
    .locals 1

    .line 338
    sget-boolean v0, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return v0
.end method

.method needToReportRollback()Z
    .locals 1

    .line 364
    sget-boolean v0, Lcom/microsoft/codepush/react/CodePush;->sNeedToReportRollback:Z

    return v0
.end method

.method public setDeploymentKey(Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mDeploymentKey:Ljava/lang/String;

    return-void
.end method

.method public setNeedToReportRollback(Z)V
    .locals 0

    .line 379
    sput-boolean p1, Lcom/microsoft/codepush/react/CodePush;->sNeedToReportRollback:Z

    return-void
.end method
