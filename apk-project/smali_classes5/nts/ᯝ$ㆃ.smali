.class public Lnts/ᯝ$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᯝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public ᇭ:Lnts/ᯝ$ㆃ;

.field public ᾨ:I

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnts/ᯝ;Ljava/lang/String;ILnts/ᯝ$ㆃ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lnts/ᯝ$ㆃ;->ㆃ:Ljava/lang/String;

    .line 3
    iput p3, p0, Lnts/ᯝ$ㆃ;->ᾨ:I

    .line 4
    iput-object p4, p0, Lnts/ᯝ$ㆃ;->ᇭ:Lnts/ᯝ$ㆃ;

    return-void
.end method
