.class public Lim/zego/zpns/internal/ZPNsManagerInternal;
.super Lim/zego/zpns/ZPNsManager;
.source "ZPNsManagerInternal.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "ZPNsPushPrefs"

.field private static final PREF_KEY_PUSH_CONFIG:Ljava/lang/String; = "PushConfig"

.field private static final TAG:Ljava/lang/String; = "ZPNsManagerInternal"

.field public static mDebugMode:Z

.field public static mPushConfig:Lim/zego/zpns/util/ZPNsConfig;


# instance fields
.field public client:Lim/zego/zpns/internal/basic/PushClient;

.field public handler:Lim/zego/zpns/callback/ZPNsPushEventHandler;

.field public mContext:Landroid/content/Context;

.field private mCustomDeviceToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lim/zego/zpns/util/ZPNsConfig;

    invoke-direct {v0}, Lim/zego/zpns/util/ZPNsConfig;-><init>()V

    sput-object v0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mDebugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lim/zego/zpns/ZPNsManager;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mCustomDeviceToken:Ljava/lang/String;

    return-void
.end method

.method private getPushApiClient()Lim/zego/zpns/internal/basic/PushClient;
    .locals 4

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lim/zego/zpns/util/ZPNsConfig;->enableFCMPush:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "im.zego.zpns_android_plugin_fcm.FCMPushClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 241
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lim/zego/zpns/util/ZPNsConfig;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 242
    sget-object v1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/internal/basic/PushClient;

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lim/zego/zpns/util/ZPNsConfig;->enableHWPush:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lim/zego/zpns/internal/util/RomTypeUtil;->isEMUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "im.zego.zpns_android_plugin_huawei.HuaWeiPushClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 245
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lim/zego/zpns/util/ZPNsConfig;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 246
    sget-object v1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/internal/basic/PushClient;

    return-object v0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lim/zego/zpns/util/ZPNsConfig;->enableMiPush:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "im.zego.zpns_android_plugin_xiaomi.XiaoMiPushClient"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {}, Lim/zego/zpns/internal/util/RomTypeUtil;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 249
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lim/zego/zpns/util/ZPNsConfig;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 250
    sget-object v1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/internal/basic/PushClient;

    return-object v0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lim/zego/zpns/util/ZPNsConfig;->enableVivoPush:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lim/zego/zpns/internal/util/RomTypeUtil;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    const-string v0, "im.zego.zpns_android_plugin_vivo.VivoPushClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lim/zego/zpns/util/ZPNsConfig;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 254
    sget-object v1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/internal/basic/PushClient;

    return-object v0

    .line 255
    :cond_3
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lim/zego/zpns/util/ZPNsConfig;->enableOppoPush:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lim/zego/zpns/internal/util/RomTypeUtil;->isOppo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    const-string v0, "im.zego.zpns_android_plugin_oppo.OppoPushClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lim/zego/zpns/util/ZPNsConfig;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 258
    sget-object v1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/internal/basic/PushClient;

    return-object v0

    .line 259
    :cond_4
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lim/zego/zpns/util/ZPNsConfig;->enableMiPush:Z

    if-eqz v0, :cond_5

    .line 260
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 261
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lim/zego/zpns/util/ZPNsConfig;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 262
    sget-object v1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/internal/basic/PushClient;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;
    .locals 1

    .line 229
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lim/zego/zpns/internal/basic/PushClient;->getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initClient()V
    .locals 2

    .line 215
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushApiClient()Lim/zego/zpns/internal/basic/PushClient;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    if-nez v1, :cond_1

    const-string v1, "is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lim/zego/zpns/internal/basic/PushClient;->getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZPNsManagerInternal"

    invoke-static {v1, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initModule(Landroid/content/Context;)V
    .locals 8

    .line 286
    const-string v0, "im.zego.zim.internal.util.ZIMLogUtil"

    invoke-static {p1}, Lim/zego/zpns/util/ZPNsLogUtils;->setContext(Landroid/content/Context;)V

    .line 288
    const-string p1, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 292
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 293
    const-string v5, "getZIMLogPath"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 294
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 295
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 296
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object p1, v5

    .line 299
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-wide/32 v4, 0x500000

    .line 305
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 306
    const-string v6, "getZIMLogSize"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 308
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_1

    move-wide v4, v1

    .line 312
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-static {}, Lim/zego/zpns/util/ZPNsLogUtils;->getDefaultLogPath()Ljava/lang/String;

    move-result-object p1

    .line 320
    :cond_2
    invoke-static {p1, v4, v5}, Lim/zego/zpns/internal/ZPNsBridge;->initLogModule(Ljava/lang/String;J)V

    return-void
.end method

.method private onError(Lim/zego/zpns/enums/ZPNsConstants$PushSource;Lim/zego/zpns/enums/ZPNsErrorCode;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->handler:Lim/zego/zpns/callback/ZPNsPushEventHandler;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0, p1, p2}, Lim/zego/zpns/callback/ZPNsPushEventHandler;->onError(Lim/zego/zpns/enums/ZPNsConstants$PushSource;Lim/zego/zpns/enums/ZPNsErrorCode;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError  pushSource:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " errorCode :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lim/zego/zpns/enums/ZPNsErrorCode;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, " is null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZPNsManagerInternal"

    invoke-static {p2, p1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private persistPushConfig(Lim/zego/zpns/util/ZPNsConfig;)V
    .locals 4

    .line 130
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    const-string v1, "ZPNsPushPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 138
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 143
    :goto_0
    const-string v1, "PushConfig"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 146
    const-string v0, "ZPNsManagerInternal"

    const-string v1, "Failed to persist push config"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setPushConfig(Lim/zego/zpns/util/ZPNsConfig;)V
    .locals 1

    .line 116
    sput-object p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setPushConfig  mPushConfig:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    if-nez v0, :cond_0

    const-string v0, " is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lim/zego/zpns/util/ZPNsConfig;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZPNsManagerInternal"

    invoke-static {v0, p0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public assignMyContext(Landroid/content/Context;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->loadPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object p1

    sput-object p1, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    return-void
.end method

.method public getPushConfig()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    .line 121
    sget-object v0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "2.8.0"

    return-object v0
.end method

.method public getZPNsMessage(Landroid/app/Application;Landroid/content/Intent;)Lim/zego/zpns/entity/ZPNsMessage;
    .locals 3

    .line 200
    iput-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->initClient()V

    .line 202
    iget-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    const-string v0, "ZPNsManagerInternal"

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1, p2}, Lim/zego/zpns/internal/basic/PushClient;->getZPNsMessage(Landroid/content/Intent;)Lim/zego/zpns/entity/ZPNsMessage;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_0
    const-string p1, "getZPNsInfo client is null"

    invoke-static {v0, p1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get zpns intent bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is null"

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "get zpns message: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lim/zego/zpns/entity/ZPNsMessage;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadPushConfig()Lim/zego/zpns/util/ZPNsConfig;
    .locals 5

    .line 151
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    const-string v1, "ZPNs"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 155
    :cond_0
    const-string v3, "ZPNsPushPrefs"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    const-string v3, "PushConfig"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 161
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 166
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 167
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zpns/util/ZPNsConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 170
    :goto_1
    const-string v1, "ZPNsManagerInternal"

    const-string v3, "Failed to load push config"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 174
    :cond_2
    const-string v0, "decoded config is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public registerPush(Landroid/app/Application;)V
    .locals 3

    .line 66
    iput-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "registerPush"

    const-string v1, "ZPNsManagerInternal"

    invoke-static {v1, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->initClient()V

    .line 69
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->initModule(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mPushConfig:Lim/zego/zpns/util/ZPNsConfig;

    invoke-direct {p0, v0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->persistPushConfig(Lim/zego/zpns/util/ZPNsConfig;)V

    .line 72
    invoke-direct {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getPushApiClient()Lim/zego/zpns/internal/basic/PushClient;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "get client success. type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    invoke-virtual {v2}, Lim/zego/zpns/internal/basic/PushClient;->getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mCustomDeviceToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    invoke-virtual {v0, p1}, Lim/zego/zpns/internal/basic/PushClient;->register(Landroid/content/Context;)Lim/zego/zpns/enums/ZPNsErrorCode;

    move-result-object p1

    .line 78
    sget-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->SUCCESS:Lim/zego/zpns/enums/ZPNsErrorCode;

    if-eq p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    invoke-virtual {p1}, Lim/zego/zpns/internal/basic/PushClient;->getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object p1

    sget-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->REGISTER_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

    invoke-direct {p0, p1, v0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->onError(Lim/zego/zpns/enums/ZPNsConstants$PushSource;Lim/zego/zpns/enums/ZPNsErrorCode;)V

    .line 80
    const-string p1, "register failed"

    invoke-static {v1, p1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no need to request client, use custom device token: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mCustomDeviceToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lim/zego/zpns/entity/ZPNsRegisterMessage;->builder()Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;

    move-result-object v0

    sget-object v1, Lim/zego/zpns/enums/ZPNsErrorCode;->SUCCESS:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 85
    invoke-virtual {v0, v1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->errorCode(Lim/zego/zpns/enums/ZPNsErrorCode;)Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    .line 86
    invoke-virtual {v1}, Lim/zego/zpns/internal/basic/PushClient;->getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->pushSource(Lim/zego/zpns/enums/ZPNsConstants$PushSource;)Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mCustomDeviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->commandResult(Ljava/lang/String;)Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->msg(Ljava/lang/String;)Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;->create(Landroid/content/Context;)Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;

    move-result-object p1

    invoke-virtual {v0}, Lim/zego/zpns/entity/ZPNsRegisterMessage$Builder;->build()Lim/zego/zpns/entity/ZPNsRegisterMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;->commandDispatch(Lim/zego/zpns/entity/ZPNsRegisterMessage;)V

    return-void

    .line 91
    :cond_2
    sget-object p1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->ZEGO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    sget-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->REGISTER_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

    invoke-direct {p0, p1, v0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->onError(Lim/zego/zpns/enums/ZPNsConstants$PushSource;Lim/zego/zpns/enums/ZPNsErrorCode;)V

    .line 92
    const-string p1, "get client failed"

    invoke-static {v1, p1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationIconBadgeNumber(Landroid/content/Context;I)V
    .locals 3

    .line 182
    iput-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Lim/zego/zpns/internal/ZPNsManagerInternal;->initClient()V

    .line 184
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    const-string v1, "ZPNsManagerInternal"

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setApplicationIconBadgeNumber  badgeNumber:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pushSource :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    invoke-virtual {v2}, Lim/zego/zpns/internal/basic/PushClient;->getType()Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    invoke-virtual {v0, p1, p2}, Lim/zego/zpns/internal/basic/PushClient;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    return-void

    .line 188
    :cond_0
    const-string p1, "setApplicationIconBadgeNumber client is null"

    invoke-static {v1, p1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 1

    .line 194
    iput-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mCustomDeviceToken:Ljava/lang/String;

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setDeviceToken: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mCustomDeviceToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZPNsManagerInternal"

    invoke-static {v0, p1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventHandler(Lim/zego/zpns/callback/ZPNsPushEventHandler;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->handler:Lim/zego/zpns/callback/ZPNsPushEventHandler;

    return-void
.end method

.method public unregisterPush()V
    .locals 2

    .line 100
    iget-object v0, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->client:Lim/zego/zpns/internal/basic/PushClient;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lim/zego/zpns/internal/ZPNsManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lim/zego/zpns/internal/basic/PushClient;->unRegister(Landroid/content/Context;)Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 103
    :cond_0
    const-string v0, "ZPNsManagerInternal"

    const-string/jumbo v1, "unregisterPush"

    invoke-static {v0, v1}, Lim/zego/zpns/internal/ZPNsBridge;->zpnsLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
