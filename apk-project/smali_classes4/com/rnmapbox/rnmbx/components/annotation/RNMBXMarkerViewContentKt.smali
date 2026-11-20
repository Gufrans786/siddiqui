.class public final Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContentKt;
.super Ljava/lang/Object;
.source "RNMBXMarkerViewContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "allowRenderingOutside",
        "",
        "Landroid/view/ViewGroup;",
        "rnmapbox_maps_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$allowRenderingOutside(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContentKt;->allowRenderingOutside(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static final allowRenderingOutside(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method
