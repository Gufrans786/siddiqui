.class public Lnts/ఋ$ㆃ;
.super Lnts/ⴉ;
.source "SourceFile"

# interfaces
.implements Lnts/ⵋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ఋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ᛃ:Lnts/ఋ;

.field public Ὺ:Lnts/ሠ;

.field public Ⲳ:Lnts/ఋ$ᇭ;


# direct methods
.method public constructor <init>(Lnts/ఋ;[B[B[B[BII)V
    .locals 7

    .line 1
    iput-object p1, p0, Lnts/ఋ$ㆃ;->ᛃ:Lnts/ఋ;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p3

    move v6, p7

    .line 3
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    .line 4
    new-instance p3, Lnts/ሠ;

    invoke-direct {p3}, Lnts/ሠ;-><init>()V

    iput-object p3, v0, Lnts/ఋ$ㆃ;->Ὺ:Lnts/ሠ;

    .line 5
    new-instance p3, Lnts/ఋ$ᇭ;

    invoke-direct {p3, p1}, Lnts/ఋ$ᇭ;-><init>(Lnts/ఋ;)V

    iput-object p3, v0, Lnts/ఋ$ㆃ;->Ⲳ:Lnts/ఋ$ᇭ;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    .line 13
    iput-boolean p1, v0, Lnts/ⵄ;->て:Z

    .line 15
    iget-object p1, v0, Lnts/ఋ$ㆃ;->Ⲳ:Lnts/ఋ$ᇭ;

    iput-object v1, p1, Lnts/ఋ$ᇭ;->ᾨ:[B

    .line 16
    iput-object p2, p1, Lnts/ఋ$ᇭ;->ㆃ:[B

    .line 17
    iput-object p4, p1, Lnts/ఋ$ᇭ;->ᇭ:[B

    .line 18
    div-int/lit8 p6, p6, 0x8

    iput p6, p1, Lnts/ఋ$ᇭ;->Ͼ:I

    .line 19
    iput-object p5, p1, Lnts/ఋ$ᇭ;->ᰛ:[B

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public ᡲ([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lnts/ఋ$ㆃ;->Ὺ:Lnts/ሠ;

    invoke-virtual {p4, p1, p2, p3}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    return-void
.end method

.method public ㆃ([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lnts/ఋ$ㆃ;->Ⲳ:Lnts/ఋ$ᇭ;

    iput-object p1, v0, Lnts/ఋ$ᇭ;->ᰛ:[B

    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ఋ$ㆃ;->Ⲳ:Lnts/ఋ$ᇭ;

    iget-object v0, v0, Lnts/ఋ$ᇭ;->ᰛ:[B

    return-object v0
.end method

.method public ㆃ([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnts/ఋ$ㆃ;->Ὺ:Lnts/ሠ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 5
    iget-object p1, p0, Lnts/ఋ$ㆃ;->Ⲳ:Lnts/ఋ$ᇭ;

    iget-object p2, p0, Lnts/ఋ$ㆃ;->Ὺ:Lnts/ሠ;

    .line 6
    iget-object p2, p2, Lnts/ሠ;->ㆃ:[B

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0, p3, v0}, Lnts/ᨍ;->ㆃ(Lnts/ఋ$ᇭ;[BIIZ)V

    .line 8
    iget-object p1, p0, Lnts/ఋ$ㆃ;->Ὺ:Lnts/ሠ;

    invoke-virtual {p1}, Lnts/ሠ;->ㆃ()[B

    move-result-object p1

    return-object p1
.end method
