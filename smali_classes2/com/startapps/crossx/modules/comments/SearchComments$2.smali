.class Lcom/startapps/crossx/modules/comments/SearchComments$2;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "SearchComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/comments/SearchComments;->onDeleteComment(Ljava/lang/String;Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/comments/SearchComments;

.field final synthetic val$deleteCommentListener:Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/comments/SearchComments;Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/SearchComments$2;->this$0:Lcom/startapps/crossx/modules/comments/SearchComments;

    iput-object p2, p0, Lcom/startapps/crossx/modules/comments/SearchComments$2;->val$deleteCommentListener:Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;

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

    .line 125
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments$2;->val$deleteCommentListener:Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/SearchComments$2;->val$deleteCommentListener:Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;->onError(Lcom/startapps/crossx/rest/error/ResponseError;)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/SearchComments$2;->val$deleteCommentListener:Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;->onComplete(Z)V

    return-void
.end method
