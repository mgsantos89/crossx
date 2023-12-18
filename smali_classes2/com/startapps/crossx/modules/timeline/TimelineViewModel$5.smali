.class Lcom/startapps/crossx/modules/timeline/TimelineViewModel$5;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "TimelineViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->onLikePost(ZLcom/startapps/crossx/model/TimeLineModel;)V
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
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$5;->this$0:Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

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
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    return-void
.end method
