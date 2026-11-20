.class public Lnts/Ⱕ;
.super Ljava/util/EventObject;
.source "SourceFile"


# instance fields
.field public ᇭ:Ljava/lang/String;

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lnts/Ⱕ;->ㆃ:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lnts/Ⱕ;->ᾨ:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lnts/Ⱕ;->ᇭ:Ljava/lang/String;

    return-void
.end method
