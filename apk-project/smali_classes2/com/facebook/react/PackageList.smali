.class public Lcom/facebook/react/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"


# instance fields
.field private application:Landroid/app/Application;

.field private mConfig:Lcom/facebook/react/shell/MainPackageConfig;

.field private reactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/PackageList;-><init>(Landroid/app/Application;Lcom/facebook/react/shell/MainPackageConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 109
    iput-object p1, p0, Lcom/facebook/react/PackageList;->application:Landroid/app/Application;

    .line 110
    iput-object p2, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;Lcom/facebook/react/shell/MainPackageConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 104
    iput-object p2, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-void
.end method

.method private getApplication()Landroid/app/Application;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/PackageList;->application:Landroid/app/Application;

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPackages()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x26

    new-array v1, v1, [Lcom/facebook/react/ReactPackage;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage;

    iget-object v3, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    invoke-direct {v2, v3}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/dylanvann/fastimage/FastImageViewPackage;

    invoke-direct {v2}, Lcom/dylanvann/fastimage/FastImageViewPackage;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/notifee/NotifeePackage;

    invoke-direct {v2}, Lio/invertase/notifee/NotifeePackage;-><init>()V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/reactnativecommunity/clipboard/ClipboardPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/clipboard/ClipboardPackage;-><init>()V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/reactcommunity/rndatetimepicker/RNDateTimePickerPackage;

    invoke-direct {v2}, Lcom/reactcommunity/rndatetimepicker/RNDateTimePickerPackage;-><init>()V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lorg/reactnative/maskedview/RNCMaskedViewPackage;

    invoke-direct {v2}, Lorg/reactnative/maskedview/RNCMaskedViewPackage;-><init>()V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lcom/reactnativecommunity/netinfo/NetInfoPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/netinfo/NetInfoPackage;-><init>()V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsPackage;

    invoke-direct {v2}, Lio/invertase/firebase/analytics/ReactNativeFirebaseAnalyticsPackage;-><init>()V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/firebase/app/ReactNativeFirebaseAppPackage;

    invoke-direct {v2}, Lio/invertase/firebase/app/ReactNativeFirebaseAppPackage;-><init>()V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsPackage;

    invoke-direct {v2}, Lio/invertase/firebase/crashlytics/ReactNativeFirebaseCrashlyticsPackage;-><init>()V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestorePackage;

    invoke-direct {v2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestorePackage;-><init>()V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingPackage;

    invoke-direct {v2}, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingPackage;-><init>()V

    const/16 v4, 0xb

    aput-object v2, v1, v4

    new-instance v2, Lio/invertase/firebase/config/ReactNativeFirebaseConfigPackage;

    invoke-direct {v2}, Lio/invertase/firebase/config/ReactNativeFirebaseConfigPackage;-><init>()V

    const/16 v4, 0xc

    aput-object v2, v1, v4

    .line 145
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lsa/lg/android/locate/R$string;->CodePushDeploymentKey:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/microsoft/codepush/react/CodePush;->getInstance(Ljava/lang/String;Landroid/content/Context;Z)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/rnmapbox/rnmbx/RNMBXPackage;

    invoke-direct {v2}, Lcom/rnmapbox/rnmbx/RNMBXPackage;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/zegocloud/zimkitrn/ZimkitRnPackage;

    invoke-direct {v2}, Lcom/zegocloud/zimkitrn/ZimkitRnPackage;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchPackage;

    invoke-direct {v2}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchPackage;-><init>()V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocation;

    invoke-direct {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocation;-><init>()V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/lugg/RNCConfig/RNCConfigPackage;

    invoke-direct {v2}, Lcom/lugg/RNCConfig/RNCConfigPackage;-><init>()V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v2}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/gesturehandler/RNGestureHandlerPackage;

    invoke-direct {v2}, Lcom/swmansion/gesturehandler/RNGestureHandlerPackage;-><init>()V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnative/ivpusic/imagepicker/PickerPackage;

    invoke-direct {v2}, Lcom/reactnative/ivpusic/imagepicker/PickerPackage;-><init>()V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativekeyboardcontroller/KeyboardControllerPackage;

    invoke-direct {v2}, Lcom/reactnativekeyboardcontroller/KeyboardControllerPackage;-><init>()V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lcom/BV/LinearGradient/LinearGradientPackage;

    invoke-direct {v2}, Lcom/BV/LinearGradient/LinearGradientPackage;-><init>()V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lcom/mrousavy/mmkv/MmkvPackage;

    invoke-direct {v2}, Lcom/mrousavy/mmkv/MmkvPackage;-><init>()V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativepagerview/PagerViewPackage;

    invoke-direct {v2}, Lcom/reactnativepagerview/PagerViewPackage;-><init>()V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/reanimated/ReanimatedPackage;

    invoke-direct {v2}, Lcom/swmansion/reanimated/ReanimatedPackage;-><init>()V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;

    invoke-direct {v2}, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;-><init>()V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/rnscreens/RNScreensPackage;

    invoke-direct {v2}, Lcom/swmansion/rnscreens/RNScreensPackage;-><init>()V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Lcom/johnsonsu/rnsoundplayer/RNSoundPlayerPackage;

    invoke-direct {v2}, Lcom/johnsonsu/rnsoundplayer/RNSoundPlayerPackage;-><init>()V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-instance v2, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;

    invoke-direct {v2}, Lorg/devio/rn/splashscreen/SplashScreenReactPackage;-><init>()V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-instance v2, Lcom/horcrux/svg/SvgPackage;

    invoke-direct {v2}, Lcom/horcrux/svg/SvgPackage;-><init>()V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-instance v2, Lcom/oblador/vectoricons/VectorIconsPackage;

    invoke-direct {v2}, Lcom/oblador/vectoricons/VectorIconsPackage;-><init>()V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebViewPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/webview/RNCWebViewPackage;-><init>()V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/worklets/WorkletsPackage;

    invoke-direct {v2}, Lcom/swmansion/worklets/WorkletsPackage;-><init>()V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    new-instance v2, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkPackage;

    invoke-direct {v2}, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkPackage;-><init>()V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-instance v2, Lim/zego/RNZimReactnativeSdkPackage;

    invoke-direct {v2}, Lim/zego/RNZimReactnativeSdkPackage;-><init>()V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    new-instance v2, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsPackage;

    invoke-direct {v2}, Lim/zego/zpns_reactnative_sdk/RCTZegoZPNsPackage;-><init>()V

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
