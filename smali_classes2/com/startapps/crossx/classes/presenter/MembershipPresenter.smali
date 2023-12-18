.class public Lcom/startapps/crossx/classes/presenter/MembershipPresenter;
.super Ljava/lang/Object;
.source "MembershipPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$Presenter;


# instance fields
.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;

    return-void
.end method


# virtual methods
.method public getAccessionList()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;->showLoading()V

    .line 31
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;-><init>(Lcom/startapps/crossx/classes/presenter/MembershipPresenter;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getUserMemberships(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method
