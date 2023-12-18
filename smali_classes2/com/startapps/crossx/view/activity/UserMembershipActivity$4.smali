.class Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UserMembershipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/UserMembershipActivity;->doRenewUserMembership()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/startapps/crossx/model/UserMembership;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 312
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 296
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1200cc

    .line 299
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4$1;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;)V

    const-string v1, "OK"

    .line 300
    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
