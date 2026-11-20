.class public final synthetic Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/location/TSLocation;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;->f$1:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda0;->f$1:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->$r8$lambda$uwbwjsh85hhQzwEYgtn279JqoX0(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    return-void
.end method
