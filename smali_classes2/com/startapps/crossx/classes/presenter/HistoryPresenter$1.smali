.class Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "HistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->getHistoryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/History;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 38
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->hideAll()V

    .line 39
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p2, v0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$mgetHeadList(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v1, p2, p1}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->-$$Nest$mcreateHasMap(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->setHistories(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method
