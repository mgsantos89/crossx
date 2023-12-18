.class Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "CreditCardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardListActivity;->fetchCreditCardList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/UserCreditCard;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 114
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "response credit card"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fputuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Ljava/util/List;)V

    .line 118
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    new-instance p2, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {v2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetisSelectCreditCard(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Z

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnCreditCardListener;Z)V

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fputcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Lcom/startapps/crossx/view/adapter/CreditCardAdapter;)V

    .line 119
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->listCreditCard:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$fgetuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
