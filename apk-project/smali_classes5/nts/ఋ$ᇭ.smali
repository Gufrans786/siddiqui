.class public Lnts/ఋ$ᇭ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ఋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u11ed"
.end annotation


# instance fields
.field public Ͼ:I

.field public ᇭ:[B

.field public ᰛ:[B

.field public ᾨ:[B

.field public ㆃ:[B


# direct methods
.method public constructor <init>(Lnts/ఋ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lnts/ఋ$ᇭ;->ㆃ:[B

    .line 3
    iput-object p1, p0, Lnts/ఋ$ᇭ;->ᾨ:[B

    .line 4
    iput-object p1, p0, Lnts/ఋ$ᇭ;->ᇭ:[B

    .line 5
    iput-object p1, p0, Lnts/ఋ$ᇭ;->ᰛ:[B

    const/16 p1, 0xc

    .line 6
    iput p1, p0, Lnts/ఋ$ᇭ;->Ͼ:I

    return-void
.end method
