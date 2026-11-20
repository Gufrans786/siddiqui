.class Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$a;
.super Ljava/lang/Object;
.source "InputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;->a(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
