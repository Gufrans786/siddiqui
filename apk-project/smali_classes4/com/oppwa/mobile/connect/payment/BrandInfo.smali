.class public final Lcom/oppwa/mobile/connect/payment/BrandInfo;
.super Ljava/lang/Object;
.source "BrandInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/BrandInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/BrandInfo$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/BrandInfo$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    .line 32
    const-class v1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/BrandInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/BrandInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/oppwa/mobile/connect/payment/BrandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    .line 8
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/oppwa/mobile/connect/payment/BrandInfo;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/payment/BrandInfo;

    .line 7
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 10
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    iget-boolean p1, p1, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCardBrandInfo()Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isCardBrand()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCustomUiRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    return v0
.end method

.method public setCardBrandInfo(Lcom/oppwa/mobile/connect/payment/CardBrandInfo;)Lcom/oppwa/mobile/connect/payment/BrandInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    return-object p0
.end method

.method public setCustomUiRequired(Z)Lcom/oppwa/mobile/connect/payment/BrandInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BrandInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BrandInfo;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
