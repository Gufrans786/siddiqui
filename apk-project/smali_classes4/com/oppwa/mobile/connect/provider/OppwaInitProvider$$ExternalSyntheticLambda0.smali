.class public final synthetic Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;

.field public final synthetic f$1:Ljava/lang/Thread;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;->$r8$lambda$B4l2_gNk_G6-ZgpbiD0JGbo3xAI(Lcom/oppwa/mobile/connect/provider/OppwaInitProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
