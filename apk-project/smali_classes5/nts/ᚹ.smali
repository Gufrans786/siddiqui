.class public Lnts/ᚹ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;


# instance fields
.field public final ᇭ:Ljava/lang/String;

.field public final ᰛ:Ljava/lang/String;

.field public final ᾨ:Ljava/lang/String;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ᚹ;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lnts/ᚹ;->ᾨ:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lnts/ᚹ;->ᇭ:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lnts/ᚹ;->ᰛ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᚹ;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᚹ;->ᇭ:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetails()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᚹ;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᚹ;->ㆃ:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x19

    const-string v1, "sTDJPCBTFACeo\u0010\t\rD\u001a\u0015qA@^B|QYY\u0001\u001a\u001cK+&Aapasi\u007fzdce0)-d:5Pvfpysm\'<>i"

    const/4 v2, 0x0

    const/16 v3, 0x3e

    .line 1
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnts/ᚹ;->ㆃ:Ljava/lang/String;

    iget-object v2, p0, Lnts/ᚹ;->ᾨ:Ljava/lang/String;

    iget-object v3, p0, Lnts/ᚹ;->ᇭ:Ljava/lang/String;

    iget-object v4, p0, Lnts/ᚹ;->ᰛ:Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
