.class public Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "ClassesMonthFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;


# instance fields
.field public calendarView:Lcom/startapps/crossx/view/calendar/MonthView;

.field private classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

.field private currentDate:Ljava/lang/String;

.field public listWorkoutClasses:Landroid/widget/ListView;

.field public progressBar:Landroid/widget/ProgressBar;

.field protected workoutHoursList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutHours;",
            ">;"
        }
    .end annotation
.end field

.field private workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;


# direct methods
.method static bridge synthetic -$$Nest$fgetclassesWorkoutAdapter(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDate(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->currentDate:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    return-void
.end method

.method private hourCheckInProgram(Ljava/lang/String;)Lcom/startapps/crossx/model/WorkoutHours;
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/WorkoutHours;

    .line 263
    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getNameWorkout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->didCheckin()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected atribuirTreino(JJ)V
    .locals 8

    .line 273
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202ae

    .line 274
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 277
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    new-instance v7, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;

    .line 278
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v1, p0, v3, v0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;-><init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {v7, v1}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    move-wide v3, p1

    move-wide v5, p3

    .line 277
    invoke-virtual/range {v2 .. v7}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->assignCoach(JJLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d008b

    return v0
.end method

.method protected getWorkoutDay(Ljava/lang/String;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v2, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;

    .line 142
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v2, p0, v3}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v1, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    .line 141
    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->getWorkoutDay(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected isSentResult(Lcom/startapps/crossx/model/WorkoutModel;)Z
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getWodsModellList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WodsModel;

    .line 129
    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->isResultSent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDateCLick(Ljava/util/Date;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->notifyDataSetChanged()V

    const-string/jumbo v0, "yyyy-MM-dd"

    .line 255
    invoke-static {p1, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->currentDate:Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getWorkoutDay(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 105
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 106
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    .line 108
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Check-in"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->currentDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getWorkoutDay(Ljava/lang/String;)V

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

    .line 205
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getNameWorkout()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->hourCheckInProgram(Ljava/lang/String;)Lcom/startapps/crossx/model/WorkoutHours;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p4, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    invoke-virtual {p4, p3}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-static {p2, p3, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToWorkoutHour(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 214
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    .line 216
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/startapps/crossx/model/enuns/UsersRole;->COACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 217
    invoke-virtual {p3}, Lcom/startapps/crossx/model/enuns/UsersRole;->geRole()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 218
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/startapps/crossx/model/enuns/UsersRole;->HEADCOACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 219
    invoke-virtual {p3}, Lcom/startapps/crossx/model/enuns/UsersRole;->geRole()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 222
    new-instance p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f12011b

    .line 223
    invoke-virtual {p0, p3}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 224
    invoke-virtual {p2, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    const p4, 0x7f12022e

    .line 225
    invoke-virtual {p0, p4}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    const p4, 0x7f060034

    .line 226
    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    const p4, 0x7f0600b6

    .line 227
    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    const p4, 0x7f1201f1

    .line 228
    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    const p4, 0x7f1201ea

    .line 229
    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p2

    new-instance p4, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;

    invoke-direct {p4, p0, p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;-><init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Lcom/startapps/crossx/model/WorkoutHours;)V

    .line 230
    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    .line 98
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Check-in"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->currentDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getWorkoutDay(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    new-instance p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    invoke-direct {p1, p2, p0, v0}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;-><init>(Landroid/content/Context;Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->classesWorkoutAdapter:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    .line 82
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->calendarView:Lcom/startapps/crossx/view/calendar/MonthView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/calendar/MonthView;->setOnDateClick(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;)V

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->calendarView:Lcom/startapps/crossx/view/calendar/MonthView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/calendar/MonthView;->getPageCurrentDay()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/calendar/MonthView;->setCurrentItem(I)V

    .line 89
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string/jumbo p2, "yyyy-MM-dd"

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->currentDate:Ljava/lang/String;

    return-void
.end method

.method protected orderListHour()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    new-instance v1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
