.class Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "RegisterCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->registerCard(Lcom/startapps/crossx/model/CreditCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/startapps/crossx/model/CreditCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

.field final synthetic val$creditCard:Lcom/startapps/crossx/model/CreditCard;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;Lcom/startapps/crossx/model/CreditCard;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    iput-object p2, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    const-string v0, "onFailure"

    .line 57
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->hideAll()V

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    const-string p1, "onSuccess"

    .line 46
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->hideAll()V

    .line 48
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->-$$Nest$fgetmembershipId(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->openHome()V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter$1;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-interface {p1, p2}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;->backWithResult(Lcom/startapps/crossx/model/CreditCard;)V

    :goto_0
    return-void
.end method
