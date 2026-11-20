.class public final synthetic Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Lcom/google/firebase/FirebaseApp;

.field public final synthetic f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/FirebaseApp;

    iput-object p3, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->lambda$setCustomSignals$3(Ljava/util/HashMap;Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
