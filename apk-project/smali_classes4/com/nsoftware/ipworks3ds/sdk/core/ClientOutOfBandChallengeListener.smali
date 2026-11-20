.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;
.super Lnts/ᯋ;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public ዲ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ᯋ;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, ""

    .line 1
    invoke-virtual {p0, p1, p0}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x15

    const/16 v1, 0x5a

    .line 5
    const-string v2, "&=\u001f)??;&\"\"\u00036,/\u0003!15\u001c,+"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;->ዲ:Z

    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;->ዲ:Z

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0, p0, p0, p0}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-super {p0}, Lnts/ᯋ;->onResume()V

    .line 2
    iget-boolean v1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;->ዲ:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p0, p0, p0}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 4
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lnts/ⱪ;->ᾨ()V

    .line 8
    :try_start_0
    iget-object v1, v1, Lnts/ⱪ;->て:Lnts/ⲽ;

    const/16 v2, 0xf

    const/16 v3, 0x3d

    const/16 v4, 0xab

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    const/16 v2, 0xba

    const/16 v3, 0x6f

    const/4 v4, 0x5

    .line 12
    invoke-static {v2, v4, v3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xbf

    const/4 v3, 0x0

    .line 15
    invoke-static {v2, v4, v3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0, v0, p0}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;->ዲ:Z

    return-void
.end method

.method public ㆃ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientOutOfBandChallengeListener;->ዲ:Z

    return v0
.end method
