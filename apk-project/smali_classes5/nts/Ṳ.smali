.class public Lnts/Ṳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;


# instance fields
.field public final ᾨ:Lnts/ᚹ;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnts/ᚹ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/Ṳ;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lnts/Ṳ;->ᾨ:Lnts/ᚹ;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/Ṳ;->ᾨ:Lnts/ᚹ;

    return-object v0
.end method

.method public getSDKTransactionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/Ṳ;->ㆃ:Ljava/lang/String;

    return-object v0
.end method
