.class public final Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:Ljava/lang/String;

.field public ᇭ:Ljava/lang/String;

.field public ᰛ:Ljava/lang/String;

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get3DSServerTransactionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ㆃ:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsRefNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ᇭ:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsSignedContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsTransactionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeDSRequestorAppURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->Ͼ:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeDSServerAuthResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ౠ:Ljava/lang/String;

    return-object v0
.end method

.method public set3DSServerTransactionID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ㆃ:Ljava/lang/String;

    return-void
.end method

.method public setAcsRefNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ᇭ:Ljava/lang/String;

    return-void
.end method

.method public setAcsSignedContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ᰛ:Ljava/lang/String;

    return-void
.end method

.method public setAcsTransactionID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ᾨ:Ljava/lang/String;

    return-void
.end method

.method public setThreeDSRequestorAppURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->Ͼ:Ljava/lang/String;

    return-void
.end method

.method public setThreeDSServerAuthResponse(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->ౠ:Ljava/lang/String;

    return-void
.end method
