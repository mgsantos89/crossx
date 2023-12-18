.class Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "OnlineOrderDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->fetchOnlineOrderDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/startapps/crossx/model/Payment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

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

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

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
            "Lcom/startapps/crossx/model/Payment;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 112
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Payment;

    invoke-static {p2, p1}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->-$$Nest$fputpayment(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;Lcom/startapps/crossx/model/Payment;)V

    .line 113
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->-$$Nest$mpopulateInformation(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V

    return-void
.end method
