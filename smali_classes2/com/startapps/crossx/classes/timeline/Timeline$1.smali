.class Lcom/startapps/crossx/classes/timeline/Timeline$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/timeline/Timeline;->onFeatchPublicationsPage(Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/timeline/Timeline;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    iput p2, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->val$page:I

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    invoke-static {p1}, Lcom/startapps/crossx/classes/timeline/Timeline;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/timeline/Timeline;)Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    invoke-static {p1}, Lcom/startapps/crossx/classes/timeline/Timeline;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/timeline/Timeline;)Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;->errorUpdateItems()V

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

    .line 48
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Page-Count"

    .line 49
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 52
    iget v1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->val$page:I

    if-le p2, v1, :cond_0

    const/4 p2, 0x1

    move v0, p2

    .line 55
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

    .line 56
    iget-object p2, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    invoke-static {p2}, Lcom/startapps/crossx/classes/timeline/Timeline;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/timeline/Timeline;)Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    move-result-object p2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$1;->val$page:I

    invoke-interface {p2, p1, v1, v0}, Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;->updateItems(Ljava/util/List;IZ)V

    :cond_1
    return-void
.end method
