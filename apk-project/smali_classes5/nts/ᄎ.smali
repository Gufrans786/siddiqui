.class public Lnts/ᄎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ᴨ;


# static fields
.field public static final ᎊ:Lnts/ᄎ;

.field public static final ᛃ:Ljava/lang/String;

.field public static final ᡲ:Ljava/nio/charset/Charset;

.field public static final Ὺ:Ljava/lang/String;

.field public static final Ⲳ:Ljava/lang/String;


# instance fields
.field public Ͼ:Lnts/Ͼ;

.field public ౠ:Lnts/ᙕ;

.field public ᇭ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/Warning;",
            ">;"
        }
    .end annotation
.end field

.field public ዲ:Z

.field public ᙕ:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;

.field public ᰛ:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

.field public ᾨ:Lnts/ⱪ;

.field public て:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnts/ᄎ;

    invoke-direct {v0}, Lnts/ᄎ;-><init>()V

    sput-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lnts/ᄎ;->ᡲ:Ljava/nio/charset/Charset;

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 10
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᄎ;->Ὺ:Ljava/lang/String;

    const/16 v0, 0xa

    const/16 v1, 0x79

    .line 11
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᄎ;->Ⲳ:Ljava/lang/String;

    const/16 v0, 0x8

    const/16 v1, 0x50

    const/16 v2, 0x11

    .line 12
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ᄎ;->ᛃ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lnts/ᄎ;->ዲ:Z

    return-void
.end method


# virtual methods
.method public cleanup(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/ᄎ;->ㆃ()V

    .line 2
    sget-object p1, Lnts/ᯋ;->ᙕ:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lnts/ᄎ;->ᰛ:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 4
    iput-object p1, p0, Lnts/ᄎ;->ᇭ:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    .line 6
    iget-object v1, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz v1, :cond_0

    const/16 v2, 0x13

    const/16 v3, 0x23

    const/16 v4, 0x98

    .line 8
    :try_start_0
    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lnts/ⱪ;->ㆃ()V

    .line 16
    iget-object v1, v0, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 19
    iget-object v4, v0, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnts/ᠧ;

    invoke-static {v4}, Lnts/Ⱝ;->ㆃ(Lnts/ᠧ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 22
    iput-object p1, v0, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    .line 25
    :cond_2
    iput-object p1, v0, Lnts/ⱪ;->ᰛ:Lnts/ᵑ;

    .line 26
    iput-object p1, v0, Lnts/ⱪ;->ᇭ:Lnts/ᙕ;

    .line 27
    iput-object p1, v0, Lnts/ⱪ;->Ͼ:Ljava/lang/String;

    .line 28
    iput-object p1, v0, Lnts/ⱪ;->ᙕ:Landroid/content/Context;

    .line 29
    iput-boolean v2, p0, Lnts/ᄎ;->ዲ:Z

    .line 30
    iput-object p1, p0, Lnts/ᄎ;->て:Landroid/content/Context;

    return-void
.end method

.method public createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/Transaction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/ᄎ;->ㆃ()V

    .line 4
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    .line 5
    invoke-virtual {v0}, Lnts/ⱪ;->ᾨ()V

    .line 8
    :try_start_0
    iget-object v1, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v1}, Lnts/ⲽ;->ᙕ()V

    .line 9
    iget-object v1, v0, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 10
    iget-object v1, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v1}, Lnts/ⲽ;->ౠ()Lnts/ਜ਼;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lnts/ⅿ;->clear()V

    .line 13
    iget-object v2, v0, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    invoke-virtual {v1, v2}, Lnts/ਜ਼;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_0
    iget-object v1, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    iget-object v0, v0, Lnts/ⱪ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnts/ⲽ;->Ͼ(Ljava/lang/String;)V
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance v0, Lnts/ᾤ;

    invoke-direct {v0, p1, p2}, Lnts/ᾤ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lnts/せ;

    invoke-direct {p2, p1}, Lnts/せ;-><init>(Lnts/ᓬ;)V

    throw p2
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/ᄎ;->ㆃ()V

    .line 2
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    .line 3
    invoke-virtual {v0}, Lnts/ⱪ;->ᾨ()V

    .line 4
    iget-object v0, v0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v0}, Lnts/ⲽ;->ᇭ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/Warning;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/ᄎ;->ㆃ()V

    .line 2
    iget-object v0, p0, Lnts/ᄎ;->ᇭ:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public initialize(Landroid/content/Context;Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKAlreadyInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lnts/ᄎ;->ዲ:Z

    if-nez p3, :cond_d

    if-eqz p2, :cond_c

    if-eqz p1, :cond_b

    .line 10
    iput-object p1, p0, Lnts/ᄎ;->て:Landroid/content/Context;

    .line 11
    iput-object p6, p0, Lnts/ᄎ;->ᙕ:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;

    .line 12
    new-instance p3, Lnts/ᙕ;

    invoke-direct {p3, p2}, Lnts/ᙕ;-><init>(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;)V

    iput-object p3, p0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    .line 13
    iput-object p4, p0, Lnts/ᄎ;->ᰛ:Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    .line 14
    new-instance p2, Lnts/ⱪ;

    iget-object p3, p0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    invoke-direct {p2, p1, p5, p3}, Lnts/ⱪ;-><init>(Landroid/content/Context;Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;Lnts/ᙕ;)V

    iput-object p2, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    .line 16
    iget-object p2, p0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    invoke-static {p1, p2}, Lnts/Ἂ;->ㆃ(Landroid/content/Context;Lnts/ᙕ;)Lnts/Ἂ;

    move-result-object p2

    .line 17
    iget-object p2, p2, Lnts/Ἂ;->ㆃ:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lnts/ᄎ;->ᇭ:Ljava/util/List;

    const/4 p3, 0x2

    const/4 p4, 0x1

    const/4 p5, 0x0

    const/4 p6, 0x3

    if-nez p2, :cond_0

    goto :goto_2

    .line 21
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v0, p5

    :goto_0
    if-ge v0, p2, :cond_5

    .line 23
    iget-object v1, p0, Lnts/ᄎ;->ᇭ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nsoftware/ipworks3ds/sdk/Warning;

    invoke-interface {v1}, Lcom/nsoftware/ipworks3ds/sdk/Warning;->getID()Ljava/lang/String;

    move-result-object v1

    .line 24
    sget-object v2, Lnts/Ἂ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1, p6, p4}, Lnts/ᄎ;->ㆃ(II)V

    goto :goto_1

    .line 26
    :cond_1
    sget-object v2, Lnts/Ἂ;->ᇭ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1, p6, p3}, Lnts/ᄎ;->ㆃ(II)V

    goto :goto_1

    .line 28
    :cond_2
    sget-object v2, Lnts/Ἂ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/4 v2, 0x5

    invoke-virtual {v1, p6, v2}, Lnts/ᄎ;->ㆃ(II)V

    goto :goto_1

    .line 30
    :cond_3
    sget-object v2, Lnts/Ἂ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/4 v2, 0x7

    invoke-virtual {v1, p3, v2}, Lnts/ᄎ;->ㆃ(II)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_5
    :goto_2
    iget-object p2, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    iget-object v0, p0, Lnts/ᄎ;->ᇭ:Ljava/util/List;

    .line 33
    invoke-virtual {p2}, Lnts/ⱪ;->ᾨ()V

    .line 34
    new-instance v1, Lnts/ᛃ;

    iget-object v2, p2, Lnts/ⱪ;->ᇭ:Lnts/ᙕ;

    iget-object v3, p2, Lnts/ⱪ;->Ͼ:Ljava/lang/String;

    iget-object v4, p2, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 35
    invoke-virtual {v4}, Lnts/ⲽ;->ᇭ()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lnts/ᛃ;-><init>(Landroid/content/Context;Lnts/ᙕ;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v2, v1, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    if-eqz v2, :cond_a

    .line 41
    iget-object p5, v1, Lnts/ᛃ;->ᇭ:Ljava/util/ArrayList;

    if-nez p5, :cond_6

    iget-object p5, v1, Lnts/ᛃ;->ᾨ:Lnts/ᙕ;

    if-eqz p5, :cond_6

    .line 42
    iget-object p5, p5, Lnts/ᙕ;->ᙕ:Ljava/util/List;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lnts/ᛃ;->ᇭ:Ljava/util/ArrayList;

    .line 44
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    iget-object v3, v1, Lnts/ᛃ;->ᇭ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 49
    :cond_6
    invoke-virtual {v1, p1}, Lnts/ᛃ;->ᰛ(Ljava/util/List;)V

    if-nez v0, :cond_7

    goto :goto_5

    .line 50
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nsoftware/ipworks3ds/sdk/Warning;

    .line 51
    new-instance v1, Lnts/ᠧ;

    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/Warning;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p3, p6}, Lnts/ᠧ;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 52
    :cond_8
    :goto_5
    iput-object p1, p2, Lnts/ⱪ;->ᾨ:Ljava/util/List;

    .line 53
    iget-object p1, p0, Lnts/ᄎ;->ౠ:Lnts/ᙕ;

    .line 54
    iget-boolean p1, p1, Lnts/ᙕ;->ᰛ:Z

    if-eqz p1, :cond_9

    .line 55
    new-instance p1, Lnts/ᄎ$ㆃ;

    invoke-direct {p1, p0}, Lnts/ᄎ$ㆃ;-><init>(Lnts/ᄎ;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 75
    :cond_9
    iput-boolean p4, p0, Lnts/ᄎ;->ዲ:Z

    return-void

    .line 76
    :cond_a
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x1a

    invoke-static {p5, p2, p5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_b
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x25

    const/16 p3, 0x72

    const/16 p4, 0x3c

    invoke-static {p4, p2, p3}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_c
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x23

    const/16 p3, 0x12

    const/16 p4, 0x19

    invoke-static {p4, p2, p3}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_d
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKAlreadyInitializedException;

    invoke-direct {p1}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKAlreadyInitializedException;-><init>()V

    throw p1
.end method

.method public ᇭ()Lnts/ⱪ;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/ᄎ;->ㆃ()V

    .line 2
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    return-object v0
.end method

.method public ᇭ(Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lnts/ᄎ;->Ⲳ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ᾨ()Lnts/Ͼ;
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᄎ;->Ͼ:Lnts/Ͼ;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnts/Ͼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnts/Ͼ;-><init>(Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;)V

    iput-object v0, p0, Lnts/ᄎ;->Ͼ:Lnts/Ͼ;

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ᄎ;->Ͼ:Lnts/Ͼ;

    return-object v0
.end method

.method public ᾨ(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    if-eqz v0, :cond_0

    .line 6
    sget-object v1, Lnts/ᄎ;->Ὺ:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ㆃ()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnts/ᄎ;->ዲ:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;

    const/16 v1, 0x1f

    const/16 v2, 0x5a

    const/16 v3, 0x89

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ㆃ(II)V
    .locals 2

    .line 9
    iget-object v0, p0, Lnts/ᄎ;->ᙕ:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 10
    sget-object p1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->HIGH:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->MEDIUM:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;->LOW:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 13
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->DEBUG_ENABLED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 14
    :pswitch_0
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->DEBUG_ENABLED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 15
    :pswitch_1
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->DEBUGGING:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 16
    :pswitch_2
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->EMULATOR:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 17
    :pswitch_3
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->HOOK:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 18
    :pswitch_4
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->INSTALLED_FROM_UNTRUSTED_STORE:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 19
    :pswitch_5
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->TAMPERED:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    goto :goto_1

    .line 20
    :pswitch_6
    sget-object p2, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;->ROOT:Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;

    .line 21
    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;->alarm(Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$Severity;Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener$SecurityEvent;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    if-eqz v0, :cond_0

    .line 8
    sget-object v1, Lnts/ᄎ;->ᛃ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/ᓬ;)V
    .locals 3

    const-string v0, ""

    .line 3
    invoke-static {v0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget v1, p1, Lnts/ᓬ;->ㆃ:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lnts/ᄎ;->ᾨ()Lnts/Ͼ;

    move-result-object v1

    new-instance v2, Lnts/ཞ;

    invoke-direct {v2, v0, p1}, Lnts/ཞ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnts/Ͼ;->runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V

    return-void
.end method
