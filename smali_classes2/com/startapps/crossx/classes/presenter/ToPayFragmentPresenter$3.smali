.class Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "ToPayFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getDetailsMembership(J)V
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
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->hideAll()V

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

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

    .line 133
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->hideAll()V

    .line 134
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    .line 135
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;->this$0:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->startDetailsMembershipActivity(Lcom/startapps/crossx/model/Membership;)V

    return-void
.end method
