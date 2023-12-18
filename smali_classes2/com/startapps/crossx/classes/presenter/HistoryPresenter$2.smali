.class Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "HistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->getDetailsMembership(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/startapps/crossx/model/Membership;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->hideAll()V

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 57
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->hideAll()V

    .line 58
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    .line 59
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->startDetailsMembershipActivity(Lcom/startapps/crossx/model/Membership;)V

    return-void
.end method
