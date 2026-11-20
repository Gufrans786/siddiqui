.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;

.field public ㆃ:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;

    sget v0, Lcom/nsoftware/ipworks3ds/sdk/R$id;->challengeDataLayout:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 3
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v1, Lnts/ᯋ;->ౠ:I

    sub-int/2addr p1, v1

    if-gez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;

    invoke-virtual {v1}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;->ㆃ()[Ljava/lang/String;

    move-result-object v1

    .line 8
    array-length v2, v1

    if-gt p1, v2, :cond_1

    .line 12
    aget-object p1, v1, p1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener;

    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientSingleSelectorChallengeListener$ㆃ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1, v1}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void

    .line 16
    :cond_1
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 v1, 0x20

    const-string/jumbo v2, "~XCU_[U\u0010L[QYXN\\\\\u0007OK@FZ\u000f"

    const/16 v3, 0x17

    .line 17
    invoke-static {v2, v0, v3, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
