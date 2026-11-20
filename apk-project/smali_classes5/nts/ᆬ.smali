.class public Lnts/ᆬ;
.super Lnts/ᚬ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᚬ;-><init>()V

    const/16 v0, 0x180

    .line 3
    iput v0, p0, Lnts/ዃ;->ㆃ:I

    .line 4
    invoke-virtual {p0}, Lnts/ᆬ;->ᰛ()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᆬ;

    invoke-direct {v0}, Lnts/ᆬ;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lnts/ᚬ;->ㆃ(Lnts/ᚬ;)V

    return-object v0
.end method

.method public ᰛ()V
    .locals 4

    .line 1
    invoke-super {p0}, Lnts/ᚬ;->ᰛ()V

    .line 3
    iget-object v0, p0, Lnts/ᚬ;->Ͼ:[J

    const/4 v1, 0x0

    const-wide v2, -0x344462a23efa6128L    # -6.771107636816954E56

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x629a292a367cd507L    # 9.641589608180943E166

    .line 4
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    .line 5
    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x152fecd8f70e5939L

    .line 6
    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x67332667ffc00b31L    # 1.3331733573491853E189

    .line 7
    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    .line 8
    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    .line 9
    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    .line 10
    aput-wide v2, v0, v1

    return-void
.end method
