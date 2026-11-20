.class public final Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectoryServerInfo"
.end annotation


# instance fields
.field public final ᇭ:Ljava/lang/String;

.field public final ᾨ:Ljava/lang/String;

.field public final ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ㆃ:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ᾨ:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ᇭ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ㆃ:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ᾨ:Ljava/lang/String;

    const-string p1, "\n"

    .line 4
    invoke-static {p1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ᇭ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ᇭ:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ᾨ:Ljava/lang/String;

    return-object v0
.end method

.method public getRID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;->ㆃ:Ljava/lang/String;

    return-object v0
.end method
