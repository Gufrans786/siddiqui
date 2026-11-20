.class Lcom/oppwa/mobile/connect/threeds/f$a;
.super Ljava/lang/Object;
.source "SchemeConfigCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/f$a;->a:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/f$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/threeds/f$a;

    .line 6
    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/f$a;->a:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/threeds/f$a;->a:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/f$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/threeds/f$a;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/f$a;->a:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/f$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
