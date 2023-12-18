.class Lcom/startapps/crossx/view/activity/CreateGroupActivity$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "CreateGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getUsers()V
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreateGroupActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;

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

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
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

    .line 160
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 161
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->userModels:Ljava/util/List;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
