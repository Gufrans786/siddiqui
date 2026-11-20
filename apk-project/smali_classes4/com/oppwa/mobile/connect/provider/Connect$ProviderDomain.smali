.class public final enum Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
.super Ljava/lang/Enum;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/provider/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProviderDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

.field public static final enum EU:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    const-string v2, "EU"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->EU:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 7
    filled-new-array {v0, v1}, [Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->a:[Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->a:[Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-object v0
.end method
