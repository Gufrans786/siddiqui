.class public Lcom/oppwa/mobile/connect/provider/model/BinInfo;
.super Ljava/lang/Object;
.source "BinInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/provider/model/BinInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/model/BinInfo$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/model/BinInfo$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/provider/model/BinInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/model/BinInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

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
    check-cast p1, Lcom/oppwa/mobile/connect/provider/model/BinInfo;

    .line 4
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

    .line 6
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBinType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBrands()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->a:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
