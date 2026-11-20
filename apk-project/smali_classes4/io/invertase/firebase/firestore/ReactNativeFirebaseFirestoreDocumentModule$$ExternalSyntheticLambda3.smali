.class public final synthetic Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/DocumentReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/DocumentReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/DocumentReference;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {v0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->$r8$lambda$OpLAA7jAknD02y0JJpelCixcQfc(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
