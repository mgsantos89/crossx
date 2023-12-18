.class public Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "WorkoutCollectionPagerAdapter.java"


# instance fields
.field protected dayTrainingListener:Lcom/startapps/crossx/Interfaces/DayTrainingListener;

.field protected workoutModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/Interfaces/DayTrainingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/startapps/crossx/Interfaces/DayTrainingListener;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 26
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;->dayTrainingListener:Lcom/startapps/crossx/Interfaces/DayTrainingListener;

    .line 27
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;->workoutModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;->workoutModelList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v1, p1, 0x1

    const-string v2, "object"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;->workoutModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string/jumbo v1, "workout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
    sget-object p1, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->Companion:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;->dayTrainingListener:Lcom/startapps/crossx/Interfaces/DayTrainingListener;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;->newInstance(Lcom/startapps/crossx/Interfaces/DayTrainingListener;Z)Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;->workoutModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
