.class Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "MembershipPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->getAccessionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/Membership;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/MembershipPresenter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 34
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;

    move-result-object p2

    invoke-interface {p2}, Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;->hideAll()V

    .line 35
    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter$1;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;

    move-result-object p2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;->setMemberships(Ljava/util/List;)V

    return-void
.end method
