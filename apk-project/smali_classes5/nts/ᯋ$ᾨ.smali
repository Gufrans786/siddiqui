.class public Lnts/ᯋ$ᾨ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
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
    iput-object p1, p0, Lnts/ᯋ$ᾨ;->ᾨ:Lnts/ᯋ;

    iput-object p2, p0, Lnts/ᯋ$ᾨ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnts/ᯋ$ᾨ;->ᾨ:Lnts/ᯋ;

    iget-object v0, p0, Lnts/ᯋ$ᾨ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, v0}, Lnts/ᯋ;->ᇭ(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
