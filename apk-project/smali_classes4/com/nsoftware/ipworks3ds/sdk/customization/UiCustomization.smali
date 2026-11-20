.class public final Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$LabelType;,
        Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;
    }
.end annotation


# instance fields
.field public ᇭ:Ljava/lang/String;

.field public ᰛ:I

.field public final ᾨ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;",
            ">;",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;",
            ">;"
        }
    .end annotation
.end field

.field public final ㆃ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;",
            "Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᇭ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᰛ:I

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᇭ:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;)Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x4c

    const/16 v2, 0x44

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ዲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;

    invoke-direct {v0}, Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getInformationZoneIconPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᰛ:I

    return v0
.end method

.method public getLabelCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v1, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;

    invoke-direct {v0}, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v2, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getTextBoxCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v1, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;

    invoke-direct {v0}, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v2, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getToolbarCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v1, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;

    invoke-direct {v0}, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v2, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᇭ:Ljava/lang/String;

    return-void
.end method

.method public setButtonCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/ButtonCustomization;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization$ButtonType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x7e

    const/4 v2, 0x0

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ዲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInformationZoneIconPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᰛ:I

    return-void
.end method

.method public setLabelCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0x12

    const/16 v1, 0x26

    const/16 v2, 0x1e

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ዲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v1, Lcom/nsoftware/ipworks3ds/sdk/customization/LabelCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTextBoxCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0x14

    const/16 v1, 0x6d

    const/16 v2, 0x30

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ዲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v1, Lcom/nsoftware/ipworks3ds/sdk/customization/TextBoxCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setToolbarCustomization(Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0x14

    const/16 v1, 0x52

    const/16 v2, 0xa

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ዲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ㆃ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;->ᾨ:Ljava/util/Map;

    const-class v1, Lcom/nsoftware/ipworks3ds/sdk/customization/ToolbarCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ㆃ(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    invoke-static {p1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x12

    const/16 v1, 0x23

    const/16 v2, 0x4e

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ዲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
