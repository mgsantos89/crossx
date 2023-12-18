.class public Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserWorkoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;,
        Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/WorkoutModel;",
        ">;"
    }
.end annotation


# instance fields
.field private filter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;

.field objectsFiltable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;"
        }
    .end annotation
.end field

.field private onAddResult:Lcom/startapps/crossx/Interfaces/ResultWodListener;

.field originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetonAddResult(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;)Lcom/startapps/crossx/Interfaces/ResultWodListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->onAddResult:Lcom/startapps/crossx/Interfaces/ResultWodListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misContainName(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->isContainName(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTecniquesModelList(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->isTecniquesModelList(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWarmupsModellList(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->isWarmupsModellList(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWodsModellList(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->isWodsModellList(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWorWokoutCategories(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->isWorWokoutCategories(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/ResultWodListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;",
            "Lcom/startapps/crossx/Interfaces/ResultWodListener;",
            "Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 43
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->onAddResult:Lcom/startapps/crossx/Interfaces/ResultWodListener;

    .line 45
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->objectsFiltable:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->originalList:Ljava/util/List;

    .line 48
    invoke-static {p1, p2}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private isContainName(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 0

    .line 237
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private isTecniquesModelList(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 3

    .line 242
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getTecniquesModelList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/TecniquesModel;

    .line 244
    invoke-virtual {v0}, Lcom/startapps/crossx/model/TecniquesModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/startapps/crossx/model/TecniquesModel;->getExercises()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isWarmupsModellList(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 3

    .line 255
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getWarmupsModellList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WarmupsModel;

    .line 257
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WarmupsModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WarmupsModel;->getExercises()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isWodsModellList(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 3

    .line 269
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getWodsModellList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WodsModel;

    .line 271
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->getExercises()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isWorWokoutCategories(Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 2

    .line 282
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getAllCategories()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WokoutCategorie;

    .line 284
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 9

    .line 75
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;

    .line 77
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/WorkoutModel;

    .line 78
    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutModel;->getworkoutHours()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/WorkoutHours;

    .line 84
    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutModel;->existWods()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutModel;->isWodToResult()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    .line 86
    :goto_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getHour()Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/startapps/crossx/model/WorkoutHours;->getEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v4, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    if-eqz v5, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getHour()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1202ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v4, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :goto_1
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getDayMonth()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutModel;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dd"

    const-string/jumbo v6, "yyyy-MM-dd"

    invoke-static {v4, v6, v5}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getDayWeek()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutModel;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EEE"

    invoke-static {v4, v6, v5}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getWorkout()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/startapps/crossx/model/WorkoutModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;I)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getHour()Landroid/widget/TextView;

    move-result-object p2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    move p3, v2

    goto :goto_2

    :cond_3
    move p3, v3

    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getDayMonth()Landroid/widget/TextView;

    move-result-object p2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v3

    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getDayWeek()Landroid/widget/TextView;

    move-result-object p2

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_5

    move p3, v2

    goto :goto_4

    :cond_5
    move p3, v3

    :goto_4
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->getWorkout()Landroid/widget/TextView;

    move-result-object p2

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    iget-object p2, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 119
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->filter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;-><init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter-IA;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->filter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->filter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;

    return-object v0
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 124
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00b5

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
