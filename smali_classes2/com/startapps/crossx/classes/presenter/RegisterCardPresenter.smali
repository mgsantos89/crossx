.class public Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;
.super Ljava/lang/Object;
.source "RegisterCardPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;


# instance fields
.field private membershipId:J

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmembershipId(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->membershipId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->membershipId:J

    .line 26
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    .line 27
    invoke-direct {p0, p2}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->getExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private getExtras(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "membership_id_extra"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->membershipId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->showRecurrenceOption()V

    :cond_0
    return-void
.end method


# virtual methods
.method public registerCard(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->showLoading()V

    .line 43
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;-><init>(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;Lcom/startapps/crossx/model/CreditCard;)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->registerCard(Lcom/startapps/crossx/model/CreditCard;Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method
