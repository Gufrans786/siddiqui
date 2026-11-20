.class public final synthetic Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lsa/lg/android/locate/integrity/PlayIntegrityModule;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLsa/lg/android/locate/integrity/PlayIntegrityModule;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$1:Lsa/lg/android/locate/integrity/PlayIntegrityModule;

    iput-object p3, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 6

    .line 0
    iget-boolean v0, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$1:Lsa/lg/android/locate/integrity/PlayIntegrityModule;

    iget-object v2, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lsa/lg/android/locate/integrity/PlayIntegrityModule;->$r8$lambda$jCDfra0J7IQoYQrc2GqLuFYCowE(ZLsa/lg/android/locate/integrity/PlayIntegrityModule;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V

    return-void
.end method
