.class public Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "ClassesWorkoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/WorkoutHours;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutHours;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 3

    .line 40
    check-cast p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;

    .line 41
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/WorkoutHours;

    .line 43
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p3

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 45
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    .line 46
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getImageUser()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080172

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 45
    invoke-virtual {p3, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getDayWeek()Landroid/widget/TextView;

    move-result-object p3

    .line 55
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE"

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getDayMonth()Landroid/widget/TextView;

    move-result-object p3

    .line 60
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd"

    invoke-static {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getWorkout()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getNameWorkout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getHour()Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getLimit()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->formtCheckIns(Lcom/startapps/crossx/model/WorkoutHours;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->didCheckin()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06005e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getMarker()Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060158

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->getMarker()Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected formtCheckIns(Lcom/startapps/crossx/model/WorkoutHours;)Ljava/lang/String;
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120286

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 97
    new-instance v0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d0093

    return v0
.end method
