.class public final Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final APP_SHA256_HASH_VALUE:Ljava/lang/String;

.field public static final APP_SIGNATURE:Ljava/lang/String;

.field public static final GROUP_CLIENT_CONFIG:Ljava/lang/String;

.field public static final GROUP_DEVICE_PARAMETER_BLACK_LIST:Ljava/lang/String;

.field public static final GROUP_DIRECTORY_SERVER_CA:Ljava/lang/String;

.field public static final GROUP_DIRECTORY_SERVER_KEY:Ljava/lang/String;

.field public static final GROUP_MALICIOUS_APPS:Ljava/lang/String;

.field public static final GROUP_TRUSTED_APP_STORES:Ljava/lang/String;

.field public static final RUNTIME_LICENSE:Ljava/lang/String;


# instance fields
.field public Ͼ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ౠ:Ljava/lang/String;

.field public ᇭ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ᙕ:Ljava/lang/String;

.field public ᰛ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ᾨ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public て:Ljava/lang/String;

.field public final ㆃ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0x30

    const/16 v2, 0x3c

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DIRECTORY_SERVER_KEY:Ljava/lang/String;

    const/4 v0, 0x5

    const/16 v1, 0x2b

    const/16 v2, 0x42

    .line 2
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DIRECTORY_SERVER_CA:Ljava/lang/String;

    const/16 v0, 0x10

    const/16 v1, 0x2e

    const/16 v2, 0x47

    .line 3
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_TRUSTED_APP_STORES:Ljava/lang/String;

    const/16 v0, 0x18

    const/16 v1, 0x27

    const/16 v2, 0x57

    .line 4
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DEVICE_PARAMETER_BLACK_LIST:Ljava/lang/String;

    const/16 v0, 0x6f

    const/16 v1, 0xd

    const/16 v2, 0x7c

    .line 5
    invoke-static {v0, v1, v2}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_MALICIOUS_APPS:Ljava/lang/String;

    const/16 v0, 0x8

    const/16 v1, 0xc

    .line 6
    invoke-static {v2, v1, v0}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_CLIENT_CONFIG:Ljava/lang/String;

    const/16 v0, 0x88

    const/16 v2, 0x21

    .line 7
    invoke-static {v0, v1, v2}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->APP_SIGNATURE:Ljava/lang/String;

    const/16 v0, 0x12

    const/16 v1, 0x6e

    const/16 v2, 0x94

    .line 8
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->APP_SHA256_HASH_VALUE:Ljava/lang/String;

    const/16 v0, 0xe

    const/16 v1, 0x3d

    const/16 v2, 0xa6

    .line 9
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->RUNTIME_LICENSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->て:Ljava/lang/String;

    return-void
.end method

.method public static ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appSignature(Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ౠ:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;

    invoke-direct {v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;

    .line 7
    sget-object v3, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DIRECTORY_SERVER_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->getRID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v3, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DIRECTORY_SERVER_CA:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->getRID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->getCA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v4, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DEVICE_PARAMETER_BLACK_LIST:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᾨ:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/util/List;)V

    .line 12
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_TRUSTED_APP_STORES:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᇭ:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_MALICIOUS_APPS:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᰛ:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/util/List;)V

    .line 14
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->APP_SIGNATURE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ౠ:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->APP_SHA256_HASH_VALUE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᙕ:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_CLIENT_CONFIG:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->Ͼ:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/util/List;)V

    .line 17
    sget-object v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->RUNTIME_LICENSE:Ljava/lang/String;

    iget-object v2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->て:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 v1, 0x29

    const/4 v2, 0x3

    const/16 v3, 0xb4

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clientConfig(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->Ͼ:Ljava/util/List;

    return-object p0
.end method

.method public deviceParameterBlacklist(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᾨ:Ljava/util/List;

    return-object p0
.end method

.method public maliciousApps(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᰛ:Ljava/util/List;

    return-object p0
.end method

.method public trustedAppStores(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->ᇭ:Ljava/util/List;

    return-object p0
.end method
