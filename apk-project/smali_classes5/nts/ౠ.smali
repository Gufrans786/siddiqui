.class public Lnts/ౠ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;


# instance fields
.field public final ᾨ:Ljava/lang/String;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ౠ;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lnts/ౠ;->ᾨ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSDKTransactionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ౠ;->ㆃ:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ౠ;->ᾨ:Ljava/lang/String;

    return-object v0
.end method
