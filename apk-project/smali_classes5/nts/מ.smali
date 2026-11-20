.class public Lnts/מ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᾨ:I

.field public ㆃ:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/מ;->ㆃ:[I

    .line 3
    iput v0, p0, Lnts/מ;->ᾨ:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/מ;->ᇭ:I

    return-void
.end method
