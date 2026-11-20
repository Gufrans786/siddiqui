.class public Lnts/ᙕ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᚹ:Ljava/lang/String;

.field public static final ᯚ:Ljava/lang/String;

.field public static final ᵑ:Ljava/lang/String;

.field public static final ⱪ:Ljava/lang/String;

.field public static final ⴗ:Ljava/lang/String;

.field public static final せ:Ljava/lang/String;


# instance fields
.field public final Ͼ:Z

.field public final ౠ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᇭ:Z

.field public final ዲ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᎊ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᙕ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᛃ:Ljava/lang/String;

.field public final ᡲ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᰛ:Z

.field public final ᾨ:Z

.field public final Ὺ:Ljava/lang/String;

.field public final Ⲳ:Ljava/lang/String;

.field public final て:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ㆃ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x26

    const/4 v1, 0x0

    const/16 v2, 0x29

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᙕ;->ᵑ:Ljava/lang/String;

    const/16 v0, 0x1e

    const/16 v1, 0x44

    .line 2
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᙕ;->ⴗ:Ljava/lang/String;

    const/16 v0, 0x16

    const/16 v1, 0x2d

    const/16 v2, 0x47

    .line 3
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᙕ;->ᚹ:Ljava/lang/String;

    const/16 v0, 0x1a

    const/16 v1, 0x4f

    const/16 v2, 0x5d

    .line 4
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᙕ;->せ:Ljava/lang/String;

    const/16 v0, 0x1d

    const/16 v1, 0x70

    const/16 v2, 0x77

    .line 5
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᙕ;->ⱪ:Ljava/lang/String;

    const/16 v0, 0x10

    const/16 v1, 0x64

    const/16 v2, 0x94

    .line 6
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᙕ;->ᯚ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnts/ᙕ;->ᵑ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v2}, Lnts/ᙕ;->ㆃ(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnts/ᙕ;->ᇭ:Z

    .line 7
    sget-object v0, Lnts/ᙕ;->ⴗ:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, v2}, Lnts/ᙕ;->ㆃ(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnts/ᙕ;->ㆃ:Z

    .line 12
    sget-object v0, Lnts/ᙕ;->ᚹ:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 14
    invoke-virtual {p0, v0, v3}, Lnts/ᙕ;->ㆃ(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnts/ᙕ;->ᾨ:Z

    .line 17
    sget-object v0, Lnts/ᙕ;->せ:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, v2}, Lnts/ᙕ;->ㆃ(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnts/ᙕ;->ᰛ:Z

    .line 22
    sget-object v0, Lnts/ᙕ;->ⱪ:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0, v3}, Lnts/ᙕ;->ㆃ(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnts/ᙕ;->Ͼ:Z

    .line 27
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_CLIENT_CONFIG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamNamesInGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->ౠ:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DIRECTORY_SERVER_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getGroup(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->て:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DIRECTORY_SERVER_CA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getGroup(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->ዲ:Ljava/util/Map;

    .line 30
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_DEVICE_PARAMETER_BLACK_LIST:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamNamesInGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->ᙕ:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_TRUSTED_APP_STORES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamNamesInGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->ᎊ:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->GROUP_MALICIOUS_APPS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamNamesInGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->ᡲ:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->RUNTIME_LICENSE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->ᛃ:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->APP_SIGNATURE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->Ὺ:Ljava/lang/String;

    .line 36
    sget-object v0, Lnts/ᙕ;->ᯚ:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnts/ᙕ;->Ⲳ:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->APP_SHA256_HASH_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ㆃ(Ljava/lang/String;Z)Z
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0xa4

    .line 3
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const/16 v1, 0x2b

    const/16 v2, 0xa8

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    const/16 v1, 0x53

    const/16 v2, 0xab

    .line 5
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ⲳ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return p2
.end method
