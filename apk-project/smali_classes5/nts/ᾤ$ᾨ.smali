.class public Lnts/ᾤ$ᾨ;
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
.field public final synthetic ㆃ:Lnts/ᾤ;


# direct methods
.method public constructor <init>(Lnts/ᾤ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᾤ$ᾨ;->ㆃ:Lnts/ᾤ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᾤ$ᾨ;->ㆃ:Lnts/ᾤ;

    .line 2
    iget-object v0, v0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lnts/ᯚ;->dismiss()V

    :cond_0
    return-void
.end method
