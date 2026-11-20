.class public Lcom/intentfilter/androidpermissions/PermissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PermissionsActivity.java"


# static fields
.field static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.intentfilter.androidpermissions.PERMISSIONS"

.field public static final EXTRA_PERMISSIONS_DENIED:Ljava/lang/String; = "com.intentfilter.androidpermissions.PERMISSIONS_DENIED"

.field public static final EXTRA_PERMISSIONS_GRANTED:Ljava/lang/String; = "com.intentfilter.androidpermissions.PERMISSIONS_GRANTED"

.field static final PERMISSIONS_REQUEST_CODE:I = 0x64

.field static final logger:Lcom/intentfilter/androidpermissions/helpers/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/intentfilter/androidpermissions/PermissionsActivity;

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object v0

    sput-object v0, Lcom/intentfilter/androidpermissions/PermissionsActivity;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private sendPermissionResponse([Ljava/lang/String;[I)V
    .locals 6

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    new-instance v1, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {v1}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;-><init>()V

    const/4 v2, 0x0

    .line 62
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 63
    aget v3, p2, v2

    if-nez v3, :cond_0

    .line 64
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_0
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    .line 67
    new-instance v4, Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    aget-object v5, p1, v2

    invoke-direct {v4, v5, v3}, Lcom/intentfilter/androidpermissions/models/DeniedPermission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Lcom/intentfilter/androidpermissions/services/BroadcastService;

    invoke-direct {p1, p0}, Lcom/intentfilter/androidpermissions/services/BroadcastService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Lcom/intentfilter/androidpermissions/services/BroadcastService;->broadcastPermissionRequestResult(Ljava/util/Set;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    .line 34
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 41
    array-length p1, p3

    if-eqz p1, :cond_1

    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/intentfilter/androidpermissions/PermissionsActivity;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestPermissionsResult, sending broadcast for permissions "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->sendPermissionResponse([Ljava/lang/String;[I)V

    .line 55
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->finish()V

    return-void

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lcom/intentfilter/androidpermissions/PermissionsActivity;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const-string p2, "Permission request interrupted. Aborting."

    invoke-virtual {p1, p2}, Lcom/intentfilter/androidpermissions/helpers/Logger;->e(Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/intentfilter/androidpermissions/PermissionManager;->removePendingPermissionRequests(Ljava/util/List;)V

    .line 48
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->finish()V

    return-void
.end method
