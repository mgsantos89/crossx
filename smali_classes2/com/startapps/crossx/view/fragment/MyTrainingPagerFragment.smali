.class public Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;
.source "MyTrainingPagerFragment.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/ResultWodListener;


# static fields
.field public static final ARG_OBJECT:Ljava/lang/String; = "object"

.field public static final ITEM_CAPTION:Ljava/lang/String; = "caption"

.field public static final ITEM_TITLE:Ljava/lang/String; = "title"

.field public static final ITEM_VIDEOS:Ljava/lang/String; = "videos"


# instance fields
.field protected adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

.field private currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

.field protected listWorkout:Landroid/widget/ListView;

.field private onFinishEditTrainingResultListener:Lcom/startapps/crossx/Interfaces/OnFinishEditTrainingResultListener;

.field private workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;-><init>()V

    return-void
.end method

.method private getCategoriByName(Ljava/lang/String;)Lcom/startapps/crossx/model/WokoutCategorie;
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/WokoutCategorie;

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    invoke-virtual {v1}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static newInstance(Lcom/startapps/crossx/model/WorkoutModel;)Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;
    .locals 1

    .line 50
    new-instance v0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;-><init>()V

    .line 51
    iput-object p0, v0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    return-object v0
.end method

.method private populateListWorkout()V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    if-eqz v0, :cond_7

    .line 129
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getWarmupsModellList()Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 132
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/WarmupsModel;

    .line 134
    invoke-virtual {v3}, Lcom/startapps/crossx/model/WarmupsModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/startapps/crossx/model/WarmupsModel;->getExercises()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/startapps/crossx/model/WarmupsModel;->getWorkoutVideosJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->createItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    sget-object v3, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WARMUPS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->getText()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 137
    invoke-virtual {v0, v3, v4}, Lcom/startapps/crossx/view/adapter/TesteAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getTecniquesModelList()Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 144
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/TecniquesModel;

    .line 147
    invoke-virtual {v3}, Lcom/startapps/crossx/model/TecniquesModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/startapps/crossx/model/TecniquesModel;->getExercises()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/startapps/crossx/model/TecniquesModel;->getWorkoutVideosJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->createItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    sget-object v3, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->TECNIQUES:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->getText()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    .line 151
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 150
    invoke-virtual {v0, v3, v4}, Lcom/startapps/crossx/view/adapter/TesteAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getWodsModellList()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/WodsModel;

    .line 161
    invoke-virtual {v4}, Lcom/startapps/crossx/model/WodsModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/startapps/crossx/model/WodsModel;->getExercises()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/startapps/crossx/model/WodsModel;->getWorkoutVideosJSON()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->createItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v4}, Lcom/startapps/crossx/model/WodsModel;->getListResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 165
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/UserResultModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    sget-object v4, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->WODS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->getText()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    .line 170
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v1, v2}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 169
    invoke-virtual {v0, v4, v5}, Lcom/startapps/crossx/view/adapter/TesteAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 172
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    sget-object v1, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->RESULTS:Lcom/startapps/crossx/model/enuns/WorkoutEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/WorkoutEnum;->getText()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;

    .line 174
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v3, p0}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/ResultWodListener;)V

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/adapter/TesteAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->listWorkout:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public createItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "title"

    .line 197
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "caption"

    .line 198
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "videos"

    .line 199
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d00f2

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onAddResult(Lcom/startapps/crossx/model/WorkoutModel;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onAttach(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    .line 115
    check-cast p1, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->onFinishEditTrainingResultListener:Lcom/startapps/crossx/Interfaces/OnFinishEditTrainingResultListener;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 121
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 122
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onDestroy()V

    return-void
.end method

.method public onEditResult(ILcom/startapps/crossx/model/UserResultModel;)V
    .locals 0

    .line 206
    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

    .line 207
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    .line 208
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserResultModel;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getCategoriByName(Ljava/lang/String;)Lcom/startapps/crossx/model/WokoutCategorie;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    .line 209
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserResultModel;->getWod()Lcom/startapps/crossx/model/WodsModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->showViewResult(Lcom/startapps/crossx/model/WodsModel;)V

    return-void
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method protected onUpdateResult(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserResultModel;->allResults()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 79
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/startapps/crossx/model/UserResultModel;->setResult(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/UserResultModel;->setResultObs(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/UserResultModel;->setCategory(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->currentItemEdit:Lcom/startapps/crossx/model/UserResultModel;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/UserResultModel;->setWod(Lcom/startapps/crossx/model/WodsModel;)V

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TesteAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->onFinishEditTrainingResultListener:Lcom/startapps/crossx/Interfaces/OnFinishEditTrainingResultListener;

    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/OnFinishEditTrainingResultListener;->onFinishEditTrainingResult()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p2

    const-string v0, "Calend\u00e1rio - Detalhe do treino"

    invoke-virtual {p2, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 102
    iput-boolean p2, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->isEditResult:Z

    const p2, 0x7f0a02b5

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->listWorkout:Landroid/widget/ListView;

    .line 105
    new-instance p1, Lcom/startapps/crossx/view/adapter/TesteAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/startapps/crossx/view/adapter/TesteAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/TesteAdapter;

    .line 107
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->populateListWorkout()V

    return-void
.end method
