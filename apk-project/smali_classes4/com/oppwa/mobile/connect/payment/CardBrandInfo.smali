.class public final Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
.super Ljava/lang/Object;
.source "CardBrandInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/CardBrandInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/oppwa/mobile/connect/payment/CVVMode;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "[0-9]{10,19}"

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    .line 9
    const-string v0, "#### #### #### #### ###"

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/oppwa/mobile/connect/payment/CVVMode;->REQUIRED:Lcom/oppwa/mobile/connect/payment/CVVMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    .line 18
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "[0-9]{10,19}"

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    .line 26
    const-string v0, "#### #### #### #### ###"

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/oppwa/mobile/connect/payment/CVVMode;->REQUIRED:Lcom/oppwa/mobile/connect/payment/CVVMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    .line 35
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    .line 46
    const-class v2, Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/payment/CVVMode;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/CardBrandInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;-><init>(Landroid/os/Parcel;)V

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

    const-class v3, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 7
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    .line 10
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    iget v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    iget-boolean p1, p1, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCvvLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    return v0
.end method

.method public getCvvMode()Lcom/oppwa/mobile/connect/payment/CVVMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    return-object v0
.end method

.method public getDetection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getValidation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isExpiryDateOptional()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    return v0
.end method

.method public isLuhnCheckRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    return v0
.end method

.method public isMobilePhoneRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    return v0
.end method

.method public setCvvLength(I)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    return-object p0
.end method

.method public setCvvMode(Lcom/oppwa/mobile/connect/payment/CVVMode;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    return-object p0
.end method

.method public setDetection(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setExpiryDateOptional(Z)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    return-object p0
.end method

.method public setLuhnCheckRequired(Z)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    return-object p0
.end method

.method public setMobilePhoneRequired(Z)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setValidation(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->d:Lcom/oppwa/mobile/connect/payment/CVVMode;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
