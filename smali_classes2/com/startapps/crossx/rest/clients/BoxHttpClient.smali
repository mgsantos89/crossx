.class public Lcom/startapps/crossx/rest/clients/BoxHttpClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "BoxHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/BoxService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public blockAllFromUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason"

    .line 36
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object p3, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast p3, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/startapps/crossx/rest/interfaces/BoxService;->blockAllFromUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public boxDetail(Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/BoxService;->boxDetail(Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public comments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapps/crossx/rest/interfaces/BoxService;->comments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/BoxService;->delete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public deleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapps/crossx/rest/interfaces/BoxService;->commentDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public editPost(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/squareup/okhttp/RequestBody;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapps/crossx/rest/interfaces/BoxService;->editPostTimeLine(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public likes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapps/crossx/rest/interfaces/BoxService;->likes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public likesPost(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;>;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/BoxService;->likePost(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public postComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapps/crossx/rest/interfaces/BoxService;->commentPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public postComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;)V"
        }
    .end annotation

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason"

    .line 54
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object p3, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast p3, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/startapps/crossx/rest/interfaces/BoxService;->postComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public publish(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/squareup/okhttp/RequestBody;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/BoxService;->publish(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public sendFeedback(Ljava/lang/String;ILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/BoxService;->sendFeedback(Ljava/lang/String;I)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public timeLine(Ljava/lang/String;ILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/BoxService;->timeLine(Ljava/lang/String;I)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public userComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason"

    .line 45
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object p3, p0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->service:Ljava/lang/Object;

    check-cast p3, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/startapps/crossx/rest/interfaces/BoxService;->userComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
