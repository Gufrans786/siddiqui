.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;
.super Lnts/ᯋ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;
    }
.end annotation


# instance fields
.field public ዲ:Lnts/ᰛ;


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

    .line 2
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;

    invoke-direct {p1, p0, p0}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;-><init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, p0, p0, p1}, Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public ᾨ()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;->ዲ:Lnts/ᰛ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lnts/ᰛ;->ᾨ:[Ljava/lang/String;

    return-object v0
.end method

.method public ㆃ(Lnts/ആ;)V
    .locals 1

    .line 1
    new-instance v0, Lnts/ᰛ;

    invoke-direct {v0, p1}, Lnts/ᰛ;-><init>(Lnts/ആ;)V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;->ዲ:Lnts/ᰛ;

    return-void
.end method

.method public ㆃ()[Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;->ዲ:Lnts/ᰛ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lnts/ᰛ;->ㆃ:[Ljava/lang/String;

    return-object v0
.end method
