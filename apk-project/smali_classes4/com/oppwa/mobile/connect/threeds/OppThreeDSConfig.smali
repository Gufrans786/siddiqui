.class public Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
.super Ljava/lang/Object;
.source "OppThreeDSConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a:Ljava/util/EnumSet;

    .line 3
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b:I

    .line 4
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    .line 5
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 6
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f:[Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->g(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->h(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h:[Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->i(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b:I

    return p0
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    return-object p0
.end method

.method static synthetic d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/util/EnumSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a:Ljava/util/EnumSet;

    return-object p0
.end method


# virtual methods
.method a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    .line 6
    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a:Ljava/util/EnumSet;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a:Ljava/util/EnumSet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b:I

    iget v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f:[Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h:[Ljava/lang/String;

    .line 13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i:[Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i:[Ljava/lang/String;

    .line 14
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getChallengeUiTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getClientConfigParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDeviceParameterBlacklist()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMaliciousApps()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public getSdkMaxTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b:I

    return v0
.end method

.method public getTrustedAppStores()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getUiCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a:Ljava/util/EnumSet;

    iget v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
