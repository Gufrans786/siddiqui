.class public Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;->b:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;->b:I

    return v0
.end method
