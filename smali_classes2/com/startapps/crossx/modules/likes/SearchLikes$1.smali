.class Lcom/startapps/crossx/modules/likes/SearchLikes$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "SearchLikes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/likes/SearchLikes;->getData(Ljava/lang/String;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/LikesModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/likes/SearchLikes;

.field final synthetic val$listener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/likes/SearchLikes;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/SearchLikes$1;->this$0:Lcom/startapps/crossx/modules/likes/SearchLikes;

    iput-object p2, p0, Lcom/startapps/crossx/modules/likes/SearchLikes$1;->val$listener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/SearchLikes$1;->val$listener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/SearchLikes$1;->val$listener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;->onError(Lcom/startapps/crossx/rest/error/ResponseError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Current-Page"

    .line 56
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Pagination-Page-Count"

    .line 57
    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p2, 0x1

    move v1, p2

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/startapps/crossx/modules/likes/SearchLikes$1;->val$listener:Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p2, p1, v1}, Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;->onComplete(Ljava/util/List;Z)V

    return-void
.end method
