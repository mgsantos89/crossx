.class Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UserMembershipsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->fetchUserMembershipsPerType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/UserMembership;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    iput p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->val$page:I

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

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->errorUpdateItems()V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Throwable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->errorUpdateItems()V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Page-Count"

    .line 133
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 136
    iget v2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->val$page:I

    if-le p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 139
    :goto_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 140
    iget v1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->val$page:I

    if-ne v1, v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->-$$Nest$fgetuserMemberships(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->-$$Nest$fgetuserMemberships(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->val$page:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->updateItems(Ljava/util/List;IZ)V

    goto :goto_1

    .line 147
    :cond_2
    iget p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->val$page:I

    if-ne p2, v0, :cond_4

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 148
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
