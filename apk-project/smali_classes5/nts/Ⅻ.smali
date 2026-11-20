.class public Lnts/Ⅻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:[I

.field public ᾨ:[I

.field public ㆃ:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/Ⅻ;->ㆃ:[I

    .line 3
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/Ⅻ;->ᾨ:[I

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/Ⅻ;->ᇭ:[I

    return-void
.end method
