.class Lcom/oppwa/mobile/connect/checkout/dialog/s;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/s$n;,
        Lcom/oppwa/mobile/connect/checkout/dialog/s$m;
    }
.end annotation


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static a(I)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 4
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$g;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$g;-><init>(I)V

    return-object v0
.end method

.method static a(Lcom/oppwa/mobile/connect/checkout/dialog/o;Lcom/oppwa/mobile/connect/checkout/dialog/s$n;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 3
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;

    invoke-direct {v0, p1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/s$n;Lcom/oppwa/mobile/connect/checkout/dialog/o;)V

    return-object v0
.end method

.method static a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;

    invoke-direct {v0, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/x;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)V

    return-object v0
.end method

.method static a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Z)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 6
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;

    invoke-direct {v0, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/x;Z)V

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 5
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$k;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->h()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method static b()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$l;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$l;-><init>()V

    return-object v0
.end method

.method static b(I)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$c;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$c;-><init>(I)V

    return-object v0
.end method

.method static c()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$b;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$b;-><init>()V

    return-object v0
.end method

.method static d()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$d;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$d;-><init>()V

    return-object v0
.end method

.method static e()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$h;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$h;-><init>()V

    return-object v0
.end method

.method static f()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$j;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$j;-><init>()V

    return-object v0
.end method

.method static g()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$i;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$i;-><init>()V

    return-object v0
.end method

.method private static h()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "[0-9]{2}/[0-9]{2,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a:Ljava/util/regex/Pattern;

    .line 5
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method
