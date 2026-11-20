.class public Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3183"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$\u3183;",
        ">;"
    }
.end annotation


# instance fields
.field public final ᇭ:Ljava/lang/String;

.field public final ᾨ:Ljava/lang/String;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᇭ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;)I

    move-result p1

    return p1
.end method

.method public ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    iget-object p1, p1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public ㆃ(Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
