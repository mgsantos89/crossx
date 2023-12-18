.class public Lcom/startapps/crossx/model/WorkoutHours;
.super Ljava/lang/Object;
.source "WorkoutHours.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final WORKOUT_HOUR_CHECK_IN_KEY:Ljava/lang/String; = "WorkoutHoursCheckIn"

.field public static final WORKOUT_HOUR_KEY:Ljava/lang/String; = "WorkoutHours"


# instance fields
.field private allowCancel:Z

.field private allowCheckin:Z

.field private coachModel:Lcom/startapps/crossx/model/UserModel;

.field private date:Ljava/lang/String;

.field private didCheckin:Z

.field private enableCheckin:Z

.field private enableGympass:Z

.field private enableWaitingLIst:Z

.field private endTime:Ljava/lang/String;

.field private gympassCheckinOnly:Z

.field private id:J

.field private idWorkout:J

.field private limit:I

.field private myCheckin:Lcom/startapps/crossx/model/CheckInModel;

.field private nameWorkout:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private userModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private users:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->userModelList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/startapps/crossx/model/WorkoutModel;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->userModelList:Ljava/util/List;

    const-string v0, "id"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/model/WorkoutHours;->setId(J)V

    .line 48
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/model/WorkoutHours;->setIdWorkout(J)V

    .line 49
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setDate(Ljava/lang/String;)V

    const-string v0, "startTime"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setStartTime(Ljava/lang/String;)V

    const-string v0, "endTime"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setEndTime(Ljava/lang/String;)V

    const-string v0, "limit"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setLimit(I)V

    const-string/jumbo v0, "user"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setUsers(I)V

    const-string v0, "did_checkin"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setDidCheckin(Z)V

    const-string v0, "allow_checkin"

    .line 56
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setAllowCheckin(Z)V

    const-string v0, "allow_cancel"

    .line 57
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setAllowCancel(Z)V

    const-string/jumbo v0, "waiting_list"

    .line 58
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setEnableWaitingLIst(Z)V

    const-string v0, "gympass_checkin_only"

    .line 59
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/WorkoutHours;->setGympassCheckinOnly(Z)V

    .line 60
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/model/WorkoutHours;->setNameWorkout(Ljava/lang/String;)V

    const-string p2, "gympass"

    .line 62
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/model/WorkoutHours;->setEnableGympass(Z)V

    goto :goto_2

    .line 65
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/model/WorkoutHours;->setEnableGympass(Z)V

    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/model/WorkoutHours;->setEnableGympass(Z)V

    :goto_2
    const-string p2, "coach"

    .line 73
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/startapps/crossx/model/UserModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->coachModel:Lcom/startapps/crossx/model/UserModel;

    :cond_4
    const-string p2, "my_checkin"

    .line 79
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 81
    new-instance v0, Lcom/startapps/crossx/model/CheckInModel;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/startapps/crossx/model/CheckInModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->myCheckin:Lcom/startapps/crossx/model/CheckInModel;

    :cond_5
    const-string/jumbo p2, "users_list"

    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 86
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v1, p2, :cond_7

    .line 87
    new-instance p2, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/startapps/crossx/model/UserModel;-><init>(Lorg/json/JSONObject;)V

    .line 88
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 89
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/BoxModel;->setId(Ljava/lang/String;)V

    .line 91
    :cond_6
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/model/WorkoutHours;->addUsers(Lcom/startapps/crossx/model/UserModel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public addUsers(Lcom/startapps/crossx/model/UserModel;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->userModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public didCheckin()Z
    .locals 3

    .line 373
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/UserModel;

    .line 377
    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public existVacancy()Z
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCoach()Lcom/startapps/crossx/model/UserModel;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->coachModel:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->id:J

    return-wide v0
.end method

.method public getIdWorkout()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->idWorkout:J

    return-wide v0
.end method

.method public getLimit()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->limit:I

    return v0
.end method

.method public getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->myCheckin:Lcom/startapps/crossx/model/CheckInModel;

    return-object v0
.end method

.method public getNameWorkout()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->nameWorkout:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->users:I

    return v0
.end method

.method public getUsersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->userModelList:Ljava/util/List;

    return-object v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowCancel()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->allowCancel:Z

    return v0
.end method

.method public isAllowCheckin()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->allowCheckin:Z

    return v0
.end method

.method public isCheckinEnable()Z
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->allowCheckin:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->overflowLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableWaitingLIst()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isDidCheckin()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->didCheckin:Z

    return v0
.end method

.method public isEnableCheckin()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->enableCheckin:Z

    return v0
.end method

.method public isEnableGympass()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->enableGympass:Z

    return v0
.end method

.method public isEnableWaitingLIst()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->enableWaitingLIst:Z

    return v0
.end method

.method public isGympassCheckinOnly()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/startapps/crossx/model/WorkoutHours;->gympassCheckinOnly:Z

    return v0
.end method

.method public isOnTheWaitingList()Z
    .locals 5

    .line 318
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/UserModel;

    .line 322
    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v0

    if-ge v0, v2, :cond_1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public overflowLimit()Z
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 395
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v1

    if-lt v0, v1, :cond_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAllowCancel(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->allowCancel:Z

    return-void
.end method

.method public setAllowCheckin(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->allowCheckin:Z

    return-void
.end method

.method public setCoach(Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->coachModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->date:Ljava/lang/String;

    return-void
.end method

.method public setDidCheckin(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->didCheckin:Z

    return-void
.end method

.method public setEnableCheckin(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->enableCheckin:Z

    return-void
.end method

.method public setEnableGympass(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->enableGympass:Z

    return-void
.end method

.method public setEnableWaitingLIst(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->enableWaitingLIst:Z

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setGympassCheckinOnly(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->gympassCheckinOnly:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->id:J

    return-void
.end method

.method public setIdWorkout(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->idWorkout:J

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->limit:I

    return-void
.end method

.method public setNameWorkout(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->nameWorkout:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setUsers(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/startapps/crossx/model/WorkoutHours;->users:I

    return-void
.end method
