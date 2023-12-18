.class Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "TimelineViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->postComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/startapps/crossx/model/TimelineActionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

.field final synthetic val$model:Lcom/startapps/crossx/model/TimeLineModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    iput-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

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

    .line 388
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 373
    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {p2}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/TimelineActionResponse;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimelineActionResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onSuccessReason(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V

    return-void
.end method
