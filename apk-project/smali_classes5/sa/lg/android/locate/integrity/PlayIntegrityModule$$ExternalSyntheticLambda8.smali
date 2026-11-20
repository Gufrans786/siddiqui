.class public final synthetic Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lsa/lg/android/locate/integrity/PlayIntegrityModule;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lsa/lg/android/locate/integrity/PlayIntegrityModule;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda8;->f$0:Lsa/lg/android/locate/integrity/PlayIntegrityModule;

    iput-wide p2, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda8;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda8;->f$0:Lsa/lg/android/locate/integrity/PlayIntegrityModule;

    iget-wide v1, p0, Lsa/lg/android/locate/integrity/PlayIntegrityModule$$ExternalSyntheticLambda8;->f$1:J

    check-cast p1, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    invoke-static {v0, v1, v2, p1}, Lsa/lg/android/locate/integrity/PlayIntegrityModule;->$r8$lambda$iEEBxTBCoJY1d14MlEgadKP8yJg(Lsa/lg/android/locate/integrity/PlayIntegrityModule;JLcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
