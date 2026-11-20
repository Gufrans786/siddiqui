.class public final synthetic Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/ReadableArray;

.field public final synthetic f$1:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->lambda$aggregateQuery$3(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
