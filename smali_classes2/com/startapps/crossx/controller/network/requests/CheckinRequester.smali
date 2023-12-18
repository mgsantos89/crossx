.class public Lcom/startapps/crossx/controller/network/requests/CheckinRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "CheckinRequester.java"


# static fields
.field public static final KEY_GYMPASS_TOKEN:Ljava/lang/String; = "gympass_token"

.field public static final KEY_TIME_ID:Ljava/lang/String; = "time_id"

.field public static final KEY_WORKOUT_ID:Ljava/lang/String; = "workout_id"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public alterCheckin(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getIdWorkout()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "workout_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "time_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_WORKOUT_ALTER_CKECHIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public checkin(Lcom/startapps/crossx/model/WorkoutHours;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getIdWorkout()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "workout_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "time_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "gympass_token"

    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ADD Checkin "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ADD Checkin"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_WORKOUT_CKECHIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public removeCheckin(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getIdWorkout()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "workout_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "time_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "removeCheckin "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "removeCheckin"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_REMOVE_CKECHIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
