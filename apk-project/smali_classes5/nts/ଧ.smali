.class public Lnts/ଧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᇭ:Ljava/lang/String;

.field public static final ᾨ:[B

.field public static final ㆃ:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lnts/ଧ;->ㆃ:[B

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ଧ;->ᾨ:[B

    .line 30
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 55
    invoke-static {}, Lnts/ଧ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ଧ;->ᇭ:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    const/16 v0, 0xc

    const/16 v1, 0x58

    const/16 v2, 0xe

    .line 57
    invoke-static {v2, v0, v1}, Lnts/ッ;->ᎊ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x52

    const/16 v2, 0x1a

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lnts/ッ;->ᎊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    const/16 v4, 0x26

    invoke-static {v2, v3, v4}, Lnts/ッ;->ᎊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ㆃ()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe

    const/16 v1, 0x78

    const/4 v2, 0x0

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ッ;->ᎊ(III)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
