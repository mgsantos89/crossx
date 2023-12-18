.class Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UserMembershipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/UserMembershipActivity;->requestToPaidInvoice(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/model/Payment;I)V
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

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

    .line 424
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
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

    .line 407
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 408
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1200cb

    .line 409
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5$1;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;)V

    const-string v1, "OK"

    .line 410
    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 419
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->-$$Nest$mfetchUserMembership(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    return-void
.end method
