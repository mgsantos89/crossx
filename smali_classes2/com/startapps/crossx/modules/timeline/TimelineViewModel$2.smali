.class Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "TimelineViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->onPublish(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

.field final synthetic val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    iput-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

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
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onPublishError(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onPublishSuccess()V

    return-void
.end method
