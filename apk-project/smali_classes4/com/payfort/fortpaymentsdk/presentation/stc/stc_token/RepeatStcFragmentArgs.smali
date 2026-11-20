.class public Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;
.super Ljava/lang/Object;
.source "RepeatStcFragmentArgs.java"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;
    }
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetarguments(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;
    .locals 4

    .line 31
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;-><init>()V

    .line 32
    const-class v1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 33
    const-string v1, "environment"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 39
    iget-object v3, v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "merchantReq"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    const-class v2, Landroid/os/Parcelable;

    const-class v3, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Ljava/io/Serializable;

    const-class v3, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    if-eqz p0, :cond_2

    .line 53
    iget-object v2, v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"merchantReq\" is marked as non-null but was passed a null value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required argument \"merchantReq\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"environment\" is marked as non-null but was passed a null value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required argument \"environment\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;
    .locals 4

    .line 64
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;-><init>()V

    .line 65
    const-string v1, "environment"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/SavedStateHandle;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {p0, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 71
    iget-object v3, v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "merchantReq"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/SavedStateHandle;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    if-eqz p0, :cond_0

    .line 81
    iget-object v2, v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"merchantReq\" is marked as non-null but was passed a null value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required argument \"merchantReq\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"environment\" is marked as non-null but was passed a null value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required argument \"environment\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 150
    :cond_1
    check-cast p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;

    .line 151
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v3, "environment"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v3, "merchantReq"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object p1

    if-eqz p1, :cond_7

    :goto_1
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v1, "environment"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v1, "merchantReq"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 170
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v2, "environment"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v2, "merchantReq"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    .line 110
    const-class v3, Landroid/os/Parcelable;

    const-class v4, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    const-class v3, Ljava/io/Serializable;

    const-class v4, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    :goto_0
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    return-object v0
.end method

.method public toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 5

    .line 124
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v2, "environment"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v2, "merchantReq"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    .line 131
    const-class v3, Landroid/os/Parcelable;

    const-class v4, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    const-class v3, Ljava/io/Serializable;

    const-class v4, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    :goto_0
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RepeatStcFragmentArgs{environment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", merchantReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
