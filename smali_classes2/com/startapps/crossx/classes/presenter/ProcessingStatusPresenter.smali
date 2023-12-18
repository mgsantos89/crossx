.class public Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "ProcessingStatusPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/startapps/crossx/model/DataPayment;",
        ">;",
        "Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$Presenter;"
    }
.end annotation


# instance fields
.field public creditCardId:J

.field public dataPayment:Lcom/startapps/crossx/model/DataPayment;

.field private final extras:Landroid/os/Bundle;

.field public membership:Lcom/startapps/crossx/model/Membership;

.field public methodPayment:Ljava/lang/String;

.field private paymentClient:Lcom/startapps/crossx/rest/clients/PaymentClient;

.field public statusProcessing:I

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    .line 37
    iput-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->extras:Landroid/os/Bundle;

    .line 38
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->getExtras()V

    return-void
.end method


# virtual methods
.method public clickedChangeCard(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->goToHomeAndClickChangeCard(Lcom/startapps/crossx/model/Notification;)V

    return-void
.end method

.method public clickedDown()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->goToHome()V

    return-void
.end method

.method public clickedEnablePayment(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->goToHomeEnablePayment(Lcom/startapps/crossx/model/Notification;)V

    return-void
.end method

.method public clickedOk()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->goToHome()V

    return-void
.end method

.method public clickedToPayNow(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->goToHomeAndClickToPayNow(Lcom/startapps/crossx/model/Notification;)V

    return-void
.end method

.method public getExtras()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "membership_extra"

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/Membership;

    iput-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->extras:Landroid/os/Bundle;

    const-string v1, "method_payment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->methodPayment:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->paymentClient:Lcom/startapps/crossx/rest/clients/PaymentClient;

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-object v1, v1, Lcom/startapps/crossx/model/Membership;->installmentsValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->processingPayment(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->requestPayment()V

    :cond_0
    return-void
.end method

.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    const-string p1, "onFailure Payment"

    .line 146
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 147
    iput p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->statusProcessing:I

    .line 148
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->methodPayment:Ljava/lang/String;

    const-string v0, "billet_payment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->showErrorGenerateBillet()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->showErrorUnexpected()V

    :goto_0
    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    const-string p2, "onSuccess Payment"

    .line 126
    invoke-static {p2}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/DataPayment;

    iput-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    .line 129
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->methodPayment:Ljava/lang/String;

    const-string v0, "billet_payment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    invoke-interface {p1, p2}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->startBilletActivity(Lcom/startapps/crossx/model/DataPayment;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object p2, p2, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    if-nez p2, :cond_1

    .line 134
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-wide v0, p2, Lcom/startapps/crossx/model/DataPayment;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->setDataPaymentRemoteId(J)V

    .line 135
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->startServicePolling()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/DataPayment;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;->populateDialogSuccess(Lcom/startapps/crossx/model/DataPayment;)V

    :goto_0
    return-void
.end method

.method public requestBilletPayment()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-wide v0, v0, Lcom/startapps/crossx/model/Membership;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->paymentClient:Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/rest/clients/PaymentClient;->payAllWithBankSlip(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->paymentClient:Lcom/startapps/crossx/rest/clients/PaymentClient;

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-wide v1, v1, Lcom/startapps/crossx/model/Membership;->id:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getPaymentBillet(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    :goto_0
    return-void
.end method

.method public requestCreditCardPayment()V
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-wide v0, v0, Lcom/startapps/crossx/model/Membership;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->paymentClient:Lcom/startapps/crossx/rest/clients/PaymentClient;

    iget-wide v1, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->creditCardId:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/startapps/crossx/rest/clients/PaymentClient;->payAllWithCreditCard(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->paymentClient:Lcom/startapps/crossx/rest/clients/PaymentClient;

    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-wide v4, v0, Lcom/startapps/crossx/model/Membership;->id:J

    iget-wide v6, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->creditCardId:J

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getPaymentCreditCard(JJLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    :goto_0
    return-void
.end method

.method public requestPayment()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->methodPayment:Ljava/lang/String;

    const-string v1, "billet_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->requestBilletPayment()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->methodPayment:Ljava/lang/String;

    const-string v1, "credit_card_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->extras:Landroid/os/Bundle;

    const-string v1, "credit_card_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->creditCardId:J

    .line 71
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->requestCreditCardPayment()V

    :cond_1
    return-void
.end method
