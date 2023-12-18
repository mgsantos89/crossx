.class public Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "ChooseFormPaymentPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/startapps/crossx/model/PaymentMethod;",
        ">;",
        "Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$Presenter;"
    }
.end annotation


# instance fields
.field private creditCardId:J

.field private membership:Lcom/startapps/crossx/model/Membership;

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;

    .line 32
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->getExtra(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public createOptions(Lcom/startapps/crossx/model/PaymentMethod;)V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;->hideAll()V

    .line 63
    iget-boolean v0, p1, Lcom/startapps/crossx/model/PaymentMethod;->creditCardEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/startapps/crossx/model/PaymentMethod;->creditCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p1, Lcom/startapps/crossx/model/PaymentMethod;->creditCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/CreditCard;

    .line 65
    iget-boolean v3, v2, Lcom/startapps/crossx/model/CreditCard;->cardDefault:Z

    if-eqz v3, :cond_0

    .line 67
    iget-wide v3, v2, Lcom/startapps/crossx/model/CreditCard;->id:J

    iput-wide v3, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->creditCardId:J

    move-object v1, v2

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;

    iget-object v2, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-boolean v3, p1, Lcom/startapps/crossx/model/PaymentMethod;->creditCardEnabled:Z

    iget-boolean p1, p1, Lcom/startapps/crossx/model/PaymentMethod;->bankSlipEnabled:Z

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;->upLayout(Lcom/startapps/crossx/model/CreditCard;Lcom/startapps/crossx/model/Membership;ZZ)V

    return-void
.end method

.method public getBoxOptions()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;->showLoading()V

    .line 49
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p0}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getPaymentMethods(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public getCreditCardId()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->creditCardId:J

    return-wide v0
.end method

.method public getExtra(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "membership_extra"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    .line 39
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->getBoxOptions()V

    :cond_0
    return-void
.end method

.method public getMemberShip()Lcom/startapps/crossx/model/Membership;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    return-object v0
.end method

.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/PaymentMethod;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PaymentMethod;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->createOptions(Lcom/startapps/crossx/model/PaymentMethod;)V

    return-void
.end method
