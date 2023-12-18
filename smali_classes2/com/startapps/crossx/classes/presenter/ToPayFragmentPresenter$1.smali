.class Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "ToPayFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getToPayList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/PaymentModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 53
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->hideAll()V

    .line 54
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->checkDueDate(Ljava/util/List;)V

    .line 55
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p2, v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$mgetHeadList(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v1, p2, p1}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$mcreateHasMap(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->setPaymentItens(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method
