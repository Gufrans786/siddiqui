.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;

.field public ㆃ:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;

    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->challengeDataLayout:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;

    invoke-virtual {v1}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;->ㆃ()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_4

    .line 7
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8
    instance-of v7, v6, Landroid/widget/CheckBox;

    if-eqz v7, :cond_3

    .line 9
    check-cast v6, Landroid/widget/CheckBox;

    .line 10
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ","

    invoke-static {v2, v6}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_0
    array-length v6, v1

    if-le v6, v5, :cond_1

    .line 16
    invoke-static {v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 v0, 0x17

    const/16 v1, 0x45

    .line 18
    const-string v2, "\u001b=&0:>0u)>4<=+99b*.%#?j"

    invoke-static {v2, v3, v0, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener;

    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientMultiSelectChallengeListener$ㆃ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, v2, v0}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
