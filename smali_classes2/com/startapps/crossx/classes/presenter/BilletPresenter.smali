.class public Lcom/startapps/crossx/classes/presenter/BilletPresenter;
.super Ljava/lang/Object;
.source "BilletPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/BilletContract$Presenter;


# instance fields
.field private dataPayment:Lcom/startapps/crossx/model/DataPayment;

.field private membership:Lcom/startapps/crossx/model/Membership;

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/BilletPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;

    .line 23
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/classes/presenter/BilletPresenter;->getExtras(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getExtras(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "data_payment_extra"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/DataPayment;

    iput-object v0, p0, Lcom/startapps/crossx/classes/presenter/BilletPresenter;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    const-string v0, "membership_extra"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/BilletPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/BilletPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/BilletPresenter;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    invoke-interface {v0, v1, p1}, Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;->populateBillet(Lcom/startapps/crossx/model/DataPayment;Lcom/startapps/crossx/model/Membership;)V

    :cond_0
    return-void
.end method
