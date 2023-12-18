.class Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "TimelineViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->onEditPublication(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
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

    .line 184
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    iput-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

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
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

    invoke-virtual {p2}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getPostId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$mgetPost(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Ljava/lang/String;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

    invoke-virtual {p2}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/TimeLineModel;->setText(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onUpdatedPostTimeLine()V

    :cond_0
    return-void
.end method
