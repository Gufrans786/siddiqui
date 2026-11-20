.class public Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;
.super Ljava/lang/Object;
.source "YooKassaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p3, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->UNDEFINED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    :goto_0
    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    .line 3
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->c:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
