.class public Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/config/TSAuthorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->d:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->e:Ljava/util/Map;

    .line 8
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->f:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->g:J

    return-void
.end method


# virtual methods
.method public build()Lcom/transistorsoft/locationmanager/config/TSAuthorization;
    .locals 3

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->b(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/util/Map;)Ljava/util/Map;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->b(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/util/Map;)Ljava/util/Map;

    .line 8
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->g:J

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;J)J

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setExpires(J)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->g:J

    return-object p0
.end method

.method public setRefreshHeaders(Ljava/util/Map;)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public setRefreshPayload(Ljava/util/Map;)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->e:Ljava/util/Map;

    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setRefreshUrl(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setStrategy(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
