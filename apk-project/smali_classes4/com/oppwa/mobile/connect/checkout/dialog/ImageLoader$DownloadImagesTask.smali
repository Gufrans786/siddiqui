.class public Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;
.super Lcom/oppwa/mobile/connect/utils/BaseTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppwa/mobile/connect/utils/BaseTask<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field final synthetic d:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->d:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/utils/BaseTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->b:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->a:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/utils/BaseTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/p;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->d:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->getInstance()Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->d:Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$DownloadImagesTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
