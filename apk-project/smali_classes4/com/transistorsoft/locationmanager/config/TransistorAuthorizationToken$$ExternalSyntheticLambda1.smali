.class public final synthetic Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;->f$2:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;->f$2:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->$r8$lambda$sp5QJEKb7rg8ldylhrloC6RoBTY(Ljava/lang/String;Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method
