.class public Lim/zego/connection/NetworkStateChangeReceiver48048;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateChangeReceiver48048.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;,
        Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;
    }
.end annotation


# static fields
.field private static final TYPE_CELLULAR:I = 0x2

.field private static final TYPE_ETHERNET:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_OTHERS:I = 0x20

.field private static final TYPE_WIFI:I = 0x1


# instance fields
.field private mCellSignalDbm:I

.field private mCellSignalLevel:I

.field private mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetId:J

.field private mDefaultNetworkInfo:Landroid/net/NetworkInfo;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntent:Landroid/content/Intent;

.field private mNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThis:J

.field private mWifiNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellSignalDbm:I

    .line 36
    iput v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellSignalLevel:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mDefaultNetId:J

    return-void
.end method

.method static GetNetType(Landroid/net/NetworkInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkInfo"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x20

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method static synthetic access$000(Lim/zego/connection/NetworkStateChangeReceiver48048;)Ljava/util/HashMap;
    .locals 0

    .line 29
    iget-object p0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    return-object p0
.end method

.method private calculateCdmaSignalLevel(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dbm"
        }
    .end annotation

    const/16 v0, -0x59

    if-lt p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/16 v0, -0x61

    if-lt p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/16 v0, -0x69

    if-lt p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/16 v0, -0x71

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private calculateGsmSignalLevel(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asu"
        }
    .end annotation

    const/4 v0, 0x2

    if-le p1, v0, :cond_4

    const/16 v1, 0x63

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-lt p1, v1, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    const/16 v1, 0x8

    if-lt p1, v1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 v1, 0x5

    if-lt p1, v1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCachedCellSignalInfo()V
    .locals 2

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0, v0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->getCellSignalDetail(Landroid/telephony/SignalStrength;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 308
    aget v1, v0, v1

    iput v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellSignalDbm:I

    const/4 v1, 0x1

    .line 309
    aget v0, v0, v1

    iput v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellSignalLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getCellSignalDetail(Landroid/telephony/SignalStrength;)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signalStrength"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 323
    filled-new-array {v0, v0}, [I

    move-result-object p1

    return-object p1

    .line 328
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p1

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrength;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 332
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p1, v0

    move v0, v1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_1

    .line 335
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ltz v1, :cond_3

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, -0x71

    .line 339
    :try_start_3
    invoke-direct {p0, v1}, Lim/zego/connection/NetworkStateChangeReceiver48048;->calculateGsmSignalLevel(I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move v1, v0

    move v0, v2

    goto :goto_2

    :catch_0
    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_0

    .line 342
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 343
    :try_start_5
    invoke-direct {p0, v1}, Lim/zego/connection/NetworkStateChangeReceiver48048;->calculateCdmaSignalLevel(I)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v3, v1

    move v1, v0

    move v0, v3

    .line 347
    :goto_0
    :try_start_6
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 353
    :goto_1
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1

    :catchall_1
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_2

    :catch_1
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_3

    :catchall_2
    move v1, v0

    :catchall_3
    :goto_2
    filled-new-array {v0, v1}, [I

    move-result-object p1

    return-object p1

    :catch_2
    move v1, v0

    :catch_3
    :goto_3
    filled-new-array {v0, v1}, [I

    move-result-object p1

    return-object p1
.end method

.method private getNetTypeDetail(Landroid/net/NetworkInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ni"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    .line 174
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static native onNetTypeChanged(JIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pThis",
            "nt",
            "active_vpn",
            "ni"
        }
    .end annotation
.end method

.method static native onNetworkInfoChanged(J[Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pThis",
            "networkInfos"
        }
    .end annotation
.end method

.method private registerPhoneStateListener()V
    .locals 0

    return-void
.end method

.method static native setNativeLog(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation
.end method

.method private unregisterPhoneStateListener()V
    .locals 0

    return-void
.end method


# virtual methods
.method CallbackOnNetworkInfoChanged()V
    .locals 4

    .line 393
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->UpdateDefaultNetwork()Z

    .line 394
    iget-wide v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mThis:J

    iget-object v2, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;

    invoke-static {v0, v1, v2}, Lim/zego/connection/NetworkStateChangeReceiver48048;->onNetworkInfoChanged(J[Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;)V

    return-void
.end method

.method public declared-synchronized CheckNetworkInfoNotify()V
    .locals 11

    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 557
    :cond_0
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->UpdateDefaultNetwork()Z

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 562
    :try_start_1
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 563
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 564
    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    :try_start_2
    aget-object v6, v0, v2

    .line 565
    iget-object v7, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 566
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 567
    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v8, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 569
    new-instance v8, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;

    invoke-direct {v8}, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;-><init>()V

    .line 570
    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v9

    iput-wide v9, v8, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;->netId:J

    .line 571
    invoke-static {v7}, Lim/zego/connection/NetworkStateChangeReceiver48048;->GetNetType(Landroid/net/NetworkInfo;)I

    move-result v6

    iput v6, v8, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;->type:I

    .line 572
    iget-object v6, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    iget-wide v9, v8, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkInfo;->netId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 579
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 580
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 581
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 582
    iget-object v2, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move v2, v4

    goto :goto_2

    :catch_1
    move-exception v0

    .line 587
    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckNetworkInfoNotify failed. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->setNativeLog(Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 604
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->CallbackOnNetworkInfoChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    :cond_5
    monitor-exit p0

    return-void

    .line 553
    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized CheckNotify()V
    .locals 5

    const-string v0, "getActiveNetworkInfo failed. "

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 122
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 131
    :try_start_2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 134
    iget-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v4, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x4

    .line 138
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 145
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->setNativeLog(Ljava/lang/String;)V

    :cond_1
    move v0, v2

    .line 150
    :goto_0
    const-string v1, ""

    if-nez v3, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-direct {p0, v3}, Lim/zego/connection/NetworkStateChangeReceiver48048;->getNetTypeDetail(Landroid/net/NetworkInfo;)I

    move-result v2

    .line 159
    :goto_1
    iget-wide v3, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mThis:J

    invoke-static {v3, v4, v2, v0, v1}, Lim/zego/connection/NetworkStateChangeReceiver48048;->onNetTypeChanged(JIILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method UpdateDefaultNetwork()Z
    .locals 6

    .line 514
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 520
    :cond_0
    :try_start_0
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getActiveNetwork failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->setNativeLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 529
    :goto_1
    iget-wide v4, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mDefaultNetId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 530
    iput-wide v2, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mDefaultNetId:J

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public cancelCellularNetwork()I
    .locals 3

    const-string v0, "cancelCellularNetwork failed. "

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    if-eqz v1, :cond_1

    .line 438
    iget-object v2, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 440
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 442
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->setNativeLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    .line 447
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public checkCurrentNetType()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->CheckNotify()V

    return-void
.end method

.method public getCellSignalDbm()I
    .locals 1

    .line 246
    iget v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellSignalDbm:I

    return v0
.end method

.method public getCellSignalLevel()I
    .locals 1

    .line 250
    iget v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellSignalLevel:I

    return v0
.end method

.method public getWifiSignalDbm()I
    .locals 2

    .line 221
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiSignalLevel()I
    .locals 2

    .line 234
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iput-object p1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 64
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 66
    :cond_0
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 68
    iget-object p1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->CheckNotify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->CheckNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public requestCellularNetwork()I
    .locals 8

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 401
    monitor-exit p0

    return v1

    .line 403
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v3, "zego_net_monitor_thread"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandlerThread:Landroid/os/HandlerThread;

    .line 404
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 405
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandler:Landroid/os/Handler;

    .line 407
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mWifiNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 409
    :try_start_1
    new-instance v0, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    invoke-direct {v0, p0}, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;-><init>(Lim/zego/connection/NetworkStateChangeReceiver48048;)V

    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mWifiNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    .line 410
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 411
    iget-object v5, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mWifiNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    iget-object v7, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v6, v7}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    :try_start_2
    iput-object v4, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    .line 414
    monitor-exit p0

    return v1

    .line 418
    :cond_1
    :goto_0
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_2

    .line 420
    :try_start_3
    new-instance v0, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    invoke-direct {v0, p0}, Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;-><init>(Lim/zego/connection/NetworkStateChangeReceiver48048;)V

    iput-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    .line 421
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 422
    iget-object v3, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    iget-object v6, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v5, v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 424
    :catchall_1
    :try_start_4
    iput-object v4, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mCellularNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    .line 425
    monitor-exit p0

    return v1

    .line 429
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->CheckNetworkInfoNotify()V

    .line 430
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_3
    :goto_2
    return v2
.end method

.method public setThis(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pThis"
        }
    .end annotation

    .line 58
    iput-wide p1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mThis:J

    return-void
.end method

.method public declared-synchronized uninit()I
    .locals 3

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 90
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mWifiNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 96
    iget-object v2, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 98
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :catch_0
    :cond_1
    :try_start_3
    iput-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mWifiNetworkCallback:Lim/zego/connection/NetworkStateChangeReceiver48048$ZNetworkCallback;

    .line 105
    :cond_2
    invoke-virtual {p0}, Lim/zego/connection/NetworkStateChangeReceiver48048;->cancelCellularNetwork()I

    .line 106
    iput-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandler:Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 109
    iput-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    :cond_3
    iput-object v1, p0, Lim/zego/connection/NetworkStateChangeReceiver48048;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
