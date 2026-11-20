.class public Lcom/transistorsoft/locationmanager/util/TSTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/TSTemplate;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    const-string v2, "premature EOF."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/16 v4, 0x25

    if-ne v1, v4, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v4

    if-eq v4, v3, :cond_1

    const/16 v2, 0x3e

    if-ne v4, v2, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-char v2, v4

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    int-to-char v1, v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "VARIABLE_VALUE"

    return-object p0
.end method


# virtual methods
.method public render(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/TSTemplate;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x3c

    if-ne v2, v4, :cond_6

    .line 13
    invoke-virtual {v0}, Ljava/io/StringReader;->read()I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x25

    if-ne v4, v5, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/io/StringReader;->read()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 42
    :goto_1
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v3, 0x3d

    if-ne v5, v3, :cond_4

    .line 43
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/TSTemplate;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto :goto_0

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown template variable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 53
    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    .line 54
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 58
    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    goto :goto_0

    .line 62
    :cond_6
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    goto :goto_0
.end method
