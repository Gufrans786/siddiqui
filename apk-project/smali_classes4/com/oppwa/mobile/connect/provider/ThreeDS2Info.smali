.class public Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;
.super Ljava/lang/Object;
.source "ThreeDS2Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

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
    check-cast p1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    .line 4
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    .line 8
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAuthResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthStatus()Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCardHolderInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAuthParamsRequired()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    sget-object v1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->AUTH_PARAMS_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isChallengeRequired()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    sget-object v1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->CHALLENGE_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    return-void
.end method

.method public setCardHolderInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->a:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
