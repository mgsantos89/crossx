.class Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "CreditCardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardListActivity;->doDeleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
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

    .line 222
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iput p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->val$position:I

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
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

    .line 225
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 226
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$mfetchCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V

    .line 229
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    const p2, 0x7f120020

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
