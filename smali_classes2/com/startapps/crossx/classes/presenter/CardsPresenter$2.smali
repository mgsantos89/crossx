.class Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "CardsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/CardsPresenter;->setDefaultCard(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->hideAll()V

    .line 83
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/CardsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/CardsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;->showMessageCardDefaultSuccess()V

    return-void
.end method
