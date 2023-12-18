.class Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "ChampionshipFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getChampionships(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/ChampionshipModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;I)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    iput p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->val$page:I

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

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->errorUpdateItems()V

    .line 181
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

    .line 169
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->errorUpdateItems()V

    .line 170
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Page-Count"

    .line 136
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 139
    iget v2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->val$page:I

    if-le p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 142
    :goto_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 143
    iget v2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->val$page:I

    if-ne v2, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->-$$Nest$fgetchampionshipModelList(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 149
    new-instance v0, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/ChampionshipModel;-><init>()V

    .line 150
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/startapps/crossx/model/ChampionshipModel;->setId(J)V

    .line 151
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ChampionshipModel;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getPicture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ChampionshipModel;->setPicture(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ChampionshipModel;->setStatus(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ChampionshipModel;->setStartDate(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ChampionshipModel;->setEndDate(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/startapps/crossx/model/ChampionshipModel;->setLatitude(D)V

    .line 157
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/startapps/crossx/model/ChampionshipModel;->setLongitude(D)V

    .line 158
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ChampionshipModel;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ChampionshipModel;->setLocation(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-static {v2}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->-$$Nest$fgetchampionshipModelList(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;->val$page:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->updateItems(Ljava/util/List;IZ)V

    :cond_3
    return-void
.end method
