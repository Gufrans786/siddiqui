.class public Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
.super Ljava/lang/Object;
.source "OppThreeDSConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->a:Ljava/util/EnumSet;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->b:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-class v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->a:Ljava/util/EnumSet;

    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->b:I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->c:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 25
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->i(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->a:Ljava/util/EnumSet;

    .line 26
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)I

    move-result v0

    iput v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->b:I

    .line 27
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->c:Ljava/util/HashMap;

    .line 28
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 29
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->e:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->f:[Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->g:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->g(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->h:[Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->h(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->i:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/util/EnumSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    return-object p0
.end method

.method static synthetic e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->f:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->i:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addClientConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;-><init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;)V

    return-object v0
.end method

.method public setAppSignature(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setChallengeUiTypes(Ljava/util/EnumSet;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
            ">;)",
            "Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public setDeviceParameterBlacklist([Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setMaliciousApps([Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->i:[Ljava/lang/String;

    return-object p0
.end method

.method public setSdkMaxTimeout(I)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->b:I

    return-object p0
.end method

.method public setTrustedAppStores([Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public setUiCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->d:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    return-object p0
.end method
