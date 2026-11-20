.class public final synthetic Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/google/firebase/firestore/MetadataChanges;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/MetadataChanges;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;

    iput p2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$4:Lcom/google/firebase/firestore/MetadataChanges;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;

    iget v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule$$ExternalSyntheticLambda6;->f$4:Lcom/google/firebase/firestore/MetadataChanges;

    move-object v5, p1

    check-cast v5, Lcom/google/firebase/firestore/QuerySnapshot;

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;->$r8$lambda$88rl5K__rt_dIPtnVhJw3UeqjzI(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreCollectionModule;ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
