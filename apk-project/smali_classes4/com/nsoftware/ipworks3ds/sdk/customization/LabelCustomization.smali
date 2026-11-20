.class public final Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;
.super Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:I

.field public ዲ:Ljava/lang/String;

.field public ᎊ:Ljava/lang/String;

.field public ᙕ:I

.field public ᛃ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ᡲ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ᰛ:Ljava/lang/String;

.field public ᵑ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;",
            "[I>;"
        }
    .end annotation
.end field

.field public Ὺ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Ⲳ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public て:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ౠ:I

    .line 5
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᙕ:I

    .line 6
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->て:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᡲ:Ljava/util/Map;

    .line 11
    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ὺ:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ⲳ:Ljava/util/Map;

    .line 13
    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᛃ:Ljava/util/Map;

    .line 14
    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᵑ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBackgroundColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᡲ:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHeadingTextAlignment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᙕ:I

    return v0
.end method

.method public getHeadingTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᰛ:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextFontName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ͼ:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextFontSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ౠ:I

    return v0
.end method

.method public getInputLabelTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ዲ:Ljava/lang/String;

    return-object v0
.end method

.method public getInputLabelTextFontName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᎊ:Ljava/lang/String;

    return-object v0
.end method

.method public getInputLabelTextFontSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->て:I

    return v0
.end method

.method public getPadding(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᵑ:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public getTextColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ὺ:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTextFontName(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ⲳ:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTextFontSize(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᛃ:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public setBackgroundColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᡲ:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᡲ:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᡲ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHeadingTextAlignment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᙕ:I

    return-void
.end method

.method public setHeadingTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᰛ:Ljava/lang/String;

    return-void
.end method

.method public setHeadingTextFontName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ͼ:Ljava/lang/String;

    return-void
.end method

.method public setHeadingTextFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(I)V

    .line 2
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ౠ:I

    return-void
.end method

.method public setInputLabelTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ዲ:Ljava/lang/String;

    return-void
.end method

.method public setInputLabelTextFontName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᎊ:Ljava/lang/String;

    return-void
.end method

.method public setInputLabelTextFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(I)V

    .line 2
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->て:I

    return-void
.end method

.method public setPadding(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᵑ:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᵑ:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᵑ:Ljava/util/Map;

    filled-new-array {p2, p3, p4, p5}, [I

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTextColor(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ὺ:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ὺ:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ὺ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTextFontName(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ⲳ:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ⲳ:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->Ⲳ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTextFontSize(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᛃ:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᛃ:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;->ᛃ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
