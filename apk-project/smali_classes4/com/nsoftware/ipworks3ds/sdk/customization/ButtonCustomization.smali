.class public final Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;
.super Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᙕ:[I

.field public ᰛ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->Ͼ:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ౠ:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->Ͼ:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ౠ:I

    return v0
.end method

.method public getPadding()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ᙕ:[I

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
    invoke-static {p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ᰛ:Ljava/lang/String;

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
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->Ͼ:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ౠ:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ᙕ:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ᙕ:[I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;->ᙕ:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 5
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 6
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 7
    aput p4, v0, p1

    return-void
.end method
