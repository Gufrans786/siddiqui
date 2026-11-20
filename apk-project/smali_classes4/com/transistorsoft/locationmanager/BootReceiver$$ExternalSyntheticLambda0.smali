.class public final synthetic Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/BootReceiver;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/BootReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/BootReceiver;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/BootReceiver;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/BootReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/locationmanager/BootReceiver;->$r8$lambda$Gr96VaOy-OXjytMvZGIyrjNw52w(Lcom/transistorsoft/locationmanager/BootReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
