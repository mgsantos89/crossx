.class Lcom/startapps/crossx/classes/timeline/Timeline$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/timeline/Timeline;->onPublish(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
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
.field final synthetic this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

.field final synthetic val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/classes/timeline/Timeline;Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$2;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    iput-object p2, p0, Lcom/startapps/crossx/classes/timeline/Timeline$2;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

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

    .line 100
    iget-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$2;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    invoke-static {p1}, Lcom/startapps/crossx/classes/timeline/Timeline;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/timeline/Timeline;)Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/Timeline$2;->val$timelinePublishBody:Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;->onPublishError(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

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

    .line 95
    iget-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline$2;->this$0:Lcom/startapps/crossx/classes/timeline/Timeline;

    invoke-static {p1}, Lcom/startapps/crossx/classes/timeline/Timeline;->-$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/timeline/Timeline;)Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;->onPublishSuccess()V

    return-void
.end method
