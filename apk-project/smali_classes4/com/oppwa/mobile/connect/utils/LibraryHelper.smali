.class public Lcom/oppwa/mobile/connect/utils/LibraryHelper;
.super Ljava/lang/Object;
.source "LibraryHelper.java"


# static fields
.field public static isAlipayAvailable:Z

.field public static isCardIOAvailable:Z

.field public static isIovationAvailable:Z

.field public static isKlarnaAvailable:Z

.field public static isPlayServicesBaseAvailable:Z

.field public static isPlayServicesWalletAvailable:Z

.field public static isThreeDS2Available:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->f:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesWalletAvailable:Z

    .line 2
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->e:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesBaseAvailable:Z

    .line 3
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->c:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isAlipayAvailable:Z

    .line 4
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->d:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isCardIOAvailable:Z

    .line 5
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->g:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isIovationAvailable:Z

    .line 6
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->i:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isThreeDS2Available:Z

    .line 7
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->h:Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isKlarnaAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/oppwa/mobile/connect/utils/a;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return-object v1

    .line 10
    :cond_0
    invoke-static {}, Lio/card/payment/CardIOActivity;->sdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    new-instance p0, Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static a(Lcom/oppwa/mobile/connect/utils/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/a;->b()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getLogLibrariesInfo(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/Connect;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "\n\nLibraries configuration:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/a;->values()[Lcom/oppwa/mobile/connect/utils/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 8
    invoke-static {v4, p0}, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->a(Lcom/oppwa/mobile/connect/utils/a;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->a(Lcom/oppwa/mobile/connect/utils/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
