.class public Lnts/ᇩ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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

    iput-object v1, p0, Lnts/ᇩ;->ㆃ:[I

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ᇩ;->ᾨ:[I

    return-void
.end method
