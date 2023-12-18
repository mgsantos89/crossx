.class Lcom/startapps/crossx/classes/athletes/UsersGroup$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UsersGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/athletes/UsersGroup;->athetes(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/UserModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/athletes/UsersGroup;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

    iput p2, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->val$page:I

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

    invoke-static {v0}, Lcom/startapps/crossx/classes/athletes/UsersGroup;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersGroup;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Throwable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResponseError"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersGroup;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersGroup;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResponseError"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersGroup;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersGroup;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Total-Count"

    .line 43
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 44
    iget v0, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->val$page:I

    if-le p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

    invoke-static {v0}, Lcom/startapps/crossx/classes/athletes/UsersGroup;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersGroup;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->val$page:I

    invoke-interface {v0, p1, v1, p2}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->updateItems(Ljava/util/List;IZ)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersGroup;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersGroup;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersGroup;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    :goto_1
    return-void
.end method
