.class public Lnts/ⲽ$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ⲽ;->ౠ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᾨ:Landroid/os/Handler;

.field public final synthetic ㆃ:Z


# direct methods
.method public constructor <init>(Lnts/ⲽ;ZLandroid/os/Handler;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lnts/ⲽ$ㆃ;->ㆃ:Z

    iput-object p3, p0, Lnts/ⲽ$ㆃ;->ᾨ:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-boolean p1, p0, Lnts/ⲽ$ㆃ;->ㆃ:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lnts/ⲽ$ㆃ;->ᾨ:Landroid/os/Handler;

    new-instance p2, Lnts/ⲽ$ㆃ$ㆃ;

    invoke-direct {p2, p0}, Lnts/ⲽ$ㆃ$ㆃ;-><init>(Lnts/ⲽ$ㆃ;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
