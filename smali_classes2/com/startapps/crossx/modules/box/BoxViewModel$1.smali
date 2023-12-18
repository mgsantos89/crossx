.class Lcom/startapps/crossx/modules/box/BoxViewModel$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "BoxViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/box/BoxViewModel;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/BoxModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/box/BoxViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/box/BoxViewModel;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/modules/box/BoxViewModel$1;->this$0:Lcom/startapps/crossx/modules/box/BoxViewModel;

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

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/modules/box/BoxViewModel$1;->this$0:Lcom/startapps/crossx/modules/box/BoxViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/box/BoxViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/box/BoxViewModel;)Lcom/startapps/crossx/classes/box/BoxContract$View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/box/BoxContract$View;->onUpdateError(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/box/BoxViewModel$1;->this$0:Lcom/startapps/crossx/modules/box/BoxViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/box/BoxViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/box/BoxViewModel;)Lcom/startapps/crossx/classes/box/BoxContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/box/BoxContract$View;->onUpdateError(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcom/startapps/crossx/modules/box/BoxViewModel$1;->this$0:Lcom/startapps/crossx/modules/box/BoxViewModel;

    invoke-static {p2}, Lcom/startapps/crossx/modules/box/BoxViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/box/BoxViewModel;)Lcom/startapps/crossx/classes/box/BoxContract$View;

    move-result-object p2

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/BoxModel;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/classes/box/BoxContract$View;->onUpdateDetail(Lcom/startapps/crossx/model/BoxModel;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/box/BoxViewModel$1;->this$0:Lcom/startapps/crossx/modules/box/BoxViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/box/BoxViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/box/BoxViewModel;)Lcom/startapps/crossx/classes/box/BoxContract$View;

    move-result-object p1

    const-string p2, "Erro ao buscar detahes do box."

    invoke-interface {p1, p2}, Lcom/startapps/crossx/classes/box/BoxContract$View;->onUpdateError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
