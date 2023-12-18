.class Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;
.super Lcom/startapps/crossx/rest/callback/SimpleCallback;
.source "MembershipDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->setEnableRecurrence(Lcom/startapps/crossx/model/CreditCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/SimpleCallback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

.field final synthetic val$creditCard:Lcom/startapps/crossx/model/CreditCard;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;Lcom/startapps/crossx/model/CreditCard;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    iput-object p2, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-static {v0}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->hideAll()V

    .line 70
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$fgetmembership(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/model/Membership;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-wide v0, p2, Lcom/startapps/crossx/model/CreditCard;->id:J

    iput-wide v0, p1, Lcom/startapps/crossx/model/Membership;->recurrenceCreditCardId:J

    .line 71
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-static {p1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter$2;->this$0:Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-static {p2}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;->-$$Nest$fgetmembership(Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;)Lcom/startapps/crossx/model/Membership;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;->upLayout(Lcom/startapps/crossx/model/Membership;)V

    return-void
.end method
