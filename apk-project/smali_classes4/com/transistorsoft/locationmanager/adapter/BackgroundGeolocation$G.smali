.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$G;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/location/TSLocation;->resetLocationTemplate()V

    return-void
.end method
