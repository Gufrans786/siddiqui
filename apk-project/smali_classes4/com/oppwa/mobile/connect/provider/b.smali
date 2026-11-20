.class final enum Lcom/oppwa/mobile/connect/provider/b;
.super Ljava/lang/Enum;
.source "BaseUrlMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/provider/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/oppwa/mobile/connect/provider/b;

.field public static final enum e:Lcom/oppwa/mobile/connect/provider/b;

.field public static final enum f:Lcom/oppwa/mobile/connect/provider/b;

.field public static final enum g:Lcom/oppwa/mobile/connect/provider/b;

.field private static final synthetic h:[Lcom/oppwa/mobile/connect/provider/b;


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field private final b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/b;

    sget-object v3, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    sget-object v4, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    const/4 v2, 0x0

    const-string v5, "https://oppwa.com"

    const-string v1, "LIVE_DEFAULT"

    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/b;-><init>(Ljava/lang/String;ILcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/b;->d:Lcom/oppwa/mobile/connect/provider/b;

    move-object v8, v4

    .line 2
    new-instance v4, Lcom/oppwa/mobile/connect/provider/b;

    sget-object v7, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const/4 v6, 0x1

    const-string v9, "https://test.oppwa.com"

    const-string v5, "TEST_DEFAULT"

    invoke-direct/range {v4 .. v9}, Lcom/oppwa/mobile/connect/provider/b;-><init>(Ljava/lang/String;ILcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)V

    move-object v12, v7

    move-object v7, v4

    sput-object v7, Lcom/oppwa/mobile/connect/provider/b;->e:Lcom/oppwa/mobile/connect/provider/b;

    .line 4
    new-instance v1, Lcom/oppwa/mobile/connect/provider/b;

    sget-object v5, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->EU:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v4, v3

    const/4 v3, 0x2

    const-string v6, "https://eu-prod.oppwa.com"

    const-string v2, "LIVE_EU"

    invoke-direct/range {v1 .. v6}, Lcom/oppwa/mobile/connect/provider/b;-><init>(Ljava/lang/String;ILcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)V

    sput-object v1, Lcom/oppwa/mobile/connect/provider/b;->f:Lcom/oppwa/mobile/connect/provider/b;

    .line 5
    new-instance v9, Lcom/oppwa/mobile/connect/provider/b;

    const/4 v11, 0x3

    const-string v14, "https://eu-test.oppwa.com"

    const-string v10, "TEST_EU"

    move-object v13, v5

    invoke-direct/range {v9 .. v14}, Lcom/oppwa/mobile/connect/provider/b;-><init>(Ljava/lang/String;ILcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)V

    sput-object v9, Lcom/oppwa/mobile/connect/provider/b;->g:Lcom/oppwa/mobile/connect/provider/b;

    .line 6
    filled-new-array {v0, v7, v1, v9}, [Lcom/oppwa/mobile/connect/provider/b;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/provider/b;->h:[Lcom/oppwa/mobile/connect/provider/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/b;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 3
    iput-object p4, p0, Lcom/oppwa/mobile/connect/provider/b;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 4
    iput-object p5, p0, Lcom/oppwa/mobile/connect/provider/b;->c:Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/b;->values()[Lcom/oppwa/mobile/connect/provider/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/oppwa/mobile/connect/provider/b;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne v4, p0, :cond_0

    iget-object v4, v3, Lcom/oppwa/mobile/connect/provider/b;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    if-ne v4, p1, :cond_0

    .line 4
    iget-object p0, v3, Lcom/oppwa/mobile/connect/provider/b;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lcom/oppwa/mobile/connect/provider/b;->d:Lcom/oppwa/mobile/connect/provider/b;

    iget-object p0, p0, Lcom/oppwa/mobile/connect/provider/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/b;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/provider/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/provider/b;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/provider/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/b;->h:[Lcom/oppwa/mobile/connect/provider/b;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/provider/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/provider/b;

    return-object v0
.end method
