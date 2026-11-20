.class public final synthetic Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/Transaction$Function;


# instance fields
.field public final synthetic f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

.field public final synthetic f$1:Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    iput-object p2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$1:Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    iput-object p3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;

    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$1:Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v0, v1, v2, v3, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionModule;->lambda$transactionBegin$3(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreTransactionHandler;Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
