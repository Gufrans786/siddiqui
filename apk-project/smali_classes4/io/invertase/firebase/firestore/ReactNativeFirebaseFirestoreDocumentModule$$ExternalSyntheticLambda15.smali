.class public final synthetic Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;

    iput p2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$1:I

    iput-object p3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$0:Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;

    iget v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$1:I

    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/google/firebase/firestore/DocumentSnapshot;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;->$r8$lambda$lFrZBKq3HSGZdhuLx-q0d3ivdAU(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreDocumentModule;ILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
