.class public Lcom/oppwa/mobile/connect/payment/token/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/token/Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/oppwa/mobile/connect/payment/token/Card;

.field private d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

.field private e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/Token$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/token/Token$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/token/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    .line 17
    const-class v0, Lcom/oppwa/mobile/connect/payment/token/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/token/Card;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    .line 18
    const-class v0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    .line 19
    const-class v0, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/token/Token$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/token/Token;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getTokenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/Card;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppwa/mobile/connect/payment/token/Card;-><init>(Lcom/oppwa/mobile/connect/payment/token/Card;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    .line 24
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getBankAccount()Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getBankAccount()Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;-><init>(Lcom/oppwa/mobile/connect/payment/token/BankAccount;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    .line 25
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getVirtualAccount()Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getVirtualAccount()Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;-><init>(Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;)V

    :cond_2
    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/BankAccount;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Card;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    return-void
.end method

.method public static createTokenFromJSON(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/token/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "paymentBrand"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "card"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/payment/token/Card;->a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object p0

    .line 7
    new-instance v2, Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-direct {v2, v0, v1, p0}, Lcom/oppwa/mobile/connect/payment/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Card;)V

    return-object v2

    .line 10
    :cond_0
    const-string v2, "bankAccount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    move-result-object p0

    .line 16
    new-instance v2, Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-direct {v2, v0, v1, p0}, Lcom/oppwa/mobile/connect/payment/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/BankAccount;)V

    return-object v2

    .line 19
    :cond_1
    const-string/jumbo v2, "virtualAccount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;->a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    move-result-object p0

    .line 25
    new-instance v2, Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-direct {v2, v0, v1, p0}, Lcom/oppwa/mobile/connect/payment/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;)V

    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copyToken(Lcom/oppwa/mobile/connect/payment/token/Token;)Lcom/oppwa/mobile/connect/payment/token/Token;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-direct {v0, p1}, Lcom/oppwa/mobile/connect/payment/token/Token;-><init>(Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-object v0
.end method

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

    .line 3
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    .line 7
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    .line 8
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    .line 9
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBankAccount()Lcom/oppwa/mobile/connect/payment/token/BankAccount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    return-object v0
.end method

.method public getCard()Lcom/oppwa/mobile/connect/payment/token/Card;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    return-object v0
.end method

.method public getPaymentBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualAccount()Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/Card;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->c:Lcom/oppwa/mobile/connect/payment/token/Card;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->d:Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Token;->e:Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
