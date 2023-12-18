.class public Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;
.super Ljava/lang/Object;
.source "MembershipDetailsPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;


# instance fields
.field private membership:Lcom/startapps/crossx/model/Membership;

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmembership(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/model/Membership;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateCorrectFiancialInvoiceList(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->createCorrectFiancialInvoiceList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    .line 33
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->getExtra(Landroid/os/Bundle;)V

    return-void
.end method

.method private createCorrectFiancialInvoiceList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/FinancialInvoice;

    .line 88
    iget-object v2, v1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 89
    iget-object v2, v1, Lcom/startapps/crossx/model/FinancialInvoice;->financialInvoicePayments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/FinancialInvoicePayment;

    .line 90
    new-instance v4, Lcom/startapps/crossx/model/FinancialInvoice;

    invoke-direct {v4, v1, v3}, Lcom/startapps/crossx/model/FinancialInvoice;-><init>(Lcom/startapps/crossx/model/FinancialInvoice;Lcom/startapps/crossx/model/FinancialInvoicePayment;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->setMemberships(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getExtra(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->showLoading()V

    const-string v0, "membership_extra"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->upLayout(Lcom/startapps/crossx/model/Membership;)V

    .line 42
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->getMembershipDetailsList()V

    :cond_0
    return-void
.end method

.method public getMembershipDetailsList()V
    .locals 4

    .line 49
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-wide v1, v1, Lcom/startapps/crossx/model/Membership;->id:J

    new-instance v3, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$1;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$1;-><init>(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getUserMembershipDetails(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public setEnableRecurrence(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->showLoading()V

    .line 66
    new-instance v1, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-wide v2, v0, Lcom/startapps/crossx/model/Membership;->id:J

    iget-wide v4, p1, Lcom/startapps/crossx/model/CreditCard;->id:J

    new-instance v6, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;

    invoke-direct {v6, p0, p1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;-><init>(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;Lcom/startapps/crossx/model/CreditCard;)V

    invoke-virtual/range {v1 .. v6}, Lcom/startapps/crossx/rest/clients/PaymentClient;->setEnableRecurrence(JJLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method
