.class public final synthetic Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/http/HttpService;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/http/HttpResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;->f$0:Lcom/transistorsoft/locationmanager/http/HttpService;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;->f$1:Lcom/transistorsoft/locationmanager/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;->f$0:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;->f$1:Lcom/transistorsoft/locationmanager/http/HttpResponse;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->$r8$lambda$ROOp8Erh-6JBEBi5kyxPFvcYe3I(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    return-void
.end method
