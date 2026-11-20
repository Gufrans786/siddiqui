.class Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$23;
.super Ljava/lang/Object;
.source "RNBackgroundGeolocationModule.java"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->geofenceExists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 803
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$23;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$23;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$23;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
