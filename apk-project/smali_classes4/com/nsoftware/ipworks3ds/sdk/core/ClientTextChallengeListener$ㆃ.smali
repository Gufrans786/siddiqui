.class public Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public final synthetic ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;

.field public ㆃ:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;

    invoke-virtual {p1}, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;->ㆃ()Landroid/widget/EditText;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;->ᾨ:Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/core/ClientTextChallengeListener$ㆃ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1, v1}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
