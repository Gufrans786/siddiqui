.class Lcom/oppwa/mobile/connect/checkout/dialog/s$n;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->a:I

    .line 3
    iput p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->b:I

    return v0
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->a:I

    return v0
.end method
