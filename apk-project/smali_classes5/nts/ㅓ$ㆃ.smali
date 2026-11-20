.class public Lnts/ㅓ$ㆃ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ㅓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3183"
.end annotation


# instance fields
.field public ᾨ:Ljava/io/StringWriter;

.field public ㆃ:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lnts/ㅓ$ㆃ;->ᾨ:Ljava/io/StringWriter;

    .line 4
    iput-object p1, p0, Lnts/ㅓ$ㆃ;->ㆃ:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnts/ㅓ$ㆃ;->ㆃ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lnts/ㅓ$ㆃ;->ᾨ:Ljava/io/StringWriter;

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
