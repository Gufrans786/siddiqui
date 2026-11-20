.class public Lcom/fastimage/svg/SvgModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "SvgModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 19
    const-class p1, Lcom/caverock/androidsvg/SVG;

    const-class p2, Landroid/graphics/drawable/PictureDrawable;

    new-instance v0, Lcom/fastimage/svg/SvgDrawableTranscoder;

    invoke-direct {v0}, Lcom/fastimage/svg/SvgDrawableTranscoder;-><init>()V

    .line 20
    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Ljava/io/InputStream;

    const-class p3, Lcom/caverock/androidsvg/SVG;

    new-instance v0, Lcom/fastimage/svg/SvgDecoder;

    invoke-direct {v0}, Lcom/fastimage/svg/SvgDecoder;-><init>()V

    .line 21
    invoke-virtual {p1, p2, p3, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method
