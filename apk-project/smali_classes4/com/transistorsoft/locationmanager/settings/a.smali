.class Lcom/transistorsoft/locationmanager/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->f:Ljava/lang/String;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->g:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->h:Ljava/lang/Boolean;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/settings/a;->a(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->f:Ljava/lang/String;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->g:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->h:Ljava/lang/Boolean;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/settings/a;->a(Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    iput-object p5, p0, Lcom/transistorsoft/locationmanager/settings/a;->f:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 20
    iput-object p6, p0, Lcom/transistorsoft/locationmanager/settings/a;->g:Ljava/lang/Boolean;

    :cond_0
    if-eqz p7, :cond_1

    .line 23
    iput-object p7, p0, Lcom/transistorsoft/locationmanager/settings/a;->h:Ljava/lang/Boolean;

    :cond_1
    if-eqz p4, :cond_2

    .line 26
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/transistorsoft/locationmanager/settings/a;->a:I

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/settings/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/settings/a;->e:Ljava/lang/Object;

    return-void
.end method
