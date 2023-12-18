.class public Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "WorkoutClassesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final CHECK_IN_SUCESS:I = 0x78


# instance fields
.field private classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

.field public listWorkoutClasses:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1202b2

    .line 102
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0027

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x78

    if-ne p2, p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->defineToolbar()V

    .line 55
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "workout"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->finish()V

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutModel;

    .line 62
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getworkoutHours()Ljava/util/List;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity$1;-><init>(Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    new-instance v0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getworkoutHours()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;-><init>(Landroid/content/Context;Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;Ljava/util/List;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    .line 75
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    .line 116
    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    const/4 p2, 0x0

    .line 114
    invoke-static {p0, p1, p2}, Lcom/startapps/crossx/controller/utils/Intents;->goToWorkoutHour(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x78

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 86
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method
