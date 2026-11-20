.class public final enum Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUGGING:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final enum DEBUG_ENABLED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final enum EMULATOR:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final enum HOOK:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final enum INSTALLED_FROM_UNTRUSTED_STORE:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final enum ROOT:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final enum TAMPERED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

.field public static final synthetic ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v1, "ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->ROOT:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 2
    new-instance v1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v2, "TAMPERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->TAMPERED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 3
    new-instance v2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v3, "INSTALLED_FROM_UNTRUSTED_STORE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->INSTALLED_FROM_UNTRUSTED_STORE:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 4
    new-instance v3, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v4, "HOOK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->HOOK:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 5
    new-instance v4, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v5, "EMULATOR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->EMULATOR:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 6
    new-instance v5, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v6, "DEBUGGING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->DEBUGGING:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 7
    new-instance v6, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    const-string v7, "DEBUG_ENABLED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->DEBUG_ENABLED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    return-object p0
.end method

.method public static values()[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    invoke-virtual {v0}, [Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    return-object v0
.end method
