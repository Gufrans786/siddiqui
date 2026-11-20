.class public Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
.super Ljava/lang/Object;
.source "CheckoutSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

.field private D:Z

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field private d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

.field private g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

.field private h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:D

.field private s:D

.field private t:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

.field private u:Z

.field private v:[Ljava/lang/Integer;

.field private w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

.field private x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->NEVER:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 74
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;->NEVER:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    .line 76
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;->GROUPED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    .line 86
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    const/4 v2, 0x3

    .line 92
    new-array v3, v2, [Ljava/lang/Integer;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    iput-object v3, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    .line 95
    sget-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->REGEX:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 97
    sget-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;->ACTIVE:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    .line 104
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    .line 112
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 147
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    .line 148
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 149
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    .line 150
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    .line 155
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    invoke-static {p1, v2}, Lcom/oppwa/mobile/connect/utils/ParcelUtils;->readMapFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    .line 156
    const-class v2, Ljava/lang/Integer;

    invoke-static {p1, v2}, Lcom/oppwa/mobile/connect/utils/ParcelUtils;->readMapFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    .line 158
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    .line 167
    const-class v2, Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->t:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    .line 170
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a(Landroid/os/Parcel;)[Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    .line 172
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 173
    const-class v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-lez v2, :cond_5

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    .line 178
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 180
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    .line 181
    const-class v2, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->NEVER:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 5
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;->NEVER:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    .line 7
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;->GROUPED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    .line 17
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    const/4 v2, 0x3

    .line 23
    new-array v3, v2, [Ljava/lang/Integer;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    iput-object v3, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    .line 26
    sget-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->REGEX:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 28
    sget-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;->ACTIVE:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    .line 35
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    .line 43
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    .line 55
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_NOT_REQUIRED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    invoke-virtual {p0, p2, v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->setSecurityPolicyModeForBrand(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    .line 69
    :cond_1
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 70
    sget-object p1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-void
.end method

.method private a(Landroid/os/Parcel;)[Ljava/lang/Integer;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createCheckoutActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const-string p1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public createCheckoutActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->createCheckoutActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 6
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_RECEIVER"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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

    goto/16 :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 7
    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    iget v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    iget-wide v4, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    .line 15
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    iget-wide v4, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    .line 16
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    .line 17
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    .line 18
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    .line 19
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 20
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 21
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    .line 22
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 23
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    .line 24
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    .line 25
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    .line 26
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 27
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    .line 28
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    .line 29
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    .line 30
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    .line 31
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    .line 32
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    .line 33
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 34
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    .line 35
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBillingAddress()Lcom/oppwa/mobile/connect/payment/BillingAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    return-object v0
.end method

.method public getBrandDetectionAppearanceStyle()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    return-object v0
.end method

.method public getBrandDetectionPriority()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    return-object v0
.end method

.method public getBrandDetectionType()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    return-object v0
.end method

.method public getCardBrandsDisplayMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    return-object v0
.end method

.method public getCheckoutId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomLogos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    return-object v0
.end method

.method public getGooglePayPaymentDataRequestJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallmentOptions()[Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getKlarnaCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getKlarnaInstallmentsFee()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    return-wide v0
.end method

.method public getKlarnaInvoiceFee()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentBrands()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    return-object v0
.end method

.method public getPaymentFormListener()Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->t:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    return-object v0
.end method

.method public getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-object v0
.end method

.method public getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object v0
.end method

.method public getSecurityPolicyModeForBrand(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    return-object p1
.end method

.method public getSecurityPolicyModeForTokens()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    return-object v0
.end method

.method public getShopperResultUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipCVVMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    return-object v0
.end method

.method public getStorePaymentDetailsMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    .line 26
    iget-wide v3, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    .line 28
    iget-wide v3, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    return v0
.end method

.method public isCardHolderVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    return v0
.end method

.method public isIBANRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    return v0
.end method

.method public isInstallmentEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    return v0
.end method

.method public isPaymentBrandsOrderUsedForTokens()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    return v0
.end method

.method public isSTCPayQrCodeRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    return v0
.end method

.method public isTotalAmountRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    return v0
.end method

.method public isWindowSecurityEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    return v0
.end method

.method public setBillingAddress(Lcom/oppwa/mobile/connect/payment/BillingAddress;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    return-object p0
.end method

.method public setBrandDetectionAppearanceStyle(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    return-object p0
.end method

.method public setBrandDetectionPriority(Ljava/util/List;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    return-object p0
.end method

.method public setBrandDetectionType(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    return-object p0
.end method

.method public setCardBrandsDisplayMode(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    return-object p0
.end method

.method public setCardHolderVisible(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    return-object p0
.end method

.method public setCheckoutId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    return-void
.end method

.method public setCustomLogo(Ljava/lang/String;I)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setGooglePayPaymentDataRequestJson(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    return-object p0
.end method

.method public setIBANRequired(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    return-object p0
.end method

.method public setInstallmentEnabled(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    return-object p0
.end method

.method public setInstallmentOptions([Ljava/lang/Integer;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    return-object p0
.end method

.method public setKlarnaCountry(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setKlarnaInstallmentsFee(D)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    return-object p0
.end method

.method public setKlarnaInvoiceFee(D)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setPaymentBrands(Ljava/util/Set;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    return-object p0
.end method

.method public setPaymentBrandsOrderUsedForTokens(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    return-object p0
.end method

.method public setPaymentFormListener(Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->t:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    return-object p0
.end method

.method public setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-object p0
.end method

.method public setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object p0
.end method

.method public setSTCPayQrCodeRequired(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    return-object p0
.end method

.method public setSecurityPolicyModeForBrand(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 1

    .line 1
    const-string v0, "ANDROIDPAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_NOT_REQUIRED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSecurityPolicyModeForTokens(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    return-object p0
.end method

.method public setShopperResultUrl(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setSkipCVVMode(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    return-object p0
.end method

.method public setStorePaymentDetailsMode(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    return-object p0
.end method

.method public setThemeResId(I)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    return-object p0
.end method

.method public setTotalAmountRequired(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    return-object p0
.end method

.method public setWindowSecurityEnabled(Z)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->t:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "no"

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkoutId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nshopperResultUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nproviderMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nproviderDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\npaymentBrands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nstorePaymentDetailsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nskipCVVMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncardBrandsDisplayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisTotalAmountRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisIBANRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisCardHolderVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsecurityPolicies="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsecurityPolicyModeForTokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nbrandDetectionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nbrandDetectionPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nthemeResId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nlocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nklarnaCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nklarnaInvoiceFee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nklarnaInstallmentsFee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisWindowSecurityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ngooglePayPaymentDataRequestJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\npaymentFormListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisInstallmentEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninstallmentOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncustomLogos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisSTCPayQrCodeRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nhasBillingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisPaymentBrandsOrderUsedForTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->c:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->e:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->f:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->h:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->l:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/ParcelUtils;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 14
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->B:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/ParcelUtils;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 16
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->m:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-wide v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->r:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 21
    iget-wide v1, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->s:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 22
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->p:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->t:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->u:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->v:[Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 26
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->w:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->x:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->y:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 32
    :cond_1
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->A:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->C:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->D:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
