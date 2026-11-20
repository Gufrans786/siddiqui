.class public final synthetic Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/config/UniversalFirebaseConfigModule;Ljava/lang/String;Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;->f$0:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    iput-object p2, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;->f$2:Lcom/google/firebase/FirebaseApp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;->f$0:Lio/invertase/firebase/config/UniversalFirebaseConfigModule;

    iget-object v1, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/invertase/firebase/config/UniversalFirebaseConfigModule$$ExternalSyntheticLambda3;->f$2:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, v1, v2}, Lio/invertase/firebase/config/UniversalFirebaseConfigModule;->$r8$lambda$0InI6iiMy2Rb5pW7-NwznfiHmbM(Lio/invertase/firebase/config/UniversalFirebaseConfigModule;Ljava/lang/String;Lcom/google/firebase/FirebaseApp;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
