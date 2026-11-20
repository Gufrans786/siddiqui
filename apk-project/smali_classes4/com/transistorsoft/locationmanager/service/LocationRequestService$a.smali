.class Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/LocationRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:I

.field final synthetic c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    .line 3
    iput p3, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/LocationResult;->hasResult(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->a(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/LocationAvailability;->hasLocationAvailability(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->b(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->c(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;)V

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->c:Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;->b:I

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void
.end method
