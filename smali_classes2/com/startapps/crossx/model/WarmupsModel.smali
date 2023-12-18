.class public Lcom/startapps/crossx/model/WarmupsModel;
.super Ljava/lang/Object;
.source "WarmupsModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected exercises:Ljava/lang/String;

.field protected id:J

.field protected name:Ljava/lang/String;

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
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WarmupsModel;->setName(Ljava/lang/String;)V

    const-string v0, "exercises"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WarmupsModel;->setExercises(Ljava/lang/String;)V

    const-string/jumbo v0, "workout_videos"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/startapps/crossx/model/WarmupsModel;->workoutVideos:Ljava/util/List;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/model/WarmupsModel;->workoutVideos:Ljava/util/List;

    .line 34
    :cond_0
    :try_start_0
    new-instance v1, Lcom/startapps/crossx/model/WorkoutVideoModel;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startapps/crossx/model/WorkoutVideoModel;-><init>(Lorg/json/JSONObject;)V

    .line 35
    iget-object v2, p0, Lcom/startapps/crossx/model/WarmupsModel;->workoutVideos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getExercises()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/model/WarmupsModel;->exercises:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/startapps/crossx/model/WarmupsModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/model/WarmupsModel;->name:Ljava/lang/String;

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

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/model/WarmupsModel;->workoutVideos:Ljava/util/List;

    return-object v0
.end method

.method public getWorkoutVideosJSON()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/startapps/crossx/model/WarmupsModel;->workoutVideos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExercises(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/model/WarmupsModel;->exercises:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/startapps/crossx/model/WarmupsModel;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/startapps/crossx/model/WarmupsModel;->name:Ljava/lang/String;

    return-void
.end method
