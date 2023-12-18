.class Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "CardsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/CreditCard;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->checkViewWarningSafeConnection()V

    .line 42
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->hideAll()V

    .line 43
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object p2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v1, p1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$mgetDefault(Lcom/startapps/crossx/classes/presenter/CardsPresenter;Ljava/util/List;)Lcom/startapps/crossx/model/CreditCard;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->upLayout(Ljava/util/List;Lcom/startapps/crossx/model/CreditCard;)V

    return-void
.end method
