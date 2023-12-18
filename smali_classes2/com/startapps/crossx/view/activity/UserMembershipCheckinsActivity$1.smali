.class Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UserMembershipCheckinsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->fetchUserMembershipCheckin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/Checkin;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    iput p2, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->val$page:I

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Checkin;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 99
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Page-Count"

    .line 104
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 107
    iget v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->val$page:I

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    .line 110
    :goto_1
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 111
    iget v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->val$page:I

    if-ne v1, v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->-$$Nest$fgetcheckins(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->-$$Nest$fgetcheckins(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;->val$page:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->updateItems(Ljava/util/List;IZ)V

    :cond_3
    return-void
.end method
