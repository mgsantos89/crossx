.class Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UsersSameBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/athletes/UsersSameBox;->athetes(Ljava/lang/String;II)V
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
.field final synthetic this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/athletes/UsersSameBox;I)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    iput p2, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->val$page:I

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {v0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

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

    .line 45
    invoke-virtual {p1}, Lretrofit/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    const-string v0, "X-Pagination-Page-Count"

    .line 46
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 47
    iget v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->val$page:I

    if-le p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {v0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->val$page:I

    invoke-interface {v0, p1, v1, p2}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->updateItems(Ljava/util/List;IZ)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    :goto_1
    return-void
.end method
