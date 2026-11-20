.class public final Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;
.super Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᰛ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->Ͼ:I

    .line 4
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->ౠ:I

    return-void
.end method


# virtual methods
.method public getBorderColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->Ͼ:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->ౠ:I

    return v0
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->ᰛ:Ljava/lang/String;

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(I)V

    .line 2
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->Ͼ:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(I)V

    .line 2
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;->ౠ:I

    return-void
.end method
