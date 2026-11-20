.class Lcom/oppwa/mobile/connect/threeds/b;
.super Ljava/lang/Object;
.source "ConfigParamAdapter.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UseSDKProcessingScreen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppwa/mobile/connect/threeds/b;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/EnumSet;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
            ">;)I"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 51
    sget-object v2, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->HTML:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;)",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;

    .line 2
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v1, "5453473256414E58524641464B4832383333000000000000000000000000000000000000000000004333474D424D33440000384B363133583034453956360000"

    invoke-direct {v0, p1, v1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, p0}, Lcom/oppwa/mobile/connect/threeds/b;->a(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    .line 8
    invoke-virtual {v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->build()Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;

    move-result-object p1

    .line 9
    invoke-static {p1, p0}, Lcom/oppwa/mobile/connect/threeds/b;->a(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 19
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getChallengeUiTypes()Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->toInt(Ljava/util/EnumSet;)I

    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getChallengeUiTypes()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Lcom/oppwa/mobile/connect/threeds/b;->a(Ljava/util/EnumSet;)I

    move-result v2

    .line 22
    invoke-static {v2}, Lcom/oppwa/mobile/connect/threeds/b;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceRenderingInterface"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/b;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceRenderingUIType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getSdkMaxTimeout()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SDKMaxTimeout"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p0, "MaskSensitive"

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LogLevel"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object p0, Lcom/oppwa/mobile/connect/threeds/b;->a:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    .line 12
    new-instance v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;

    .line 13
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;->getDsRefId()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;->getDsEncryptCert()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;->getDsCaRootCert()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 1

    .line 35
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/b;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->clientConfig(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;

    .line 36
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getDeviceParameterBlacklist()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getDeviceParameterBlacklist()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->deviceParameterBlacklist(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getTrustedAppStores()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getTrustedAppStores()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->trustedAppStores(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getMaliciousApps()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getMaliciousApps()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->maliciousApps(Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getAppSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;->appSignature(Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;

    return-void
.end method

.method private static a(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 6

    .line 46
    sget-object v0, Lcom/oppwa/mobile/connect/threeds/b;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    invoke-virtual {p1, v3}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getClientConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0, v5, v3, v4}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
