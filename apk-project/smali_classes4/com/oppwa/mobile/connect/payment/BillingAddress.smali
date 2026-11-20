.class public Lcom/oppwa/mobile/connect/payment/BillingAddress;
.super Ljava/lang/Object;
.source "BillingAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/BillingAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/BillingAddress$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/BillingAddress$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/BillingAddress$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->a(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->b(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->e(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->f(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->g(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->h(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->i(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->i(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    .line 13
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->j(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->j(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    .line 15
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->k(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->k(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    .line 17
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->l(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->l(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    .line 19
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->c(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 20
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->c(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    goto :goto_9

    :cond_9
    :goto_8
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    .line 21
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->d(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 22
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->d(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;Lcom/oppwa/mobile/connect/payment/BillingAddress$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;-><init>(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)V

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
    check-cast p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 3
    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    .line 13
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    .line 14
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPostCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    .line 8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    .line 9
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    .line 10
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    .line 11
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    .line 12
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v11, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    .line 13
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCityRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    return v0
.end method

.method public isCountryRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    return v0
.end method

.method public isPostCodeRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    return v0
.end method

.method public isStateRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    return v0
.end method

.method public isStreet1Required()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    return v0
.end method

.method public isStreet2Required()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
