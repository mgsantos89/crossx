.class public Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "UserWorkoutRequester.java"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public allWorkout(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_ALL_WORKOUT:Ljava/lang/String;

    const-string v3, "filter"

    invoke-virtual {p0, v3, p1}, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getUserWorkoutDay(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_WORKOUT:Ljava/lang/String;

    const-string v3, "filter"

    invoke-virtual {p0, v3, p1}, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
