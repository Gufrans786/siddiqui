.class public final synthetic Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->$r8$lambda$xkrKxsKyJimT6XQ0c2t4RSNdOBQ(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
