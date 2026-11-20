.class public Lnts/ᯋ$ዲ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᾨ:Lnts/ᯋ;

.field public final synthetic ㆃ:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᯋ$ዲ;->ᾨ:Lnts/ᯋ;

    iput-object p2, p0, Lnts/ᯋ$ዲ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᯋ$ዲ;->ᾨ:Lnts/ᯋ;

    iget-object v1, p0, Lnts/ᯋ$ዲ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
