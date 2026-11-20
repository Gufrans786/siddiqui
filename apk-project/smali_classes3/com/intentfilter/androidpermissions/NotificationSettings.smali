.class public Lcom/intentfilter/androidpermissions/NotificationSettings;
.super Ljava/lang/Object;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;
    }
.end annotation


# instance fields
.field private messageResId:I

.field private smallIconResId:I

.field private titleResId:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->titleResId:I

    .line 17
    iput p2, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->messageResId:I

    .line 18
    iput p3, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->smallIconResId:I

    return-void
.end method

.method static synthetic access$002(Lcom/intentfilter/androidpermissions/NotificationSettings;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->titleResId:I

    return p1
.end method

.method static synthetic access$102(Lcom/intentfilter/androidpermissions/NotificationSettings;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->messageResId:I

    return p1
.end method

.method static synthetic access$202(Lcom/intentfilter/androidpermissions/NotificationSettings;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->smallIconResId:I

    return p1
.end method

.method static getDefault()Lcom/intentfilter/androidpermissions/NotificationSettings;
    .locals 4

    .line 22
    new-instance v0, Lcom/intentfilter/androidpermissions/NotificationSettings;

    sget v1, Lcom/intentfilter/androidpermissions/R$string;->title_permission_required:I

    sget v2, Lcom/intentfilter/androidpermissions/R$string;->message_permission_required:I

    const/high16 v3, 0x10d0000

    invoke-direct {v0, v1, v2, v3}, Lcom/intentfilter/androidpermissions/NotificationSettings;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public getMessageResId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->messageResId:I

    return v0
.end method

.method public getSmallIconResId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->smallIconResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings;->titleResId:I

    return v0
.end method
