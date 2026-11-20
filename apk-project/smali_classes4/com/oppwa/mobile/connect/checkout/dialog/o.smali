.class Lcom/oppwa/mobile/connect/checkout/dialog/o;
.super Lcom/oppwa/mobile/connect/checkout/dialog/r;
.source "DateInputFormatter.java"


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I


# direct methods
.method constructor <init>(Ljava/lang/Character;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/r;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->d:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->g:I

    .line 5
    const-string p1, ""

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->e:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 23
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 24
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->e:Ljava/lang/String;

    .line 27
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 28
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->f:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/text/Editable;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    add-int/lit8 v0, v2, 0x1

    .line 6
    const-string v1, ""

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/text/Editable;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/text/Editable;)Landroid/text/Editable;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->c(Landroid/text/Editable;)V

    .line 4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->g:I

    if-ge v0, v1, :cond_0

    return-object p1

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->g:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 9
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->b(Ljava/lang/String;)V

    return-object p1
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/o;->f:Ljava/lang/String;

    return-object v0
.end method
