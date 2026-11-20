.class public final Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;
.super Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:Ljava/lang/String;

.field public ᰛ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;->ౠ:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;->Ͼ:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;->ᰛ:Ljava/lang/String;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;->ౠ:Ljava/lang/String;

    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;->Ͼ:Ljava/lang/String;

    return-void
.end method
