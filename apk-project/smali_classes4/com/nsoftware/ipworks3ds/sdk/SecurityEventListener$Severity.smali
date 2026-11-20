.class public final enum Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HIGH:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

.field public static final enum LOW:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

.field public static final enum MEDIUM:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

.field public static final synthetic ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->LOW:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    .line 2
    new-instance v1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->MEDIUM:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    .line 3
    new-instance v2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    const-string v3, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->HIGH:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;
    .locals 1

    .line 1
    const-class v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    return-object p0
.end method

.method public static values()[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    invoke-virtual {v0}, [Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    return-object v0
.end method
