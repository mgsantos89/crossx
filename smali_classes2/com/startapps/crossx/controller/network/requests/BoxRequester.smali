.class public Lcom/startapps/crossx/controller/network/requests/BoxRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "BoxRequester.java"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public getBox(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    const-string v2, "str"

    invoke-virtual {p0, v2, p1}, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object p1

    const-string v2, "https://api.appcrossx.com/v3/box/search"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getTimeLine(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-static {p1}, Lcom/startapps/crossx/controller/network/URLs;->getUrlTimeLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public postComment(Ljava/lang/String;[BLjava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "text"

    .line 52
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object p3, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-static {p1}, Lcom/startapps/crossx/controller/network/URLs;->getUrlBoxPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    const-string v2, "imageFile"

    const-string v3, "image.jpeg"

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->addParams(Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Ljava/lang/String;[B)Lcom/loopj/android/http/RequestParams;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object p2

    .line 56
    :goto_0
    invoke-virtual {p3, v1, p1, p2, p4}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public removePost(Ljava/lang/String;Lcom/startapps/crossx/model/TimeLineModel;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 41
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "post_id"

    .line 42
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-static {p1}, Lcom/startapps/crossx/controller/network/URLs;->getUrlRemovePost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/BoxRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
