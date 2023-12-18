.class Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "UsersSameBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/athletes/UsersSameBox;->allAthetes(I)V
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


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {v0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
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

    .line 79
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p2}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, v0}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->updateItems(Ljava/util/List;IZ)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;->this$0:Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-static {p1}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;->errorUpdateItems()V

    :goto_0
    return-void
.end method
