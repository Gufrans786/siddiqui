.class Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;
.super Landroidx/activity/OnBackPressedCallback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;

    iget-boolean v1, v0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d:Z

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;

    iget-boolean v1, v0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->e:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->b:Lcom/oppwa/mobile/connect/checkout/dialog/j;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->f()V

    return-void

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseActivity;->d()V

    return-void
.end method
