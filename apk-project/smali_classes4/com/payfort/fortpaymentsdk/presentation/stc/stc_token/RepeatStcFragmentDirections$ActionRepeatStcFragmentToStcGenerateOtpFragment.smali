.class public Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;
.super Ljava/lang/Object;
.source "RepeatStcFragmentDirections.java"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionRepeatStcFragmentToStcGenerateOtpFragment"
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 42
    const-string v1, "environment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 46
    const-string p1, "merchantReq"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"merchantReq\" is marked as non-null but was passed a null value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"environment\" is marked as non-null but was passed a null value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;-><init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 136
    :cond_1
    check-cast p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;

    .line 137
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v3, "environment"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 143
    :cond_4
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v3, "merchantReq"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 149
    :cond_7
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v3, "isFromRepeat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_8

    return v1

    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getIsFromRepeat()Z

    move-result v2

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getIsFromRepeat()Z

    move-result v3

    if-eq v2, v3, :cond_9

    return v1

    .line 155
    :cond_9
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getActionId()I

    move-result v2

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getActionId()I

    move-result p1

    if-eq v2, p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public getActionId()I
    .locals 1

    .line 108
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->action_repeatStcFragment_to_stcGenerateOtpFragment:I

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 5

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v2, "environment"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v2, "merchantReq"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    .line 89
    const-class v3, Landroid/os/Parcelable;

    const-class v4, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    const-class v3, Ljava/io/Serializable;

    const-class v4, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 94
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

    .line 90
    :cond_3
    :goto_0
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v2, "isFromRepeat"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 99
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_5
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "environment"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIsFromRepeat()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "isFromRepeat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "merchantReq"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

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

    .line 165
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 166
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getIsFromRepeat()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 167
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getActionId()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setEnvironment(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;
    .locals 2

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "environment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"environment\" is marked as non-null but was passed a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIsFromRepeat(Z)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "isFromRepeat"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMerchantReq(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->arguments:Ljava/util/HashMap;

    const-string v1, "merchantReq"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"merchantReq\" is marked as non-null but was passed a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionRepeatStcFragmentToStcGenerateOtpFragment(actionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getActionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "){environment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", merchantReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;->getIsFromRepeat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
