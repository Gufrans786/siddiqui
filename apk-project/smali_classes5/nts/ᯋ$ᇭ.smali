.class public Lnts/ᯋ$ᇭ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ㆃ:Lnts/ⱪ;


# direct methods
.method public constructor <init>(Lnts/ᯋ;Lnts/ⱪ;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lnts/ᯋ$ᇭ;->ㆃ:Lnts/ⱪ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lnts/ᯋ$ᇭ;->ㆃ:Lnts/ⱪ;

    .line 2
    iget-object p1, p1, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lnts/ⲽ;->ᾨ(Z)V
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
