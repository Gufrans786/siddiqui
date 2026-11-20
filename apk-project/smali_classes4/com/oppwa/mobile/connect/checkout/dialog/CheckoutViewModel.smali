.class public Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CheckoutViewModel.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/provider/ITransactionListener;


# instance fields
.field private a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

.field private b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oppwa/mobile/connect/payment/CheckoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oppwa/mobile/connect/payment/BrandsValidation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oppwa/mobile/connect/payment/ImagesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/e0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/oppwa/mobile/connect/exception/PaymentError;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    invoke-direct {v0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    .line 5
    invoke-virtual {v0, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    return-object p1
.end method

.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->h:Ljava/lang/String;

    return-void
.end method

.method public brandsValidationRequestFailed(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public brandsValidationRequestSucceeded(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getBrandsValidationLiveData(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/provider/IPaymentProvider;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/oppwa/mobile/connect/payment/BrandsValidation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-interface {p3, p1, p2, p0}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->requestBrandsValidation(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getCheckoutInfoLiveData(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/provider/IPaymentProvider;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/oppwa/mobile/connect/payment/CheckoutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-interface {p2, p1, p0}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->requestCheckoutInfo(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getImagesRequestLiveData([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/provider/IPaymentProvider;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/oppwa/mobile/connect/payment/ImagesRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-interface {p2, p1, p0}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->requestImages([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getPaymentErrorLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/oppwa/mobile/connect/exception/PaymentError;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTransactionResultLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public imagesRequestFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public imagesRequestSucceeded(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    return-void
.end method

.method public paymentConfigRequestFailed(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public paymentConfigRequestSucceeded(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public sendTransaction(Landroid/app/Activity;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->g:Z

    .line 7
    move-object v0, p5

    check-cast v0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;Landroid/app/Activity;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->setThreeDSWorkflowListener(Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;)V

    .line 20
    invoke-interface {p5, p3, p4, p0}, Lcom/oppwa/mobile/connect/provider/IPaymentProvider;->sendTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public transactionCompleted(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->g:Z

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/e0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/e0;-><init>(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public transactionFailed(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->g:Z

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/e0;

    invoke-direct {v1, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/e0;-><init>(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
