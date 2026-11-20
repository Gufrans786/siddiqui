.class public final synthetic Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/FirebaseApp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, v1}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->lambda$setConfigSettings$1(Landroid/os/Bundle;Lcom/google/firebase/FirebaseApp;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
