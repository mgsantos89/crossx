.class Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "OnlineOrderDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->sendEmailButtonClick()V
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

    .line 160
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

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

    .line 170
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
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

    .line 164
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;->this$0:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    const p2, 0x7f1200c4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
