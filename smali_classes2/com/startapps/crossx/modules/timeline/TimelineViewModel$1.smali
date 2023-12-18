.class Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "TimelineViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->onFeatchPublicationsPage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/TimeLineModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    iput p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->val$page:I

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

    .line 126
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->errorUpdateItems()V

    .line 127
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
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->errorUpdateItems()V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Page-Count"

    .line 102
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 105
    iget v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->val$page:I

    if-le p2, v1, :cond_0

    const/4 p2, 0x1

    move v0, p2

    .line 108
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 109
    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {p2}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object p2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;->val$page:I

    invoke-interface {p2, p1, v1, v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->updateItems(Ljava/util/List;IZ)V

    :cond_1
    return-void
.end method
