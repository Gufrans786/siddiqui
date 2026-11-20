.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    return-void
.end method
