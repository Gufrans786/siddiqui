.class public Lcom/oppwa/mobile/connect/payment/token/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/token/Card;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/Card$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/token/Card$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/token/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/oppwa/mobile/connect/payment/token/Card;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getHolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getLast4Digits()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getExpiryMonth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getExpiryYear()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/token/Card;
    .locals 4
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
    const-string v1, "last4Digits"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "expiryMonth"

    invoke-static {p0, v2}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "expiryYear"

    invoke-static {p0, v3}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v3, Lcom/oppwa/mobile/connect/payment/token/Card;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/oppwa/mobile/connect/payment/token/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
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
    check-cast p1, Lcom/oppwa/mobile/connect/payment/token/Card;

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    .line 8
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getExpiryMonth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryYear()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLast4Digits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/Card;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
