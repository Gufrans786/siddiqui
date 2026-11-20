.class public Lnts/ᯋ$て;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᯋ;->ᾨ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᇭ:Lnts/ᯋ;

.field public final synthetic ᾨ:Lnts/ⱪ;

.field public final synthetic ㆃ:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᯋ$て;->ᇭ:Lnts/ᯋ;

    iput-object p2, p0, Lnts/ᯋ$て;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lnts/ᯋ$て;->ᾨ:Lnts/ⱪ;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ᯋ$て;->ᇭ:Lnts/ᯋ;

    iget-object v1, p0, Lnts/ᯋ$て;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lnts/ᯋ$て;->ᾨ:Lnts/ⱪ;

    invoke-static {v0, v1, v2}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V

    return-void
.end method
