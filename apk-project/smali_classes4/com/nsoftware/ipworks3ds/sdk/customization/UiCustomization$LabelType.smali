.class public final enum Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXPANDABLE_INFO:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum EXPANDABLE_INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum INFO_HEADER:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum INFO_LABEL:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum SELECTION_LIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum WHITELIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum WHY_INFO:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final enum WHY_INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

.field public static final synthetic ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v1, "INFO_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_HEADER:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v1, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v2, "INFO_TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v2, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v3, "INFO_LABEL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->INFO_LABEL:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v3, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v4, "WHITELIST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->WHITELIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v4, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v5, "WHY_INFO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->WHY_INFO:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v5, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v6, "WHY_INFO_TEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->WHY_INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v6, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v7, "EXPANDABLE_INFO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->EXPANDABLE_INFO:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v7, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v8, "EXPANDABLE_INFO_TEXT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->EXPANDABLE_INFO_TEXT:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    new-instance v8, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    const-string v9, "SELECTION_LIST"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->SELECTION_LIST:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    filled-new-array/range {v0 .. v8}, [Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    move-result-object v0

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;
    .locals 1

    .line 1
    const-class v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    return-object p0
.end method

.method public static values()[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->ㆃ:[Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    invoke-virtual {v0}, [Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;

    return-object v0
.end method
