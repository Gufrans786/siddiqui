.class public final enum Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
.super Ljava/lang/Enum;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/provider/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProviderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field public static final enum TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const-string v1, "LIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const-string v2, "TEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 3
    filled-new-array {v0, v1}, [Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->a:[Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->a:[Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object v0
.end method
