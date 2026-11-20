.class public Lnts/₦;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:Ljava/util/zip/Inflater;

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/₦;->ㆃ:I

    .line 3
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lnts/₦;->ᾨ:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public ㆃ([BII)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lnts/₦;->ㆃ:I

    .line 2
    iget-object v1, p0, Lnts/₦;->ᾨ:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p1

    iput p1, p0, Lnts/₦;->ㆃ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
