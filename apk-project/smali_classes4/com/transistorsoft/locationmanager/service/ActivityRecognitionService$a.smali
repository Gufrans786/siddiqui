.class Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:I

.field final synthetic c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->a:Landroid/content/Intent;

    .line 3
    iput p3, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/location/ActivityTransitionResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/ActivityTransitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityTransitionResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;Lcom/google/android/gms/location/ActivityTransitionResult;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->a:Landroid/content/Intent;

    invoke-static {v2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->a(Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;Lcom/google/android/gms/location/ActivityRecognitionResult;)I

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 11
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->c:Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService$a;->b:I

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void
.end method
