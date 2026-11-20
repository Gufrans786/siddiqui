.class public Lnts/ᄎ$ㆃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᄎ;->initialize(Landroid/content/Context;Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ㆃ:Lnts/ᄎ;


# direct methods
.method public constructor <init>(Lnts/ᄎ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᄎ$ㆃ;->ㆃ:Lnts/ᄎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x1a

    const/16 v1, 0x4c

    const/16 v2, 0x61

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xe

    const/16 v1, 0x5e

    const/16 v2, 0x7b

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lnts/ᄎ$ㆃ;->ㆃ:Lnts/ᄎ;

    invoke-virtual {p2, p1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x2

    .line 13
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method
