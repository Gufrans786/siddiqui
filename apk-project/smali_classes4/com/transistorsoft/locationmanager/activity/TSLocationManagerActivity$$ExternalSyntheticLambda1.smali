.class public final synthetic Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->$r8$lambda$Hg2-ZAD0qb5vgGwsYJ-x8kTd5bU(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method
