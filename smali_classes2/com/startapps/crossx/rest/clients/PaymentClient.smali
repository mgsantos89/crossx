.class public Lcom/startapps/crossx/rest/clients/PaymentClient;
.super Lcom/startapps/crossx/rest/clients/ApiClient;
.source "PaymentClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/ApiClient<",
        "Lcom/startapps/crossx/rest/interfaces/PaymentService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/ApiClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getCardsList(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;>;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getCreditCards()Lretrofit/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getDetailsMembership(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getDetailsMembership(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getHistory(ILcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;>;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getHistory(I)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getOnlinePayment(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getOnlinePayment(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getPaymentBillet(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->payMembershipByBankSlip(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getPaymentCreditCard(JJLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->payMembershipByCreditCard(JJ)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getPaymentMethods(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getPaymentMethods(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getPaymentSettings(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getPaymentSettings(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getToPayId(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getToPayListById(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getToPayList(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    .line 55
    invoke-interface {v0}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getToPayList()Lretrofit/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getUserMembershipDetails(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getUserMembershipDetails(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getUserMemberships(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->getUserMemberships()Lretrofit/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public payAllWithBankSlip(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->payAllWithBankSlip()Lretrofit/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public payAllWithCreditCard(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->payAllWithCreditCard(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public postFCMToken(Lcom/startapps/crossx/model/SendToken;Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/SendToken;",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    iget-object v1, p1, Lcom/startapps/crossx/model/SendToken;->tokenFCM:Ljava/lang/String;

    iget-object p1, p1, Lcom/startapps/crossx/model/SendToken;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->postFCMToken(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public registerCard(Lcom/startapps/crossx/model/CreditCard;Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/CreditCard;",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->registerCard(Lcom/startapps/crossx/model/CreditCard;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public removeFCMToken(Ljava/lang/String;Lcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->removeFCMToken(Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public setDefaultCard(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->setDefaultCard(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public setEnableRecurrence(JJLcom/startapps/crossx/rest/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/PaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/PaymentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/startapps/crossx/rest/interfaces/PaymentService;->setEnableRecurrence(JJ)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method
