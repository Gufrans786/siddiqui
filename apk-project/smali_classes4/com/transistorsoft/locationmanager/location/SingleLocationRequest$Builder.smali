.class public Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:Z

.field d:I

.field e:I

.field private f:Lorg/json/JSONObject;

.field private g:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

.field protected h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->c:Z

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationTimeout()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->b:I

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->d:I

    .line 7
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStationaryRadius()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->e:I

    .line 8
    new-instance p1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder$a;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder$a;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->g:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->g:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)V

    return-object v0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->h:I

    return v0
.end method

.method public setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->g:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    return-object p0
.end method

.method public setDesiredAccuracy(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->e:I

    return-object p0
.end method

.method public setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setPersist(Z)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->c:Z

    return-object p0
.end method

.method public setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->d:I

    return-object p0
.end method

.method public setTimeout(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->b:I

    return-object p0
.end method
