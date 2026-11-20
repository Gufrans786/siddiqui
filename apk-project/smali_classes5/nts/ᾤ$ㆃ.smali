.class public Lnts/ᾤ$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᾤ;->doChallenge(Landroid/app/Activity;Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᾨ:Lnts/ᾤ;

.field public final synthetic ㆃ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lnts/ᾤ;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᾤ$ㆃ;->ᾨ:Lnts/ᾤ;

    iput-object p2, p0, Lnts/ᾤ$ㆃ;->ㆃ:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lnts/ᾤ$ㆃ;->ᾨ:Lnts/ᾤ;

    iget-object v1, p0, Lnts/ᾤ$ㆃ;->ㆃ:Landroid/app/Activity;

    .line 2
    iget-object v2, v0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    if-nez v2, :cond_0

    .line 3
    sget-object v2, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/16 v3, 0x1a

    const/16 v4, 0x55

    const/16 v5, 0x106

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnts/ᄎ;->ᾨ(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 5
    iget-object v2, v2, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    .line 6
    iget-boolean v3, v2, Lnts/ᙕ;->ㆃ:Z

    .line 7
    iget-boolean v2, v2, Lnts/ᙕ;->ᾨ:Z

    .line 8
    iget-object v4, v0, Lnts/ᾤ;->ㆃ:Ljava/lang/String;

    .line 9
    new-instance v5, Lnts/ᯚ;

    invoke-direct {v5, v1}, Lnts/ᯚ;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v5, v1}, Lnts/ᯚ;->ㆃ(I)V

    .line 12
    iput-boolean v2, v5, Lnts/ᯚ;->ᙕ:Z

    .line 13
    iput-boolean v3, v5, Lnts/ᯚ;->ౠ:Z

    .line 14
    iput-object v4, v5, Lnts/ᯚ;->て:Ljava/lang/String;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v5, Lnts/ᯚ;->Ͼ:Z

    .line 16
    iput-object v5, v0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    .line 18
    :cond_0
    iget-object v0, v0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    .line 19
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
