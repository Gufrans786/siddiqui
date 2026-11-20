.class public final Lnts/И;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/Warning;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnts/Ἂ;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x29

    const/4 v1, 0x5

    const/16 v2, 0x54

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeverity()Lcom/nsoftware/ipworks3ds/sdk/Warning$Severity;
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/Warning$Severity;->HIGH:Lcom/nsoftware/ipworks3ds/sdk/Warning$Severity;

    return-object v0
.end method
