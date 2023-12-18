.class Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "MembershipDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->getMembershipDetailsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/FinancialInvoice;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 52
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$mcreateCorrectFiancialInvoiceList(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;Ljava/util/List;)V

    return-void
.end method
