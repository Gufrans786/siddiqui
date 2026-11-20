.class public Lcom/microsoft/codepush/react/CodePushNativeModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "CodePushNativeModule.java"


# instance fields
.field private _allowed:Z

.field private _restartInProgress:Z

.field private _restartQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBinaryContentsHash:Ljava/lang/String;

.field private mClientUniqueId:Ljava/lang/String;

.field private mCodePush:Lcom/microsoft/codepush/react/CodePush;

.field private mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

.field private mMinimumBackgroundDuration:I

.field private mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

.field private mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

.field private mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCodePush(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLifecycleEventListener(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/LifecycleEventListener;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinimumBackgroundDuration(Lcom/microsoft/codepush/react/CodePushNativeModule;)I
    .locals 0

    iget p0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mMinimumBackgroundDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsManager(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/SettingsManager;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelemetryManager(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushTelemetryManager;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateManager(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushUpdateManager;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLifecycleEventListener(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMinimumBackgroundDuration(Lcom/microsoft/codepush/react/CodePushNativeModule;I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mMinimumBackgroundDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartAppInternal(Lcom/microsoft/codepush/react/CodePushNativeModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->restartAppInternal(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/microsoft/codepush/react/CodePush;Lcom/microsoft/codepush/react/CodePushUpdateManager;Lcom/microsoft/codepush/react/CodePushTelemetryManager;Lcom/microsoft/codepush/react/SettingsManager;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mBinaryContentsHash:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mClientUniqueId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mMinimumBackgroundDuration:I

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_allowed:Z

    .line 61
    iput-boolean v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartInProgress:Z

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    .line 67
    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    .line 68
    iput-object p5, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    .line 69
    iput-object p4, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    .line 70
    iput-object p3, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    .line 73
    invoke-virtual {p2}, Lcom/microsoft/codepush/react/CodePush;->isDebugMode()Z

    move-result p3

    invoke-static {p1, p3}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->getHashForBinaryContents(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mBinaryContentsHash:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Lcom/microsoft/codepush/react/CodePush;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "CodePush"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 76
    const-string p2, "clientUniqueId"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mClientUniqueId:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mClientUniqueId:Ljava/lang/String;

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mClientUniqueId:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private clearLifecycleEventListener()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mLifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    :cond_0
    return-void
.end method

.method private isLiveReloadEnabled(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 285
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 287
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 288
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isReloadOnJSChangeEnabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private loadBundle()V
    .locals 4

    const-string v0, "Exception setJSBundle: "

    .line 166
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->clearLifecycleEventListener()V

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->resolveReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v1}, Lcom/facebook/react/ReactHost;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-direct {p0, v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->isLiveReloadEnabled(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Z

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v2, v1}, Lcom/microsoft/codepush/react/CodePush;->clearDebugCacheIfNeeded(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    :catch_0
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/microsoft/codepush/react/CodePush;->clearDebugCacheIfNeeded(Z)V

    .line 187
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->resolveReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v1

    if-nez v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->loadBundleLegacy()V

    goto :goto_3

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v2}, Lcom/microsoft/codepush/react/CodePush;->getAssetsBundleFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFileInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 196
    :try_start_2
    instance-of v3, v1, Lcom/facebook/react/runtime/ReactHostImpl;

    if-eqz v3, :cond_2

    .line 197
    move-object v3, v1

    check-cast v3, Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {p0, v3}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactHostDelegate(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/runtime/ReactHostDelegate;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 200
    invoke-direct {p0, v3, v2}, Lcom/microsoft/codepush/react/CodePushNativeModule;->setJSBundle(Lcom/facebook/react/runtime/ReactHostDelegate;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 204
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 209
    :cond_2
    :goto_2
    :try_start_4
    const-string v0, "CodePush triggers reload"

    invoke-interface {v1, v0}, Lcom/facebook/react/ReactHost;->reload(Ljava/lang/String;)Lcom/facebook/react/interfaces/TaskInterface;

    .line 210
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->initializeUpdateAfterRestart()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 214
    :catch_2
    :try_start_5
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->loadBundleLegacy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load the bundle, falling back to restarting the Activity (if it exists). "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->loadBundleLegacy()V

    :goto_3
    return-void
.end method

.method private loadBundleLegacy()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePush;->invalidateCurrentInstance()V

    .line 113
    new-instance v1, Lcom/microsoft/codepush/react/CodePushNativeModule$1;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/codepush/react/CodePushNativeModule$1;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetReactRootViews(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAttachedRootViews"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/ReactRootView;

    .line 309
    invoke-virtual {v3}, Lcom/facebook/react/ReactRootView;->removeAllViews()V

    const/4 v4, -0x1

    .line 310
    invoke-virtual {v3, v4}, Lcom/facebook/react/ReactRootView;->setId(I)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private resolveInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 335
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    .line 336
    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    return-object v0
.end method

.method private resolveReactHost()Lcom/facebook/react/ReactHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 342
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    .line 353
    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method private restartAppInternal(Z)V
    .locals 2

    .line 357
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartInProgress:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "Restart request queued until the current restart is completed"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_allowed:Z

    if-nez v0, :cond_1

    .line 362
    const-string v0, "Restart request queued until restarts are re-allowed"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartInProgress:Z

    if-eqz p1, :cond_4

    .line 368
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/codepush/react/SettingsManager;->isPendingUpdate(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 374
    iput-boolean p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartInProgress:Z

    .line 375
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 378
    invoke-direct {p0, v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->restartAppInternal(Z)V

    :cond_3
    return-void

    .line 369
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->loadBundle()V

    .line 370
    const-string p1, "Restarting app"

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setJSBundle(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assets://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p2

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p2}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p2

    .line 132
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mBundleLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 136
    :catch_0
    const-string p1, "Unable to set JSBundle of ReactInstanceManager - CodePush may not support this version of React Native"

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string p2, "Could not setJSBundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setJSBundle(Lcom/facebook/react/runtime/ReactHostDelegate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assets://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p2

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p2}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p2

    .line 152
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "jsBundleLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 160
    :catch_0
    const-string p1, "Unable to set JSBundle of ReactHostDelegate - CodePush may not support this version of React Native"

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 161
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string p2, "Could not setJSBundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public allow(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 384
    const-string v0, "Re-allowing restarts"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_allowed:Z

    .line 387
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    const-string v0, "Executing pending restart"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 390
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    invoke-direct {p0, v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->restartAppInternal(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 394
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public clearPendingRestart(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_restartQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 401
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public clearUpdates()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 835
    const-string v0, "Clearing updates."

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->clearUpdates()V

    return-void
.end method

.method public disallow(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 407
    const-string v0, "Disallowing restarts"

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->_allowed:Z

    const/4 v0, 0x0

    .line 409
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public downloadAndReplaceCurrentBundle(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 814
    :try_start_0
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->isUsingTestConfiguration()Z

    move-result v0
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 816
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePush;->getAssetsBundleFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->downloadAndReplaceCurrentBundle(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    .line 818
    :try_start_2
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v1, "Unable to replace current bundle"

    invoke-direct {v0, v1, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-void

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 822
    :goto_0
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public downloadUpdate(Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 426
    new-instance v0, Lcom/microsoft/codepush/react/CodePushNativeModule$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePushNativeModule$3;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Promise;)V

    .line 493
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getConfiguration(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 499
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 500
    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v2}, Lcom/microsoft/codepush/react/CodePush;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "clientUniqueId"

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mClientUniqueId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v1, "deploymentKey"

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v2}, Lcom/microsoft/codepush/react/CodePush;->getDeploymentKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "serverUrl"

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v2}, Lcom/microsoft/codepush/react/CodePush;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mBinaryContentsHash:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 507
    const-string v2, "packageHash"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 512
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 513
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->IMMEDIATE:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushInstallModeImmediate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->ON_NEXT_RESTART:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushInstallModeOnNextRestart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->ON_NEXT_RESUME:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushInstallModeOnNextResume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->ON_NEXT_SUSPEND:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushInstallModeOnNextSuspend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/microsoft/codepush/react/CodePushUpdateState;->RUNNING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushUpdateState;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushUpdateStateRunning"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/microsoft/codepush/react/CodePushUpdateState;->PENDING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushUpdateState;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushUpdateStatePending"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/microsoft/codepush/react/CodePushUpdateState;->LATEST:Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushUpdateState;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codePushUpdateStateLatest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLatestRollbackInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->getLatestRollbackInfo()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->convertJsonObjectToWritable(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 747
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 750
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 751
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "CodePush"

    return-object v0
.end method

.method public getNewStatusReport(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 587
    new-instance v0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$5;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/Promise;)V

    .line 639
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getReactHostDelegate(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/runtime/ReactHostDelegate;
    .locals 2

    .line 851
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 852
    const-string v1, "reactHostDelegate"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 853
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 856
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/runtime/ReactHostDelegate;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 858
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUpdateMetadata(ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 519
    new-instance v0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$4;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/Promise;I)V

    .line 582
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public installUpdate(Lcom/facebook/react/bridge/ReadableMap;IILcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 644
    new-instance v0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/codepush/react/CodePushNativeModule$6;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/ReadableMap;IILcom/facebook/react/bridge/Promise;)V

    .line 727
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public isFailedUpdate(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/codepush/react/SettingsManager;->isFailedHash(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 735
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 736
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isFirstRun(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mCodePush:Lcom/microsoft/codepush/react/CodePush;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->didUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    .line 772
    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 773
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 775
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 776
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyApplicationReady(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removePendingUpdate()V

    .line 784
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 786
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 787
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public recordStatusReported(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;->recordStatusReported(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 796
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public restartApp(ZLcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 416
    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->restartAppInternal(Z)V

    const/4 p1, 0x0

    .line 417
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 419
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 420
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public saveStatusReportForRetry(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;->saveStatusReportForRetry(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 805
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setLatestRollbackInfo(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/codepush/react/SettingsManager;->setLatestRollbackInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 759
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 761
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 762
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method
