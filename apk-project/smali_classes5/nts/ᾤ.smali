.class public Lnts/ᾤ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/Transaction;


# instance fields
.field public ᇭ:Lnts/ᇭ;

.field public ᰛ:Lnts/ᯚ;

.field public final ᾨ:Ljava/lang/String;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ᾤ;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lnts/ᾤ;->ᾨ:Ljava/lang/String;

    return-void
.end method

.method public static ㆃ()Lnts/ᦝ;
    .locals 6

    .line 1
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 4
    iget-object v0, v0, Lnts/ᣐ;->ⲍ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "01"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lnts/ᦝ;->ᾨ:Lnts/ᦝ;

    return-object v0

    :cond_1
    const-string v1, "02"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v0, Lnts/ᦝ;->ᇭ:Lnts/ᦝ;

    return-object v0

    :cond_2
    const-string v1, "03"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    sget-object v0, Lnts/ᦝ;->ᰛ:Lnts/ᦝ;

    return-object v0

    :cond_3
    const-string v1, "04"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    sget-object v0, Lnts/ᦝ;->Ͼ:Lnts/ᦝ;

    return-object v0

    :cond_4
    const-string v1, "05"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    sget-object v0, Lnts/ᦝ;->ౠ:Lnts/ᦝ;

    return-object v0

    .line 16
    :cond_5
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10

    const/16 v4, 0x19

    const/16 v5, 0x132

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lnts/ᦝ;->ㆃ:Lnts/ᦝ;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/16 v1, 0x12

    const/16 v2, 0x53

    const/16 v3, 0x120

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v0, v0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Lnts/ᄎ;->Ὺ:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnts/ᾤ;->ᇭ:Lnts/ᇭ;

    .line 5
    iget-object v1, p0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnts/ᯚ;->dismiss()V

    .line 6
    :cond_1
    iput-object v0, p0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    .line 7
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v0

    invoke-virtual {v0}, Lnts/ⱪ;->ㆃ()V

    return-void
.end method

.method public doChallenge(Landroid/app/Activity;Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x5

    const/16 v2, 0x30

    if-lt p4, v1, :cond_4

    .line 1
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v3, Lnts/Ͼ;

    invoke-direct {v3, p3}, Lnts/Ͼ;-><init>(Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;)V

    .line 2
    iput-object v3, v1, Lnts/ᄎ;->Ͼ:Lnts/Ͼ;

    .line 3
    :try_start_0
    new-instance p3, Lnts/ᾤ$ㆃ;

    invoke-direct {p3, p0, p1}, Lnts/ᾤ$ㆃ;-><init>(Lnts/ᾤ;Landroid/app/Activity;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    sget-object p3, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p3}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object p3

    .line 11
    invoke-virtual {p2}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->getThreeDSServerAuthResponse()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8a

    const/16 v5, 0xf

    const/16 v6, 0x65

    invoke-static {v4, v5, v6}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->getThreeDSRequestorAppURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p3, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lnts/ⲽ;->ㆃ(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x99

    const/16 v5, 0x15

    const/16 v7, 0x11

    invoke-static {v4, v7, v5}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->getAcsTransactionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xaa

    const/16 v5, 0x14

    invoke-static {v4, v5, v6}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->get3DSServerTransactionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xbe

    const/16 v5, 0x7d

    invoke-static {v4, v7, v5}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->getAcsSignedContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object p2, p3, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v3}, Lnts/ⲽ;->ㆃ(Ljava/lang/String;)V

    .line 20
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xe

    const/16 v1, 0x4b

    const/16 v4, 0xcf

    invoke-static {v4, v0, v1}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-static {v3}, Lnts/ᯋ;->ㆃ(Landroid/os/Handler;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_3

    .line 32
    new-instance p2, Lnts/ᾤ$ᾨ;

    invoke-direct {p2, p0}, Lnts/ᾤ$ᾨ;-><init>(Lnts/ᾤ;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    new-instance p2, Lnts/ᾤ$ᾨ;

    invoke-direct {p2, p0}, Lnts/ᾤ$ᾨ;-><init>(Lnts/ᾤ;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    invoke-static {p1}, Lnts/ᾨ;->ㆃ(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p2

    .line 42
    :try_start_3
    sget-object p3, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xdd

    const/16 v1, 0x29

    invoke-static {v0, v1, v2}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lnts/ᄎ;->ᇭ(Ljava/lang/String;)V

    .line 43
    sget-object p3, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p3, p2}, Lnts/ᄎ;->ㆃ(Lnts/ᓬ;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    new-instance p2, Lnts/ᾤ$ᾨ;

    invoke-direct {p2, p0}, Lnts/ᾤ$ᾨ;-><init>(Lnts/ᾤ;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p2

    new-instance p3, Lnts/ᾤ$ᾨ;

    invoke-direct {p3, p0}, Lnts/ᾤ$ᾨ;-><init>(Lnts/ᾤ;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    throw p2

    .line 59
    :cond_4
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x5a

    const/16 p3, 0x3b

    invoke-static {p2, v2, p3}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAuthenticationRequestParameters()Lcom/nsoftware/ipworks3ds/sdk/AuthenticationRequestParameters;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᾤ;->ᇭ:Lnts/ᇭ;

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lnts/ⱪ;->ᾨ()V

    .line 12
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x68

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᾤ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lnts/ᾤ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ᾨ(Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lnts/ⱪ;->て:Lnts/ⲽ;
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v12, v2

    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lnts/ⲽ;->ᰛ()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_0
    const/16 v1, 0xa

    const/16 v5, 0x15

    .line 16
    invoke-static {v3, v1, v5}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x1a

    const/16 v3, 0x2b

    .line 17
    invoke-static {v1, v5, v3}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x2f

    const/16 v3, 0x12

    .line 18
    invoke-static {v1, v3, v4}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    new-instance v5, Lnts/ᇭ;

    .line 24
    invoke-virtual {v0}, Lnts/ⱪ;->て()Ljava/lang/String;

    move-result-object v6

    .line 25
    iget-object v0, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {v0}, Lnts/ᣐ;->ԏ()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    .line 27
    iget-object v11, p0, Lnts/ᾤ;->ᾨ:Ljava/lang/String;

    invoke-direct/range {v5 .. v12}, Lnts/ᇭ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lnts/ᾤ;->ᇭ:Lnts/ᇭ;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x19

    const/16 v4, 0x29

    const/16 v5, 0x41

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnts/ᄎ;->ᇭ(Ljava/lang/String;)V

    .line 29
    new-instance v1, Lnts/せ;

    invoke-direct {v1, v0}, Lnts/せ;-><init>(Lnts/ᓬ;)V

    throw v1

    .line 40
    :cond_2
    :goto_2
    iget-object v0, p0, Lnts/ᾤ;->ᇭ:Lnts/ᇭ;

    return-object v0
.end method

.method public getProgressView(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/16 v1, 0x1a

    const/16 v2, 0x55

    const/16 v3, 0x106

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ౠ(III)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 4
    sget-object v3, Lnts/ᄎ;->Ὺ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 6
    iget-object v0, v0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    .line 7
    iget-boolean v1, v0, Lnts/ᙕ;->ㆃ:Z

    .line 8
    iget-boolean v0, v0, Lnts/ᙕ;->ᾨ:Z

    .line 9
    iget-object v3, p0, Lnts/ᾤ;->ㆃ:Ljava/lang/String;

    .line 10
    new-instance v4, Lnts/ᯚ;

    invoke-direct {v4, p1}, Lnts/ᯚ;-><init>(Landroid/app/Activity;)V

    .line 12
    invoke-virtual {v4, v2}, Lnts/ᯚ;->ㆃ(I)V

    .line 13
    iput-boolean v0, v4, Lnts/ᯚ;->ᙕ:Z

    .line 14
    iput-boolean v1, v4, Lnts/ᯚ;->ౠ:Z

    .line 15
    iput-object v3, v4, Lnts/ᯚ;->て:Ljava/lang/String;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, v4, Lnts/ᯚ;->Ͼ:Z

    .line 17
    iput-object v4, p0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    .line 19
    :cond_1
    iget-object p1, p0, Lnts/ᾤ;->ᰛ:Lnts/ᯚ;

    return-object p1
.end method
