.class public Lnts/ⲽ$ᾨ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ⲽ;->ౠ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ㆃ:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Lnts/ⲽ;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lnts/ⲽ$ᾨ;->ㆃ:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⲽ$ᾨ;->ㆃ:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
