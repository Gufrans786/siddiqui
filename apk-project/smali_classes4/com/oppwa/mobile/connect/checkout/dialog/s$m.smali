.class Lcom/oppwa/mobile/connect/checkout/dialog/s$m;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/util/regex/Pattern;

.field private final b:Z

.field private final c:I


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->a:Ljava/util/regex/Pattern;

    .line 3
    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->b:Z

    .line 4
    iput p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->c:I

    return v0
.end method

.method b()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->b:Z

    return v0
.end method
