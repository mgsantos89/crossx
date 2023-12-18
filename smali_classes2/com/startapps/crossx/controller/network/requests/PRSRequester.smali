.class public Lcom/startapps/crossx/controller/network/requests/PRSRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "PRSRequester.java"


# static fields
.field public static final KEY_BENCHMARK_ID:Ljava/lang/String; = "benchmark_id"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_EXERCISE_ID:Ljava/lang/String; = "exercise_id"

.field public static final KEY_PAGE:Ljava/lang/String; = "page"

.field public static final KEY_PR_ID:Ljava/lang/String; = "pr_id"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public deletePersonalRecord(JLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pr_id"

    .line 111
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_PERSONAL_RECORD_DELETE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public editPersonalRecord(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pr_id"

    .line 97
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "result"

    .line 98
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "date"

    .line 99
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "type"

    .line 100
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    .line 101
    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object p3, Lcom/startapps/crossx/controller/network/URLs;->URL_PERSONAL_RECORD_UPDATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, p7}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getAll(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "user_id"

    .line 41
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_PERSONAL_RECORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public getPRSWhithBenchmarks(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/BenchmarksModel;ILcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 50
    iget-object p3, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 52
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-virtual {p2}, Lcom/startapps/crossx/model/BenchmarksModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "benchmark_id"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo p2, "user_id"

    .line 57
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v0, Lcom/startapps/crossx/controller/network/URLs;->URL_PERSONAL_RECORD_EXERCISE:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    :cond_1
    return-void
.end method

.method public getPersonalRecordsDetails(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/ExercisesModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ExercisesModel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "exercise_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo p2, "user_id"

    .line 72
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v1, Lcom/startapps/crossx/controller/network/URLs;->URL_PERSONAL_RECORD_EXERCISE_HISTORIC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method

.method public sendPersonalRecord(Lcom/startapps/crossx/model/ExercisesModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "exercise_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "result"

    .line 84
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "date"

    .line 85
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "type"

    .line 86
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    .line 87
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object p2, p0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object p3, Lcom/startapps/crossx/controller/network/URLs;->URL_PERSONAL_RECORD_SAVE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, p6}, Lcom/startapps/crossx/controller/network/ConnectionController;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
