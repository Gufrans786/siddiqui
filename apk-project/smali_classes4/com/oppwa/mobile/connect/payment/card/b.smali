.class Lcom/oppwa/mobile/connect/payment/card/b;
.super Ljava/lang/Object;
.source "LuhnChecker.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppwa/mobile/connect/payment/card/b;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0x1
        0x3
        0x5
        0x7
        0x9
    .end array-data
.end method

.method static a(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    move v0, v1

    move v2, v0

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ge v0, v3, :cond_2

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 15
    rem-int/lit8 v4, v0, 0x2

    if-ne v4, v5, :cond_1

    .line 16
    sget-object v4, Lcom/oppwa/mobile/connect/payment/card/b;->a:[I

    aget v3, v4, v3

    :cond_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_2
    rem-int/2addr v2, v4

    if-nez v2, :cond_3

    return v5

    :cond_3
    return v1
.end method
