.class public Lnts/ᯋ$ᰛ;
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
.field public final synthetic Ͼ:Landroid/graphics/drawable/Drawable;

.field public final synthetic ౠ:Lnts/ᯋ;

.field public final synthetic ᇭ:Landroid/graphics/drawable/Drawable;

.field public final synthetic ᰛ:I

.field public final synthetic ᾨ:Landroid/widget/TextView;

.field public final synthetic ㆃ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lnts/ᯋ;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᯋ$ᰛ;->ౠ:Lnts/ᯋ;

    iput-object p2, p0, Lnts/ᯋ$ᰛ;->ㆃ:Landroid/widget/TextView;

    iput-object p3, p0, Lnts/ᯋ$ᰛ;->ᾨ:Landroid/widget/TextView;

    iput-object p4, p0, Lnts/ᯋ$ᰛ;->ᇭ:Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lnts/ᯋ$ᰛ;->ᰛ:I

    iput-object p6, p0, Lnts/ᯋ$ᰛ;->Ͼ:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lnts/ᯋ$ᰛ;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnts/ᯋ$ᰛ;->ౠ:Lnts/ᯋ;

    iget-object v1, p0, Lnts/ᯋ$ᰛ;->ᾨ:Landroid/widget/TextView;

    iget-object v2, p0, Lnts/ᯋ$ᰛ;->ᇭ:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lnts/ᯋ$ᰛ;->ᰛ:I

    invoke-static {p1, v1, v2, v3}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    .line 3
    iget-object p1, p0, Lnts/ᯋ$ᰛ;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lnts/ᯋ$ᰛ;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lnts/ᯋ$ᰛ;->ౠ:Lnts/ᯋ;

    iget-object v0, p0, Lnts/ᯋ$ᰛ;->ᾨ:Landroid/widget/TextView;

    iget-object v1, p0, Lnts/ᯋ$ᰛ;->Ͼ:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lnts/ᯋ$ᰛ;->ᰛ:I

    invoke-static {p1, v0, v1, v2}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    .line 6
    iget-object p1, p0, Lnts/ᯋ$ᰛ;->ㆃ:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
