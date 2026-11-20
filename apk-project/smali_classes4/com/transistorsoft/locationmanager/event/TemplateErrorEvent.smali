.class public Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;->a:Ljava/lang/String;

    return-object v0
.end method
