.class public Lcom/startapps/crossx/controller/network/requests/RankingRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "RankingRequester.java"


# static fields
.field public static final KEY_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_WORKOUT_ID:Ljava/lang/String; = "workout_id"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public getRanking(Lcom/startapps/crossx/model/WorkoutModel;ILcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 37
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "workout_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "filter"

    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_RANKING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    :cond_1
    return-void
.end method
