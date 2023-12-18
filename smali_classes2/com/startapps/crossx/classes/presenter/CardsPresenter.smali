.class public Lcom/startapps/crossx/classes/presenter/CardsPresenter;
.super Ljava/lang/Object;
.source "CardsPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/CardsContract$Presenter;


# instance fields
.field private fromCards:Ljava/lang/String;

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDefault(Lcom/startapps/crossx/classes/presenter/CardsPresenter;Ljava/util/List;)Lcom/startapps/crossx/model/CreditCard;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getDefault(Ljava/util/List;)Lcom/startapps/crossx/model/CreditCard;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    .line 29
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private getDefault(Ljava/util/List;)Lcom/startapps/crossx/model/CreditCard;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;)",
            "Lcom/startapps/crossx/model/CreditCard;"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/CreditCard;

    .line 55
    iget-boolean v1, v0, Lcom/startapps/crossx/model/CreditCard;->cardDefault:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCards()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->showLoading()V

    .line 38
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;-><init>(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getCardsList(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public getExtras(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "list_cards"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->fromCards:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getCards()V

    return-void
.end method

.method public getFromCards()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->fromCards:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultCard(J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->showLoading()V

    .line 79
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;-><init>(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->setDefaultCard(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method
