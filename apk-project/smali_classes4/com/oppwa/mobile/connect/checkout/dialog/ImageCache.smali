.class public Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;
.super Landroid/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

.field private static final c:I

.field private static final d:I


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->c:I

    .line 3
    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->d:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->b:Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    sget v1, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->d:I

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;-><init>(I)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->b:Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    .line 4
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->b:Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a:Ljava/util/Map;

    return-void
.end method

.method protected b(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
