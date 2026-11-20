.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;
.super Lnts/ᯋ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ᯋ;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;

    invoke-direct {p1, p0, p0}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;-><init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, p0, p0, p1}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public ㆃ()Landroid/widget/EditText;
    .locals 2

    .line 1
    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->challengeDataLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method
