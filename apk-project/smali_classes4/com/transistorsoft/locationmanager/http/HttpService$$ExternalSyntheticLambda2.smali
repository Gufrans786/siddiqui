.class public final synthetic Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/http/HttpService;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/adapter/TSConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;->f$0:Lcom/transistorsoft/locationmanager/http/HttpService;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;->f$1:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;->f$0:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;->f$1:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->$r8$lambda$PIHYthMz0tFmwMuWjVcY699BfRo(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/TSConfig;Z)V

    return-void
.end method
