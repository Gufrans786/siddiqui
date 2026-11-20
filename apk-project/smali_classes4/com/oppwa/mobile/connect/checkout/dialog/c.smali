.class Lcom/oppwa/mobile/connect/checkout/dialog/c;
.super Ljava/lang/Object;
.source "AlphaNumericInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c;->a:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    .line 3
    iget-boolean p5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c;->a:Z

    const-string p6, ""

    const/16 v0, 0x20

    if-nez p5, :cond_0

    if-ne p4, v0, :cond_0

    return-object p6

    :cond_0
    if-eq p4, v0, :cond_1

    .line 9
    invoke-static {p4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p4

    if-nez p4, :cond_1

    return-object p6

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
