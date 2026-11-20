.class public Lcom/oppwa/mobile/connect/payment/token/BankAccount;
.super Ljava/lang/Object;
.source "BankAccount.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/token/BankAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/BankAccount$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/token/BankAccount$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/token/BankAccount$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/oppwa/mobile/connect/payment/token/BankAccount;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->getHolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->getIban()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/token/BankAccount;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    invoke-static {p0, v0}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "iban"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    invoke-direct {v1, v0, p0}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
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

    .line 3
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getHolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
