.class public Lnts/ᇭ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/AuthenticationRequestParameters;
.implements Ljava/io/Serializable;


# instance fields
.field public final Ͼ:Ljava/lang/String;

.field public final ౠ:Ljava/lang/String;

.field public final ᇭ:Ljava/lang/String;

.field public final ᙕ:Ljava/lang/String;

.field public final ᰛ:Ljava/lang/String;

.field public final ᾨ:Ljava/lang/String;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lnts/ᇭ;->ᾨ:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lnts/ᇭ;->ᇭ:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lnts/ᇭ;->ᰛ:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lnts/ᇭ;->Ͼ:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lnts/ᇭ;->ㆃ:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lnts/ᇭ;->ౠ:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lnts/ᇭ;->ᙕ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthRequest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->ᙕ:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->ౠ:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKAppID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKEphemeralPublicKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->ㆃ:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKReferenceNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->Ͼ:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKTransactionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᇭ;->ᇭ:Ljava/lang/String;

    return-object v0
.end method
