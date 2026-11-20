.class public final synthetic Lcom/oppwa/mobile/connect/checkout/dialog/a0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0$$ExternalSyntheticLambda0;->f$0:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0$$ExternalSyntheticLambda0;->f$0:Ljava/util/LinkedList;

    check-cast p1, Lcom/oppwa/mobile/connect/payment/token/Token;

    check-cast p2, Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-static {v0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->$r8$lambda$rnPsjIKnbLsbyDGB2dH3Si1Olrk(Ljava/util/LinkedList;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/payment/token/Token;)I

    move-result p1

    return p1
.end method
