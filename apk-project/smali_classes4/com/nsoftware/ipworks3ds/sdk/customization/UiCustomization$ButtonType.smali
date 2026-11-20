.class public final enum Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

.field public static final enum CONTINUE:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

.field public static final enum NEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

.field public static final enum RESEND:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

.field public static final enum SUBMIT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

.field public static final synthetic ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    const-string v1, "SUBMIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->SUBMIT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    new-instance v1, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    const-string v2, "CONTINUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->CONTINUE:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    new-instance v2, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    const-string v3, "NEXT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->NEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    new-instance v3, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    const-string v4, "CANCEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->CANCEL:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    new-instance v4, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    const-string v5, "RESEND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->RESEND:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;
    .locals 1

    .line 1
    const-class v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    invoke-virtual {v0}, [Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;

    return-object v0
.end method
