.class Lcom/oppwa/mobile/connect/checkout/dialog/x;
.super Lcom/oppwa/mobile/connect/checkout/dialog/r;
.source "NumberInputFormatter.java"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Z


# direct methods
.method constructor <init>(Ljava/lang/Character;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/r;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->f:Z

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 8
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->e:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    const-string p1, "#### #### #### #### ###"

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->f:Z

    return-void
.end method

.method protected b(Landroid/text/Editable;)Landroid/text/Editable;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->stringHasNonstandardDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 8
    iput-boolean v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    add-int/lit8 v2, v1, 0x1

    .line 9
    const-string v3, ""

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 14
    iput-boolean v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    .line 15
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/x;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/2addr v1, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method
