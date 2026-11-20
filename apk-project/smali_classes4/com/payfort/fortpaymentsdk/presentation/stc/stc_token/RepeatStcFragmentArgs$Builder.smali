.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;
.super Ljava/lang/Object;
.source "RepeatStcFragmentArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    .line 187
    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;->-$$Nest$fgetarguments(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 195
    const-string v1, "environment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 199
    const-string p1, "merchantReq"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"merchantReq\" is marked as non-null but was passed a null value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"environment\" is marked as non-null but was passed a null value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;
    .locals 3

    .line 204
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs;-><init>(Ljava/util/HashMap;Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs-IA;)V

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "environment"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantReq()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "merchantReq"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    return-object v0
.end method

.method public setEnvironment(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "environment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"environment\" is marked as non-null but was passed a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMerchantReq(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "merchantReq"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"merchantReq\" is marked as non-null but was passed a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
