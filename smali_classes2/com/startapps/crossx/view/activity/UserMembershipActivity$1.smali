.class Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UserMembershipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/UserMembershipActivity;->fetchUserMembership()V
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

    .line 157
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
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

    .line 160
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserMembership;

    invoke-static {p2, p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->-$$Nest$fputuserMembership(Lcom/startapps/crossx/view/activity/UserMembershipActivity;Lcom/startapps/crossx/model/UserMembership;)V

    .line 161
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->-$$Nest$mpopulateInformations(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    .line 162
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->mainView:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
