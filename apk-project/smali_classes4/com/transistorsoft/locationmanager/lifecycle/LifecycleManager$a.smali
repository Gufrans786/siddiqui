.class Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$a;->a:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$a;->a:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$a;->a:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;)V

    return-void
.end method
