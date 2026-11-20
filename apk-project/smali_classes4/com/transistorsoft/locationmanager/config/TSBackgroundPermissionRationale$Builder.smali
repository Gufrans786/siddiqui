.class public Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;
    .locals 2

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->a(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->b(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->c(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->d(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeAction(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveAction(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
