.class public final Lgeidea/utils/GeideaUtils;
.super Ljava/lang/Object;
.source "GeideaUtils.java"


# static fields
.field public static final FETCH_REGISTRATION:Ljava/lang/String; = "FETCH_REGISTRATION"

.field public static final FETCH_REGISTRATION_DETAILS_CODE:I = 0x37b

.field public static final FETCH_REGISTRATION_FAIL:Ljava/lang/String; = "FETCH_REGISTRATION_FAIL"

.field public static final FETCH_REGISTRATION_SUCCESS:Ljava/lang/String; = "FETCH_REGISTRATION_SUCCESS"

.field public static final FORMAT_REQUEST_CODE:I = 0xc8

.field public static final GEIDEA_FORMAT:Ljava/lang/String; = "GEIDEA_FORMAT"

.field public static final GEIDEA_FORMAT_FAIL:Ljava/lang/String; = "GEIDEA_FORMAT_FAIL"

.field public static final GEIDEA_FORMAT_SUCCESS:Ljava/lang/String; = "GEIDEA_FORMAT_SUCCESS"

.field public static final GEIDEA_PARSER_ERROR:I = 0x0

.field public static final GEIDEA_PURCHASE:Ljava/lang/String; = "GEIDEA_PURCHASE"

.field public static final GEIDEA_PURCHASE_ABORTED:Ljava/lang/String; = "GEIDEA_PURCHASE_ABORTED"

.field public static final GEIDEA_PURCHASE_ABORTED_CODE:I = 0x3

.field public static final GEIDEA_PURCHASE_DECLINE:Ljava/lang/String; = "GEIDEA_PURCHASE_DECLINE"

.field public static final GEIDEA_PURCHASE_DECLINE_CODE:I = 0x2

.field public static final GEIDEA_PURCHASE_DECLINE_MESSAGE:Ljava/lang/String; = "SoftPos application has process the transaction online to SAMA host and it has been Declined / Rejected by bank."

.field public static final GEIDEA_PURCHASE_FAIL:Ljava/lang/String; = "GEIDEA_PURCHASE_FAIL"

.field public static final GEIDEA_PURCHASE_SUCCESS:Ljava/lang/String; = "GEIDEA_PURCHASE_SUCCESS"

.field public static final GEIDEA_PURCHASE_SUCCESS_CODE:I = 0x1

.field public static final GEIDEA_PURCHASE_SUCCESS_MESSAGE:Ljava/lang/String; = "SoftPos application has sent the transaction online to SAMA host and it has been Approved by bank."

.field public static final GEIDEA_REGISTRATION:Ljava/lang/String; = "GEIDEA_REGISTRATION"

.field public static final GEIDEA_REGISTRATION_FAIL:Ljava/lang/String; = "GEIDEA_REGISTRATION_FAIL"

.field public static final GEIDEA_REGISTRATION_SUCCESS:Ljava/lang/String; = "GEIDEA_REGISTRATION_SUCCESS"

.field public static final PAYMENT_REQUEST_CODE:I = 0x64

.field public static final REGISTRATION_REQUEST_CODE:I = 0x309

.field public static final SOFTPOS_PACKAGE_NAME:Ljava/lang/String; = "geidea.net.softpos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 61
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 62
    invoke-interface {p0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
