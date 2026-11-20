.class Lcom/oppwa/mobile/connect/threeds/f;
.super Ljava/lang/Object;
.source "SchemeConfigCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/threeds/f$a;
    }
.end annotation


# static fields
.field private static b:Lcom/oppwa/mobile/connect/threeds/f;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oppwa/mobile/connect/threeds/f$a;",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/f;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/threeds/f$a;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static a()Lcom/oppwa/mobile/connect/threeds/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/threeds/f;->b:Lcom/oppwa/mobile/connect/threeds/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/f;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/threeds/f;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/threeds/f;->b:Lcom/oppwa/mobile/connect/threeds/f;

    .line 5
    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/g;->a(Lcom/oppwa/mobile/connect/threeds/f;)V

    .line 7
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/threeds/f;->b:Lcom/oppwa/mobile/connect/threeds/f;

    return-object v0
.end method


# virtual methods
.method a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;
    .locals 1

    .line 10
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/f$a;

    invoke-direct {v0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/f$a;-><init>(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/threeds/f;->a(Lcom/oppwa/mobile/connect/threeds/f$a;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/SchemeConfig;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/f$a;

    invoke-direct {v0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/f$a;-><init>(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/f;->a:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
