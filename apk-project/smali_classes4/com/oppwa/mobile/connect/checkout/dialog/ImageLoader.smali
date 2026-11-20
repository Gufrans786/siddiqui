.class Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;,
        Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.ImageLoader"

.field private static f:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;


# instance fields
.field private a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->d:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 12
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xfa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 15
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x0

    .line 17
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    .line 18
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {v3, v6, v2, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 21
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v4

    int-to-float v4, v5

    .line 26
    invoke-virtual {v1, p1, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;
    .locals 2

    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->f:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->f:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    .line 6
    :cond_0
    sget-object p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->f:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->g(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->getImagesRequestMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/ImageDetail;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/ImageDetail;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/oppwa/mobile/connect/utils/TaskRunner;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/utils/TaskRunner;-><init>()V

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/oppwa/mobile/connect/utils/TaskRunner;->executeAsync(Lcom/oppwa/mobile/connect/utils/BaseTask;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;

    .line 2
    invoke-interface {v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;->onImageLoaded(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method a(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->addValues(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V

    :cond_1
    return-void
.end method

.method b(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/p;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->f(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->getImagesRequestMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    .line 3
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->getImagesRequestMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a:Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->getImagesRequestMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/payment/ImageDetail;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/ImageDetail;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
