.class public final synthetic Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;->f$0:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;->f$0:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->$r8$lambda$ESBRMuM5_1F8IKPYojzAyMvqD_Y(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    move-result-object v0

    return-object v0
.end method
