.class public Lcom/startapps/crossx/controller/network/requests/GroupRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "GroupRequester.java"


# static fields
.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_USERS:Ljava/lang/String; = "users"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public adduserGroup(Ljava/lang/String;[Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 59
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    const-string v1, "group_id"

    .line 60
    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "users"

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_ADD_USERS_GROUP:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public createGroup(Ljava/lang/String;[Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    const-string v1, "name"

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "users"

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_CREATE_GROUP:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public deleteGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "group_id"

    .line 43
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_DELETE_GROUP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public deleteUserGroup(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "group_id"

    .line 69
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object p1, Lcom/startapps/crossx/model/key/UserKey;->USER_ID:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_USERS_DELETE_GROUP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getTimelineGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "group_id"

    .line 35
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_GROUP_MESSAGES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getUserGroup(Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_GROUP_USER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getUsersOfGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "group_id"

    .line 89
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USERS_GROUP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "group_id"

    .line 78
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "message"

    .line 79
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_POST_MESAAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
