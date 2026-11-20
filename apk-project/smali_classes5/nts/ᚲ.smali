.class public abstract Lnts/ᚲ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᾨ:Ljava/security/PublicKey;

.field public ㆃ:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᚲ;->ㆃ:Ljava/security/PrivateKey;

    .line 3
    iput-object v0, p0, Lnts/ᚲ;->ᾨ:Ljava/security/PublicKey;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/ᚲ;->ᇭ:I

    return-void
.end method

.method public static ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lnts/ዧ;->せ:Z

    if-eqz v0, :cond_0

    sget-object p1, Lnts/ሾ;->て:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract ㆃ()I
.end method
