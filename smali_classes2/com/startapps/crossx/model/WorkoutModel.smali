.class public Lcom/startapps/crossx/model/WorkoutModel;
.super Ljava/lang/Object;
.source "WorkoutModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final WORKOUT_CHECKIN_PROGRAM:Ljava/lang/String; = "checkin_program"


# instance fields
.field protected date:Ljava/lang/String;

.field protected id:J

.field protected myCheckin:Lcom/startapps/crossx/model/CheckInModel;

.field protected name:Ljava/lang/String;

.field private programModel:Lcom/startapps/crossx/model/CategoryModel;

.field protected tecniquesModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TecniquesModel;",
            ">;"
        }
    .end annotation
.end field

.field protected warmupsModellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WarmupsModel;",
            ">;"
        }
    .end annotation
.end field

.field protected wodsModellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WodsModel;",
            ">;"
        }
    .end annotation
.end field

.field protected worWokoutCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WokoutCategorie;",
            ">;"
        }
    .end annotation
.end field

.field protected workoutHoursList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutHours;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->tecniquesModelList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->warmupsModellList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->wodsModellList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->workoutHoursList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->worWokoutCategories:Ljava/util/List;

    const-string v0, "id"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/model/WorkoutModel;->setId(J)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/model/WorkoutModel;->setName(Ljava/lang/String;)V

    const-string p2, "date"

    .line 33
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/model/WorkoutModel;->setDate(Ljava/lang/String;)V

    const-string p2, "my_checkin"

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/startapps/crossx/model/CheckInModel;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/CheckInModel;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->myCheckin:Lcom/startapps/crossx/model/CheckInModel;

    :cond_0
    return-void
.end method


# virtual methods
.method public addCategorie(Lcom/startapps/crossx/model/WokoutCategorie;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->worWokoutCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTecniquesModelList(Lcom/startapps/crossx/model/TecniquesModel;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->tecniquesModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWarmupsModellList(Lcom/startapps/crossx/model/WarmupsModel;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->warmupsModellList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWodsModellList(Lcom/startapps/crossx/model/WodsModel;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->wodsModellList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addworkoutHours(Lcom/startapps/crossx/model/WorkoutHours;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->workoutHoursList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public existWods()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->wodsModellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WokoutCategorie;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->worWokoutCategories:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->id:J

    return-wide v0
.end method

.method public getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->myCheckin:Lcom/startapps/crossx/model/CheckInModel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram()Lcom/startapps/crossx/model/CategoryModel;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->programModel:Lcom/startapps/crossx/model/CategoryModel;

    return-object v0
.end method

.method public getTecniquesModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TecniquesModel;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->tecniquesModelList:Ljava/util/List;

    return-object v0
.end method

.method public getWarmupsModellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WarmupsModel;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->warmupsModellList:Ljava/util/List;

    return-object v0
.end method

.method public getWodsModellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WodsModel;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->wodsModellList:Ljava/util/List;

    return-object v0
.end method

.method public getWorkoutHoursIsCheckIn()Lcom/startapps/crossx/model/WorkoutHours;
    .locals 5

    .line 142
    invoke-virtual {p0}, Lcom/startapps/crossx/model/WorkoutModel;->getworkoutHours()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/WorkoutHours;

    .line 144
    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/UserModel;

    .line 149
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

    if-eqz v3, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getworkoutHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutHours;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->workoutHoursList:Ljava/util/List;

    return-object v0
.end method

.method public isWodToResult()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/model/WorkoutModel;->wodsModellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/WodsModel;

    .line 132
    invoke-virtual {v1}, Lcom/startapps/crossx/model/WodsModel;->isResultSent()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutModel;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/startapps/crossx/model/WorkoutModel;->id:J

    return-void
.end method

.method public setMyCheckin(Lcom/startapps/crossx/model/CheckInModel;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutModel;->myCheckin:Lcom/startapps/crossx/model/CheckInModel;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setProgramModel(Lcom/startapps/crossx/model/CategoryModel;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutModel;->programModel:Lcom/startapps/crossx/model/CategoryModel;

    return-void
.end method
