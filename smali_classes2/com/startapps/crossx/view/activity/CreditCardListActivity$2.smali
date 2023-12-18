.class Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "CreditCardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardListActivity;->setCreditCardToDefault(Lcom/startapps/crossx/model/UserCreditCard;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/startapps/crossx/model/UserCreditCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;I)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iput p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;->val$position:I

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserCreditCard;

    const-wide/16 v0, 0x0

    .line 176
    iput-wide v0, p2, Lcom/startapps/crossx/model/UserCreditCard;->cardDefault:J

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserCreditCard;

    const-wide/16 v0, 0x1

    iput-wide v0, p1, Lcom/startapps/crossx/model/UserCreditCard;->cardDefault:J

    .line 179
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->notifyDataSetChanged()V

    return-void
.end method
