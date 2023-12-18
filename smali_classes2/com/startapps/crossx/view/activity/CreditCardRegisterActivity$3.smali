.class Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "CreditCardRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->registerNewCreditCard()V
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
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

    .line 299
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "is_new_credit_card"

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->finish()V

    return-void
.end method
