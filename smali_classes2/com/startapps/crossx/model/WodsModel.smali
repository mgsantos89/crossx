.class public Lcom/startapps/crossx/model/WodsModel;
.super Ljava/lang/Object;
.source "WodsModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected exercises:Ljava/lang/String;

.field protected id:J

.field protected listResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserResultModel;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected resultSent:Z

.field protected resultTypeId:J

.field protected resultTypeName:Ljava/lang/String;

.field protected workoutVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutVideoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/startapps/crossx/model/WodsModel;->setId(J)V

    const-string v1, "name"

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/model/WodsModel;->setName(Ljava/lang/String;)V

    const-string v2, "exercises"

    .line 34
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/model/WodsModel;->setExercises(Ljava/lang/String;)V

    const-string v2, "result_sent"

    .line 35
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/model/WodsModel;->setResultSent(Z)V

    const-string v2, "result_types"

    .line 37
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 40
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/model/WodsModel;->setResultTypeName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/model/WodsModel;->setResultTypeId(J)V

    :cond_0
    const-string/jumbo v0, "user_result"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v4

    .line 47
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/startapps/crossx/model/WodsModel;->listResults:Ljava/util/List;

    if-nez v2, :cond_1

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/startapps/crossx/model/WodsModel;->listResults:Ljava/util/List;

    .line 53
    :cond_1
    new-instance v2, Lcom/startapps/crossx/model/UserResultModel;

    const-string v3, "result_observation"

    .line 54
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, p0}, Lcom/startapps/crossx/model/UserResultModel;-><init>(Lorg/json/JSONArray;Ljava/lang/String;Lcom/startapps/crossx/model/WodsModel;)V

    .line 56
    iget-object v3, p0, Lcom/startapps/crossx/model/WodsModel;->listResults:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "workout_videos"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 62
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->workoutVideos:Ljava/util/List;

    if-nez v0, :cond_3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->workoutVideos:Ljava/util/List;

    .line 67
    :cond_3
    :try_start_0
    new-instance v0, Lcom/startapps/crossx/model/WorkoutVideoModel;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapps/crossx/model/WorkoutVideoModel;-><init>(Lorg/json/JSONObject;)V

    .line 68
    iget-object v1, p0, Lcom/startapps/crossx/model/WodsModel;->workoutVideos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getExercises()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->exercises:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/startapps/crossx/model/WodsModel;->id:J

    return-wide v0
.end method

.method public getListResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserResultModel;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->listResults:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResultTypeId()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/startapps/crossx/model/WodsModel;->resultTypeId:J

    return-wide v0
.end method

.method public getResultTypeName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->resultTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkoutVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutVideoModel;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/model/WodsModel;->workoutVideos:Ljava/util/List;

    return-object v0
.end method

.method public getWorkoutVideosJSON()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/startapps/crossx/model/WodsModel;->workoutVideos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isResultSent()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WodsModel;->resultSent:Z

    return v0
.end method

.method public setExercises(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/startapps/crossx/model/WodsModel;->exercises:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/startapps/crossx/model/WodsModel;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/startapps/crossx/model/WodsModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setResultSent(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WodsModel;->resultSent:Z

    return-void
.end method

.method public setResultTypeId(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/startapps/crossx/model/WodsModel;->resultTypeId:J

    return-void
.end method

.method public setResultTypeName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/startapps/crossx/model/WodsModel;->resultTypeName:Ljava/lang/String;

    return-void
.end method
