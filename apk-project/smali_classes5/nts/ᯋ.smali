.class public Lnts/ᯋ;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ᯋ$ᎊ;
    }
.end annotation


# static fields
.field public static Ͼ:Landroid/widget/LinearLayout$LayoutParams;

.field public static ౠ:I

.field public static final ᙕ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final て:Ljava/lang/String;


# instance fields
.field public ᇭ:Ljava/util/Timer;

.field public final ᰛ:Landroid/os/Handler;

.field public ᾨ:Z

.field public ㆃ:Lnts/ᯚ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lnts/ᯋ;->Ͼ:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x1388

    .line 2
    sput v0, Lnts/ᯋ;->ౠ:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnts/ᯋ;->ᙕ:Ljava/util/Map;

    const/16 v0, 0xe

    const/16 v1, 0x40

    const/16 v2, 0x17a

    .line 678
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᯋ;->て:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lnts/ᯋ;->ᾨ:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lnts/ᯋ;->ᇭ:Ljava/util/Timer;

    .line 16
    new-instance v0, Lnts/ᯋ$ᎊ;

    invoke-direct {v0, p0}, Lnts/ᯋ$ᎊ;-><init>(Lnts/ᯋ;)V

    iput-object v0, p0, Lnts/ᯋ;->ᰛ:Landroid/os/Handler;

    return-void
.end method

.method public static ㆃ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 499
    sget-object v0, Lnts/ᯋ;->て:Ljava/lang/String;

    const-string v1, "\\n"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ㆃ(Lnts/ᯋ;)V
    .locals 1

    .line 458
    iget-object p0, p0, Lnts/ᯋ;->ᰛ:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static synthetic ㆃ(Lnts/ᯋ;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnts/ᯋ;->ㆃ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static synthetic ㆃ(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V

    return-void
.end method

.method public static ㆃ(Landroid/os/Handler;)Z
    .locals 9

    .line 464
    const-string v0, ""

    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v1

    const/4 v2, 0x1

    .line 465
    :try_start_0
    iget-object v3, v1, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnts/ⲽ;->て()V
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v2

    :catch_0
    move-exception v3

    .line 466
    sget-object v4, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-static {v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    .line 467
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    :cond_1
    sget-object p0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p0}, Lnts/ᄎ;->ᾨ()Lnts/Ͼ;

    move-result-object p0

    if-nez p0, :cond_2

    return v4

    .line 470
    :cond_2
    iget v5, v3, Lnts/ᓬ;->ㆃ:I

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_5

    const/16 v5, 0x16

    const/4 v6, 0x2

    const/16 v7, 0x13d

    .line 471
    :try_start_1
    invoke-static {v7, v5, v6}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-gtz v2, :cond_3

    .line 472
    iget v2, v3, Lnts/ᓬ;->ㆃ:I

    const/16 v5, 0x57a

    if-ne v2, v5, :cond_3

    .line 473
    invoke-virtual {p0}, Lnts/Ͼ;->timedout()V

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0x9

    const/16 v5, 0x29

    const/16 v6, 0x153

    .line 479
    :try_start_2
    invoke-static {v6, v2, v5}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lnts/ᓬ; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v5, 0x15c

    const/16 v6, 0x10

    .line 480
    :try_start_3
    invoke-static {v5, v6, v4}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lnts/ᓬ; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v6, 0xb

    const/16 v7, 0x14

    const/16 v8, 0x16c

    .line 481
    :try_start_4
    invoke-static {v8, v6, v7}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Lnts/ᓬ; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_2
    move-object v5, v0

    goto :goto_0

    :catch_3
    move-object v2, v0

    move-object v5, v2

    :catch_4
    :goto_0
    move-object v6, v0

    .line 486
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 487
    invoke-static {v0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    iget v2, v3, Lnts/ᓬ;->ㆃ:I

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-static {v6}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 493
    :cond_4
    new-instance v0, Lnts/ᚹ;

    invoke-virtual {v1}, Lnts/ⱪ;->て()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2, v5, v6}, Lnts/ᚹ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v2, Lnts/Ṳ;

    invoke-virtual {v1}, Lnts/ⱪ;->て()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lnts/Ṳ;-><init>(Ljava/lang/String;Lnts/ᚹ;)V

    invoke-virtual {p0, v2}, Lnts/Ͼ;->protocolError(Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;)V

    goto :goto_2

    .line 497
    :cond_5
    new-instance v0, Lnts/ཞ;

    invoke-direct {v0, v3}, Lnts/ཞ;-><init>(Lnts/ᓬ;)V

    invoke-virtual {p0, v0}, Lnts/Ͼ;->runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V

    :goto_2
    return v4
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᯋ;->ᇭ:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/ᯋ;->ᇭ:Ljava/util/Timer;

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnts/ᯋ;->ᾨ:Z

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 18
    iget-object v0, v0, Lnts/ᄎ;->て:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nsoftware/ipworks3ds/sdk/R$string;->app_moved_to_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 22
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 26
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 2
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V

    return-void
.end method

.method public final Ͼ(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 1
    new-instance v0, Lnts/ᯚ;

    invoke-direct {v0, p1}, Lnts/ᯚ;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lnts/ᯚ;->ㆃ(I)V

    .line 4
    iput-object v0, p0, Lnts/ᯋ;->ㆃ:Lnts/ᯚ;

    .line 5
    invoke-virtual {v0}, Lnts/ᯚ;->show()V

    return-void
.end method

.method public ᇭ(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Z)V

    return-void
.end method

.method public ᰛ(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    .line 2
    new-instance v1, Lnts/ᯋ$ㆃ;

    invoke-direct {v1, p0, p1}, Lnts/ᯋ$ㆃ;-><init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public ᾨ(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 11
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->challengeLayout:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->submit:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 19
    :cond_1
    sget-object v0, Lnts/ᦝ;->ᾨ:Lnts/ᦝ;

    invoke-static {}, Lnts/ᾤ;->ㆃ()Lnts/ᦝ;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 21
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->resend:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ᾨ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lnts/ᯋ;->ᇭ:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lnts/ᯋ;->ᇭ:Ljava/util/Timer;

    .line 4
    new-instance v2, Lnts/ᯋ$て;

    invoke-direct {v2, p0, p1, p2}, Lnts/ᯋ$て;-><init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V

    .line 9
    invoke-virtual {p2}, Lnts/ⱪ;->ᰛ()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    const-wide/16 v5, 0x3e8

    .line 10
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public final ㆃ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 459
    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 461
    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 463
    :cond_1
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public ㆃ(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lnts/ᯋ;->ᾨ:Z

    .line 416
    invoke-virtual {p0, p1}, Lnts/ᯋ;->Ͼ(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 417
    new-instance v0, Lnts/ᯋ$ᙕ;

    invoke-direct {v0, p0, p1}, Lnts/ᯋ$ᙕ;-><init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 444
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    const/4 v8, 0x1

    .line 3
    :try_start_0
    sget-object v2, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v2}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v9

    .line 4
    invoke-static {}, Lnts/ᾤ;->ㆃ()Lnts/ᦝ;

    move-result-object v2

    .line 6
    sget-object v3, Lnts/ᦝ;->ౠ:Lnts/ᦝ;

    if-ne v2, v3, :cond_0

    return-void

    .line 10
    :cond_0
    sget-object v3, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 11
    iget-object v4, v3, Lnts/ᄎ;->ᰛ:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    if-nez v4, :cond_1

    .line 12
    new-instance v4, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    invoke-direct {v4}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;-><init>()V

    iput-object v4, v3, Lnts/ᄎ;->ᰛ:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 13
    :cond_1
    iget-object v3, v3, Lnts/ᄎ;->ᰛ:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 14
    invoke-virtual {v3}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getLabelCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;

    move-result-object v10

    .line 16
    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 17
    sget v4, Lcom/nsoftware/ipworks3ds/sdk/R$layout;->activity_nsoftwaresdk_listener:I

    invoke-virtual {v7, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 19
    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lnts/ᾨ;->ㆃ(Landroid/view/Window;Landroid/content/Intent;)V

    .line 22
    invoke-virtual/range {p0 .. p1}, Lnts/ᯋ;->ᰛ(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 24
    invoke-virtual {v3}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getBackground()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 26
    invoke-static {v4}, Lnts/ᾨ;->て(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 28
    sget v5, Lcom/nsoftware/ipworks3ds/sdk/R$id;->checkoutView:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    :cond_2
    invoke-virtual {v9}, Lnts/ⱪ;->ᙕ()Ljava/lang/String;

    move-result-object v4

    .line 34
    sget v5, Lcom/nsoftware/ipworks3ds/sdk/R$id;->psImage:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, 0x0

    if-lez v6, :cond_3

    new-instance v6, Lnts/ⴗ;

    sget-object v12, Lnts/ᯋ;->ᙕ:Ljava/util/Map;

    invoke-direct {v6, v5, v12}, Lnts/ⴗ;-><init>(Landroid/widget/ImageView;Ljava/util/Map;)V

    new-array v5, v8, [Ljava/lang/String;

    aput-object v4, v5, v11

    invoke-virtual {v6, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_3
    invoke-virtual {v9}, Lnts/ⱪ;->ౠ()Ljava/lang/String;

    move-result-object v4

    .line 38
    sget v5, Lcom/nsoftware/ipworks3ds/sdk/R$id;->issuerImage:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Lnts/ⴗ;

    sget-object v12, Lnts/ᯋ;->ᙕ:Ljava/util/Map;

    invoke-direct {v6, v5, v12}, Lnts/ⴗ;-><init>(Landroid/widget/ImageView;Ljava/util/Map;)V

    new-array v5, v8, [Ljava/lang/String;

    aput-object v4, v5, v11

    invoke-virtual {v6, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    :cond_4
    sget v4, Lcom/nsoftware/ipworks3ds/sdk/R$id;->challengeLayout:I

    invoke-virtual {v7, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 42
    sget v5, Lcom/nsoftware/ipworks3ds/sdk/R$id;->infoHeader:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    .line 43
    iget-object v5, v9, Lnts/ⱪ;->て:Lnts/ⲽ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_0

    .line 44
    :cond_5
    :try_start_1
    iget-object v5, v5, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 45
    iget-object v5, v5, Lnts/ᣐ;->ኡ:Lnts/ᗋ;

    invoke-virtual {v5}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v5

    .line 46
    :goto_0
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget-object v5, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_HEADER:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    .line 49
    invoke-static {v10, v5}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_HEADER:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    .line 50
    invoke-virtual {v10, v14}, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->getBackgroundColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;

    move-result-object v14

    .line 51
    invoke-static {v10, v5}, Lnts/ᾨ;->ᾨ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;

    move-result-object v15

    .line 52
    invoke-static {v10, v5}, Lnts/ᾨ;->ᇭ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)I

    move-result v16

    .line 53
    invoke-virtual {v10}, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->getHeadingTextAlignment()I

    move-result v17

    sget-object v5, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_HEADER:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    .line 54
    invoke-virtual {v10, v5}, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->getPadding(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)[I

    move-result-object v18

    .line 55
    invoke-static/range {v12 .. v18}, Lnts/ᾨ;->ㆃ(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[I)V

    .line 56
    sget v5, Lcom/nsoftware/ipworks3ds/sdk/R$id;->infoTextLayout:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 57
    sget v12, Lcom/nsoftware/ipworks3ds/sdk/R$id;->infoText:I

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 58
    iget-object v13, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v13, :cond_6

    move-object v13, v6

    goto :goto_1

    .line 59
    :cond_6
    iget-object v13, v13, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 60
    iget-object v13, v13, Lnts/ᣐ;->ẜ:Lnts/ᗋ;

    invoke-virtual {v13}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v13

    .line 61
    :goto_1
    invoke-static {v13}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget-object v13, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v12, v13}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 63
    iget-object v13, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v13, :cond_7

    move-object v13, v6

    goto :goto_2

    .line 64
    :cond_7
    iget-object v13, v13, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 65
    iget-object v13, v13, Lnts/ᣐ;->ⴷ:Lnts/ᗋ;

    invoke-virtual {v13}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v13

    :goto_2
    const-string v14, "Y"

    .line 66
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 67
    sget v13, Lcom/nsoftware/ipworks3ds/sdk/R$id;->warningImage:I

    invoke-virtual {v7, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    :cond_8
    sget v13, Lcom/nsoftware/ipworks3ds/sdk/R$id;->infoLabel:I

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 72
    iget-object v14, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v14, :cond_9

    move-object v14, v6

    goto :goto_3

    .line 73
    :cond_9
    iget-object v14, v14, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 74
    iget-object v14, v14, Lnts/ᣐ;->ᐜ:Lnts/ᗋ;

    invoke-virtual {v14}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v14

    :goto_3
    if-eqz v14, :cond_b

    .line 75
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_a

    goto :goto_4

    .line 76
    :cond_a
    sget-object v15, Lnts/ᯋ;->て:Ljava/lang/String;

    const-string v11, "\\n"

    invoke-virtual {v14, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget-object v11, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_LABEL:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v13, v11}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    goto :goto_5

    .line 79
    :cond_b
    :goto_4
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 85
    :goto_5
    sget v11, Lcom/nsoftware/ipworks3ds/sdk/R$id;->challengeDataLayout:I

    invoke-virtual {v7, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 86
    sget-object v13, Lnts/ᦝ;->ᾨ:Lnts/ᦝ;

    const/16 v14, 0x14

    if-ne v2, v13, :cond_c

    .line 88
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 91
    invoke-virtual {v5}, Landroid/widget/EditText;->setSingleLine()V

    .line 92
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v13

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v5, v14, v12, v13, v15}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 93
    sget v12, Lcom/nsoftware/ipworks3ds/sdk/R$drawable;->edittext_background:I

    invoke-static {v0, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v15, -0x2

    invoke-direct {v12, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v3}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getTextBoxCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;

    move-result-object v12

    invoke-static {v12, v5}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;Landroid/widget/EditText;)V

    .line 97
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v18, v14

    goto/16 :goto_a

    .line 98
    :cond_c
    sget-object v13, Lnts/ᦝ;->ᇭ:Lnts/ᦝ;

    const/16 v15, 0x37

    if-ne v2, v13, :cond_11

    .line 99
    move-object v5, v7

    check-cast v5, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;

    .line 100
    iget-object v12, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v12, :cond_d

    const/4 v12, 0x0

    goto :goto_6

    .line 101
    :cond_d
    invoke-virtual {v12}, Lnts/ⲽ;->Ͼ()Lnts/ആ;

    move-result-object v12

    .line 102
    :goto_6
    invoke-virtual {v5, v12}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;->ㆃ(Lnts/ആ;)V

    .line 103
    invoke-virtual {v5}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;->ᾨ()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 107
    new-instance v12, Landroid/widget/RadioGroup;

    invoke-direct {v12, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 108
    sget-object v13, Lnts/ᯋ;->Ͼ:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12, v13}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    sget-object v13, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->SELECTION_LIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-virtual {v10, v13}, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->getBackgroundColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnts/ᾨ;->て(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 112
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_e
    const/4 v13, 0x0

    .line 115
    :goto_7
    array-length v15, v5

    if-ge v13, v15, :cond_f

    .line 116
    aget-object v15, v5, v13

    move/from16 v18, v14

    .line 117
    new-instance v14, Landroid/widget/RadioButton;

    invoke-direct {v14, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 118
    sget-object v8, Lnts/ᯋ;->Ͼ:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v14, v8}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget v8, Lnts/ᯋ;->ౠ:I

    add-int/2addr v8, v13

    invoke-virtual {v14, v8}, Landroid/widget/RadioButton;->setId(I)V

    .line 122
    sget-object v8, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->SELECTION_LIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v14, v8}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 123
    invoke-virtual {v12, v14}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v18

    const/4 v8, 0x1

    goto :goto_7

    :cond_f
    move/from16 v18, v14

    .line 125
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 126
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-static {v3, v15, v2}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v18, v14

    .line 147
    sget-object v8, Lnts/ᦝ;->ᰛ:Lnts/ᦝ;

    if-ne v2, v8, :cond_15

    .line 148
    move-object v5, v7

    check-cast v5, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;

    .line 149
    iget-object v8, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v8, :cond_12

    const/4 v8, 0x0

    goto :goto_8

    .line 150
    :cond_12
    invoke-virtual {v8}, Lnts/ⲽ;->Ͼ()Lnts/ആ;

    move-result-object v8

    .line 151
    :goto_8
    invoke-virtual {v5, v8}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;->ㆃ(Lnts/ആ;)V

    .line 152
    invoke-virtual {v5}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;->ᾨ()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 156
    array-length v8, v5

    new-array v8, v8, [Landroid/widget/CheckBox;

    const/4 v12, 0x0

    .line 157
    :goto_9
    array-length v13, v5

    if-ge v12, v13, :cond_13

    .line 158
    new-instance v13, Landroid/widget/CheckBox;

    invoke-direct {v13, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    aput-object v13, v8, v12

    .line 159
    sget-object v14, Lnts/ᯋ;->Ͼ:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    aget-object v13, v8, v12

    aget-object v14, v5, v12

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 162
    aget-object v13, v8, v12

    sget-object v14, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->SELECTION_LIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v13, v14}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 163
    aget-object v13, v8, v12

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 165
    :cond_13
    sget-object v5, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->SELECTION_LIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-virtual {v10, v5}, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->getBackgroundColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnts/ᾨ;->て(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 167
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_a

    .line 168
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v2, 0x1

    invoke-static {v15, v15, v2}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_15
    sget-object v8, Lnts/ᦝ;->Ͼ:Lnts/ᦝ;

    if-ne v2, v8, :cond_16

    .line 185
    move-object v8, v7

    check-cast v8, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;

    .line 186
    invoke-virtual {v8}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;->ㆃ()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v9}, Lnts/ⱪ;->ᇭ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_16

    .line 191
    invoke-virtual {v9}, Lnts/ⱪ;->ᇭ()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v8, Lcom/nsoftware/ipworks3ds/sdk/R$id;->warningImage:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 195
    sget v8, Lcom/nsoftware/ipworks3ds/sdk/R$id;->warningImage:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 196
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 203
    :cond_16
    :goto_a
    sget v5, Lcom/nsoftware/ipworks3ds/sdk/R$id;->submit:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 204
    sget-object v8, Lnts/ᦝ;->Ͼ:Lnts/ᦝ;

    if-ne v2, v8, :cond_18

    .line 205
    iget-object v8, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v8, :cond_17

    move-object v8, v6

    goto :goto_b

    .line 206
    :cond_17
    iget-object v8, v8, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 207
    iget-object v8, v8, Lnts/ᣐ;->Ω:Lnts/ᗋ;

    invoke-virtual {v8}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v8

    .line 208
    :goto_b
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    sget-object v8, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->CONTINUE:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    invoke-virtual {v3, v8}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getButtonCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;)Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;

    move-result-object v8

    invoke-static {v8, v5}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;Landroid/widget/Button;)V

    goto :goto_d

    .line 210
    :cond_18
    iget-object v8, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v8, :cond_19

    move-object v8, v6

    goto :goto_c

    .line 211
    :cond_19
    iget-object v8, v8, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 212
    iget-object v8, v8, Lnts/ᣐ;->ޠ:Lnts/ᗋ;

    invoke-virtual {v8}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v8

    .line 213
    :goto_c
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget-object v8, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->SUBMIT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    invoke-virtual {v3, v8}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getButtonCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;)Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;

    move-result-object v8

    invoke-static {v8, v5}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;Landroid/widget/Button;)V

    :goto_d
    move-object/from16 v8, p3

    .line 216
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v8, Lcom/nsoftware/ipworks3ds/sdk/R$id;->resend:I

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 219
    iget-object v11, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v11, :cond_1a

    move-object v11, v6

    goto :goto_e

    .line 220
    :cond_1a
    iget-object v11, v11, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 221
    iget-object v11, v11, Lnts/ᣐ;->き:Lnts/ᗋ;

    invoke-virtual {v11}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v11

    .line 222
    :goto_e
    sget-object v12, Lnts/ᦝ;->ᾨ:Lnts/ᦝ;

    if-ne v2, v12, :cond_1b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 223
    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 225
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 226
    invoke-virtual {v2, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 228
    iget v2, v11, Landroid/graphics/Point;->x:I

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-le v2, v11, :cond_1c

    .line 229
    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v11, v11, 0x14

    iput v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 232
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 233
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v5, v5, 0x14

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_f

    .line 236
    :cond_1b
    sget v2, Lcom/nsoftware/ipworks3ds/sdk/R$id;->content_submit_buttons:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 240
    :cond_1c
    :goto_f
    new-instance v2, Lnts/ᯋ$ᾨ;

    invoke-direct {v2, v1, v7}, Lnts/ᯋ$ᾨ;-><init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    sget-object v2, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->RESEND:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    invoke-virtual {v3, v2}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getButtonCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;)Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;

    move-result-object v2

    invoke-static {v2, v8}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;Landroid/widget/Button;)V

    .line 249
    sget v2, Lcom/nsoftware/ipworks3ds/sdk/R$id;->addWhitelist:I

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 250
    invoke-virtual {v9}, Lnts/ⱪ;->ዲ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1d

    .line 251
    invoke-virtual {v9}, Lnts/ⱪ;->ዲ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v4, Lnts/ᯋ$ᇭ;

    invoke-direct {v4, v1, v9}, Lnts/ᯋ$ᇭ;-><init>(Lnts/ᯋ;Lnts/ⱪ;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    sget-object v4, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->WHITELIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v2, v4}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    goto :goto_10

    .line 265
    :cond_1d
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 268
    :goto_10
    sget v2, Lcom/nsoftware/ipworks3ds/sdk/R$id;->whyInfoLayout:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 269
    sget v2, Lcom/nsoftware/ipworks3ds/sdk/R$id;->whyInfoLabel:I

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 270
    sget v4, Lcom/nsoftware/ipworks3ds/sdk/R$id;->whyInfoText:I

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 273
    invoke-virtual {v3}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->getInformationZoneIconPosition()I

    move-result v5

    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v11, Lcom/nsoftware/ipworks3ds/sdk/R$drawable;->ipworks3ds_collapse_section_indicator:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 276
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v11, Lcom/nsoftware/ipworks3ds/sdk/R$drawable;->ipworks3ds_expand_section_indicator:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    instance-of v11, v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v12, 0x1e

    if-eqz v11, :cond_1e

    .line 284
    move-object v11, v3

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 285
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 286
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    goto :goto_11

    :cond_1e
    move v11, v12

    move v13, v11

    .line 289
    :goto_11
    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_1f

    .line 290
    move-object v12, v0

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 291
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 292
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move v15, v14

    move v14, v12

    move v12, v15

    goto :goto_12

    :cond_1f
    move v14, v12

    :goto_12
    const/4 v15, 0x0

    .line 295
    invoke-virtual {v3, v15, v15, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    invoke-virtual {v0, v15, v15, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    invoke-virtual {v9}, Lnts/ⱪ;->ᎊ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    if-lez v11, :cond_21

    .line 299
    invoke-virtual {v1, v2, v3, v5}, Lnts/ᯋ;->ㆃ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    .line 300
    invoke-virtual {v9}, Lnts/ⱪ;->ᎊ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v6

    move-object v6, v0

    .line 301
    new-instance v0, Lnts/ᯋ$ᰛ;

    move-object/from16 v19, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lnts/ᯋ$ᰛ;-><init>(Lnts/ᯋ;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V

    move-object v14, v2

    move-object v13, v3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_20

    move-object v0, v11

    goto :goto_13

    .line 303
    :cond_20
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 304
    iget-object v0, v0, Lnts/ᣐ;->మ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_13
    invoke-static {v0}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    :cond_21
    move-object v13, v2

    move-object v14, v4

    move-object v11, v6

    move-object v6, v0

    move-object v4, v3

    .line 310
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 311
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 314
    :goto_14
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->expandableInfoLabel:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 315
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->expandableInfoText:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 317
    invoke-virtual {v9}, Lnts/ⱪ;->Ͼ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 318
    invoke-virtual {v1, v3, v4, v5}, Lnts/ᯋ;->ㆃ(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    .line 319
    invoke-virtual {v9}, Lnts/ⱪ;->Ͼ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v0, Lnts/ᯋ$Ͼ;

    invoke-direct/range {v0 .. v6}, Lnts/ᯋ$Ͼ;-><init>(Lnts/ᯋ;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, v9, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_22

    move-object v6, v11

    goto :goto_15

    .line 322
    :cond_22
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 323
    iget-object v0, v0, Lnts/ᣐ;->ᥦ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v6

    .line 324
    :goto_15
    invoke-static {v6}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x10

    .line 327
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, v18

    .line 329
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 330
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_16

    .line 333
    :cond_23
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 334
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 337
    :goto_16
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->WHY_INFO:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v13, v0}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 338
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->WHY_INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v14, v0}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 339
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->EXPANDABLE_INFO:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v3, v0}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 340
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->EXPANDABLE_INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v10, v2, v0}, Lnts/ᾨ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;Landroid/widget/TextView;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)V

    .line 342
    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 344
    invoke-virtual {v1, v7, v9}, Lnts/ᯋ;->ᾨ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 347
    sget-object v2, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v2}, Lnts/ᄎ;->ᾨ()Lnts/Ͼ;

    move-result-object v2

    new-instance v3, Lnts/ཞ;

    const/16 v4, 0x6e

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lnts/ཞ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnts/Ͼ;->runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V

    return-void
.end method

.method public final ㆃ(Landroidx/appcompat/app/AppCompatActivity;Lnts/ⱪ;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lnts/ᯋ;->ㆃ:Lnts/ᯚ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    :cond_0
    invoke-virtual {p2}, Lnts/ⱪ;->ᰛ()I

    move-result p2

    if-gtz p2, :cond_2

    .line 447
    sget-object p2, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/16 v0, 0x36

    const/16 v1, 0x53

    const/16 v2, 0x107

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object p2, p2, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    if-eqz p2, :cond_1

    .line 449
    sget-object v1, Lnts/ᄎ;->Ὺ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_1
    new-instance p2, Lnts/ᯋ$ዲ;

    invoke-direct {p2, p0, p1}, Lnts/ᯋ$ዲ;-><init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    iget-object p1, p0, Lnts/ᯋ;->ᇭ:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void
.end method

.method public ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, p2, v0}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Z)V

    return-void
.end method

.method public ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Z)V
    .locals 7

    .line 349
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v3

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lnts/ᯋ;->ᾨ:Z

    .line 352
    invoke-virtual {p0, p2}, Lnts/ᯋ;->ᾨ(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 353
    invoke-virtual {p0, p2}, Lnts/ᯋ;->Ͼ(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 358
    new-instance v1, Lnts/ᯋ$ౠ;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lnts/ᯋ$ౠ;-><init>(Lnts/ᯋ;Lnts/ⱪ;ZLjava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 414
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public ㆃ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 498
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᾨ()Lnts/Ͼ;

    move-result-object v0

    new-instance v1, Lnts/ౠ;

    invoke-direct {v1, p1, p2}, Lnts/ౠ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnts/Ͼ;->completed(Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;)V

    return-void
.end method
