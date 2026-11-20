.class public final Lsa/lg/android/locate/MainApplication$reactNativeHost$1;
.super Lcom/facebook/react/defaults/DefaultReactNativeHost;
.source "MainApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/lg/android/locate/MainApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0014R\u0014\u0010\t\u001a\u00020\u0008X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0008X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "sa/lg/android/locate/MainApplication$reactNativeHost$1",
        "Lcom/facebook/react/defaults/DefaultReactNativeHost;",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getJSMainModuleName",
        "",
        "getUseDeveloperSupport",
        "",
        "isNewArchEnabled",
        "()Z",
        "isHermesEnabled",
        "getJSBundleFile",
        "LGo-v4.1.0(68)-(231026_2115)_productionRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isHermesEnabled:Z

.field private final isNewArchEnabled:Z


# direct methods
.method constructor <init>(Lsa/lg/android/locate/MainApplication;)V
    .locals 0

    .line 23
    check-cast p1, Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/facebook/react/defaults/DefaultReactNativeHost;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lsa/lg/android/locate/MainApplication$reactNativeHost$1;->isNewArchEnabled:Z

    .line 39
    iput-boolean p1, p0, Lsa/lg/android/locate/MainApplication$reactNativeHost$1;->isHermesEnabled:Z

    return-void
.end method


# virtual methods
.method protected getJSBundleFile()Ljava/lang/String;
    .locals 2

    .line 45
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getJSBundleFile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/facebook/react/PackageList;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactNativeHost;

    invoke-direct {v0, v1}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 28
    new-instance v1, Lsa/lg/android/locate/MaedaPackage;

    invoke-direct {v1}, Lsa/lg/android/locate/MaedaPackage;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lgeidea/utils/GeideaPackage;

    invoke-direct {v1}, Lgeidea/utils/GeideaPackage;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lnafath/NafathPackage;

    invoke-direct {v1}, Lnafath/NafathPackage;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/lugg/RNCConfig/RNCConfigPackage;

    invoke-direct {v1}, Lcom/lugg/RNCConfig/RNCConfigPackage;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isHermesEnabled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lsa/lg/android/locate/MainApplication$reactNativeHost$1;->isHermesEnabled:Z

    return v0
.end method

.method protected isNewArchEnabled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lsa/lg/android/locate/MainApplication$reactNativeHost$1;->isNewArchEnabled:Z

    return v0
.end method
