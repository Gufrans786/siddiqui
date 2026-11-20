.class public Lnts/ᅙ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ㆃ:Lnts/Ꭲ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;

    .line 7
    new-instance v0, Lnts/Ꭲ;

    invoke-direct {v0}, Lnts/Ꭲ;-><init>()V

    iput-object v0, p0, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;

    .line 33
    :try_start_0
    new-instance v0, Lnts/Ꭲ;

    invoke-direct {v0, p1, p2, p3, p4}, Lnts/Ꭲ;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Lnts/ᓬ;

    invoke-direct {p2, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw p2
.end method

.method public constructor <init>(Lnts/Ꭲ;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᅙ;

    iget-object v1, p0, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;

    invoke-virtual {v1}, Lnts/Ꭲ;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnts/Ꭲ;

    invoke-direct {v0, v1}, Lnts/ᅙ;-><init>(Lnts/Ꭲ;)V

    return-object v0
.end method
