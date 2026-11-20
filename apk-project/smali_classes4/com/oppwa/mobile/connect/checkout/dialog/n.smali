.class Lcom/oppwa/mobile/connect/checkout/dialog/n;
.super Landroid/text/style/URLSpan;
.source "CustomTabsURLSpan.java"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/n;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/n;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
