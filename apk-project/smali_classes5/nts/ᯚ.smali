.class public Lnts/ᯚ;
.super Landroid/app/ProgressDialog;
.source "SourceFile"


# instance fields
.field public Ͼ:Z

.field public ౠ:Z

.field public ᇭ:Z

.field public ዲ:Landroid/app/Activity;

.field public ᙕ:Z

.field public ᰛ:Z

.field public ᾨ:I

.field public て:Ljava/lang/String;

.field public ㆃ:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ᯚ;->ᾨ:I

    .line 3
    iput-boolean v0, p0, Lnts/ᯚ;->ᇭ:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lnts/ᯚ;->ᰛ:Z

    .line 5
    iput-boolean v0, p0, Lnts/ᯚ;->Ͼ:Z

    .line 6
    iput-boolean v0, p0, Lnts/ᯚ;->ౠ:Z

    .line 7
    iput-boolean v1, p0, Lnts/ᯚ;->ᙕ:Z

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lnts/ᯚ;->て:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lnts/ᯚ;->ዲ:Landroid/app/Activity;

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 20
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnts/ᯚ;->ᙕ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnts/ᯚ;->ᇭ:Z

    .line 3
    iget v0, p0, Lnts/ᯚ;->ᾨ:I

    if-lez v0, :cond_1

    .line 5
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnts/ᯚ;->ㆃ:J

    sub-long/2addr v0, v2

    iget v2, p0, Lnts/ᯚ;->ᾨ:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-wide/16 v0, 0xc8

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lnts/ᯚ;->ㆃ:J

    .line 13
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 4
    iget-boolean p1, p0, Lnts/ᯚ;->ᰛ:Z

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lnts/ᯚ;->Ͼ:Z

    if-eqz p1, :cond_4

    .line 8
    sget p1, Lcom/nsoftware/ipworks3ds/sdk/R$layout;->nsoftware_prograss_bar_areq:I

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->white_box:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    iget-boolean v0, p0, Lnts/ᯚ;->ౠ:Z

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 17
    :cond_1
    iget-object v0, p0, Lnts/ᯚ;->て:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v3, 0x23

    const/16 v4, 0x188

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnts/ᯚ;->て:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    sget-object v2, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 20
    iget-object v2, v2, Lnts/ᄎ;->て:Landroid/content/Context;

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x8

    const/16 v5, 0x56

    const/16 v6, 0x196

    invoke-static {v6, v4, v5}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/nsoftware/ipworks3ds/sdk/R$id;->ds_logo:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-lez v0, :cond_3

    .line 25
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 31
    :cond_4
    sget p1, Lcom/nsoftware/ipworks3ds/sdk/R$layout;->nsoftware_prograss_bar_creq:I

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 35
    :goto_1
    sget p1, Lcom/nsoftware/ipworks3ds/sdk/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_7

    .line 38
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 39
    iget-object v0, v0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    .line 40
    iget-object v0, v0, Lnts/ᙕ;->Ⲳ:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Lnts/ᾨ;->て(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 45
    :cond_5
    iget-object v0, p0, Lnts/ᯚ;->ዲ:Landroid/app/Activity;

    .line 46
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 48
    iget v2, v2, Landroid/util/TypedValue;->data:I

    sget v3, Lcom/nsoftware/ipworks3ds/sdk/R$attr;->colorPrimary:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 50
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v2, 0xc

    const/16 v3, 0x6d

    const/16 v4, 0x1a2

    .line 55
    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 57
    :goto_2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnts/ᯚ;->ᙕ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnts/ᯚ;->ᇭ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lnts/ᯚ;->ᇭ:Z

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnts/ᯚ;->ㆃ:J

    .line 6
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public ㆃ(I)V
    .locals 1

    .line 1
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 2
    iget-object v0, v0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    .line 3
    iget-boolean v0, v0, Lnts/ᙕ;->ᇭ:Z

    if-eqz v0, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    .line 4
    iput p1, p0, Lnts/ᯚ;->ᾨ:I

    :cond_0
    return-void
.end method
