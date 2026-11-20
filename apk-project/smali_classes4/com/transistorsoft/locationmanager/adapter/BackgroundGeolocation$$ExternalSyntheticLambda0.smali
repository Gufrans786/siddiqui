.class public final synthetic Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;->f$1:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;->f$1:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->$r8$lambda$UUjyzcsqgXAFDVlQOv0EbItp9IM(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method
