.class public final synthetic Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/FirebaseApp;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/FirebaseApp;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/FirebaseApp;

    iput-wide p2, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/FirebaseApp;

    iget-wide v1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->lambda$fetch$0(Lcom/google/firebase/FirebaseApp;J)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
