.class public Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "WorkoutRequester.java"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public assignCoach(JJLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 148
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    const-string/jumbo v1, "workout_id"

    .line 149
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "time_id"

    .line 150
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object p3, Lcom/startapps/crossx/controller/network/URLs;->URL_ASSIGN_COACH:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, p5}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public editResult(Ljava/util/Map;Lcom/startapps/crossx/model/WodsModel;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WokoutCategorie;Ljava/lang/String;ZLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/startapps/crossx/model/WodsModel;",
            "Lcom/startapps/crossx/model/WorkoutHours;",
            "Lcom/startapps/crossx/model/WokoutCategorie;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;",
            ")V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 108
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 109
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WodsModel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "wod_id"

    invoke-virtual {v0, v1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "time_id"

    invoke-virtual {v0, p3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p4}, Lcom/startapps/crossx/model/WokoutCategorie;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "category_id"

    invoke-virtual {v0, p3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "observation"

    .line 113
    invoke-virtual {v0, p2, p5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p2, p6, 0x1

    .line 114
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "has_result"

    invoke-virtual {v0, p3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_1

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 128
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    const-string v1, "result"

    invoke-interface {p5, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "result_type"

    .line 130
    invoke-interface {p5, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "results"

    .line 136
    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object p3, Lcom/startapps/crossx/controller/network/URLs;->URL_EDIT_RESULT_WORKOUT:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, p7}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getWorkoutDay(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 32
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_WORKOUT_DAY:Ljava/lang/String;

    const-string v3, "date"

    invoke-virtual {p0, v3, p1}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public sendResult(Ljava/util/Map;Lcom/startapps/crossx/model/WodsModel;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WokoutCategorie;Ljava/lang/String;ZLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/startapps/crossx/model/WodsModel;",
            "Lcom/startapps/crossx/model/WorkoutHours;",
            "Lcom/startapps/crossx/model/WokoutCategorie;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;",
            ")V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 53
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 54
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WodsModel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "wod_id"

    invoke-virtual {v0, v1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p2

    const-string v1, "enable_timesheet"

    invoke-virtual {p2, v1}, Lcom/startapps/crossx/controller/utils/Preference;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "time_id"

    invoke-virtual {v0, p3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p4}, Lcom/startapps/crossx/model/WokoutCategorie;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "category_id"

    invoke-virtual {v0, p3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "observation"

    .line 61
    invoke-virtual {v0, p2, p5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p2, p6, 0x1

    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "has_result"

    invoke-virtual {v0, p3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_2

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 76
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    const-string v1, "result"

    invoke-interface {p5, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "result_type"

    .line 78
    invoke-interface {p5, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "results"

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object p3, Lcom/startapps/crossx/controller/network/URLs;->URL_ADD_RESULT_WORKOUT:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, p7}, Lcom/startapps/crossx/controller/network/ConnectionController;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    :cond_3
    return-void
.end method
