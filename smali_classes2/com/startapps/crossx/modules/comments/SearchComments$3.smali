.class Lcom/startapps/crossx/modules/comments/SearchComments$3;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "SearchComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/comments/SearchComments;->onPostComment(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lcom/startapps/crossx/model/CommentModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/comments/SearchComments;

.field final synthetic val$completePostListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/comments/SearchComments;Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/SearchComments$3;->this$0:Lcom/startapps/crossx/modules/comments/SearchComments;

    iput-object p2, p0, Lcom/startapps/crossx/modules/comments/SearchComments$3;->val$completePostListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;

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

    .line 158
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments$3;->val$completePostListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments$3;->val$completePostListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;->onError(Lcom/startapps/crossx/rest/error/ResponseError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/CommentModel;

    if-eqz p1, :cond_0

    .line 140
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/CommentModel;->setCreated(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/CommentModel;->setUser(Lcom/startapps/crossx/model/UserModel;)V

    .line 142
    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/SearchComments$3;->val$completePostListener:Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;->onComplete(Lcom/startapps/crossx/model/CommentModel;)V

    :cond_0
    return-void
.end method
