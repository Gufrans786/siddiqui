.class public Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᇭ:I

    return-void
.end method

.method public static ᾨ(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x23

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 v0, 0x24

    const/16 v1, 0x3b

    const/16 v2, 0x33

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->て(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public getTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFontName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFontSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᇭ:I

    return v0
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᾨ:Ljava/lang/String;

    return-void
.end method

.method public setTextFontName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ:Ljava/lang/String;

    return-void
.end method

.method public setTextFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ㆃ(I)V

    .line 2
    iput p1, p0, Lcom/nsoftware/ipworks3ds/sdk/customization/Customization;->ᇭ:I

    return-void
.end method

.method public ㆃ(I)V
    .locals 3

    if-ltz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 v0, 0x1b

    const/16 v1, 0x52

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->て(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 v0, 0x18

    const/16 v1, 0x46

    const/16 v2, 0x1b

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->て(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
