.class Lcom/oppwa/mobile/connect/provider/g;
.super Ljava/lang/Object;
.source "ThreeDSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/provider/g$c;
    }
.end annotation


# instance fields
.field private a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

.field private d:Landroid/content/Context;

.field private e:Lcom/oppwa/mobile/connect/provider/g$c;

.field private f:Ljava/lang/String;

.field private g:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/provider/g;Lcom/oppwa/mobile/connect/provider/g$c;)Lcom/oppwa/mobile/connect/provider/g$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    return-object p1
.end method

.method private a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;
    .locals 1

    .line 59
    new-instance v0, Lcom/oppwa/mobile/connect/provider/g$a;

    invoke-direct {v0, p0, p1}, Lcom/oppwa/mobile/connect/provider/g$a;-><init>(Lcom/oppwa/mobile/connect/provider/g;Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/g;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/logs/threeds.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 143
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get threeds events from log file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->b(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/provider/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/g;->e()V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/provider/g;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->b:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialization requested with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {v1, p2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->setConfig(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/g$b;

    invoke-direct {v1, p0, v0}, Lcom/oppwa/mobile/connect/provider/g$b;-><init>(Lcom/oppwa/mobile/connect/provider/g;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p2, v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->setInitCallback(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;)V

    .line 94
    :try_start_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/g;->g:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;->getByName(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    move-result-object p2

    .line 95
    sget-object v1, Lcom/oppwa/mobile/connect/provider/g$c;->b:Lcom/oppwa/mobile/connect/provider/g$c;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 97
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/g;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->initialize(Landroid/content/Context;Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/util/List;)V

    .line 99
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 102
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string p2, "OppThreeDSService initialization timed out."

    .line 104
    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
    :try_end_0
    .catch Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    sget-object p2, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 115
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getUnexpectedExceptionError(Ljava/lang/Exception;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2

    :catch_1
    move-exception p1

    .line 116
    sget-object p2, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 117
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-virtual {p1}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 123
    throw p1
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/provider/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/g;->f()V

    return-void
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/provider/g;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreeDS2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->d:Lcom/oppwa/mobile/connect/provider/g$c;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->getPaymentBrands()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialized externally with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/g;->f()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreeDS2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    const-string v0, "CRes"

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private f()V
    .locals 3

    const-string v0, "Initialized with "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->getNsoftwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->unmaskNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get n-software version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    const-string v0, "SW"

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;
    .locals 2

    const-string v0, "Create transaction for "

    .line 17
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with protocol version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {v0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "Trying create transaction, but service is not initialized"

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->b(Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    return-object p1
.end method

.method a()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/g;->g()V

    .line 32
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->close()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    sget-object v1, Lcom/oppwa/mobile/connect/provider/g$c;->d:Lcom/oppwa/mobile/connect/provider/g$c;

    if-eq v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->cleanUp()V

    .line 41
    const-string v0, "Service cleaned up"

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V

    .line 44
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/util/List;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->d:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/g;->f:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/g;->g:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 8
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    if-nez p1, :cond_0

    .line 9
    invoke-static {}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->getInstance()Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->e:Lcom/oppwa/mobile/connect/provider/g$c;

    sget-object p2, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    if-ne p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/g;->c()V

    return-void

    .line 16
    :cond_1
    invoke-direct {p0, p4, p5}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/util/List;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    :cond_2
    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    .line 48
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p2, p3, p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->doChallenge(Landroid/app/Activity;Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;)V

    .line 54
    const-string p1, "Challenge started"

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error in challenge flow: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->getAuthRequestParams()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g;->c:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->isInitialized()Z

    move-result v0

    return v0
.end method
