.class public Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;
.source "MyTrainingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;
.implements Lcom/startapps/crossx/Interfaces/ResultWodListener;
.implements Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;


# instance fields
.field private calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

.field private currentDate:Ljava/lang/String;

.field private dateSelected:Ljava/util/Date;

.field private eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

.field public listWorkoutClasses:Landroid/widget/ListView;

.field public progressBar:Landroid/widget/ProgressBar;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field public textViewDate:Landroid/widget/TextView;

.field private userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

.field private userWorkoutAdapter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

.field private userWorkoutRequester:Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;

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
.method static bridge synthetic -$$Nest$fgetcalendarDialogFragment(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventDecorator(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/decorator/EventDecorator;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserWorkoutAdapter(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userWorkoutAdapter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputeventDecorator(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/view/decorator/EventDecorator;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    return-void
.end method

.method static bridge synthetic -$$Nest$morderListByDate(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->orderListByDate()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/model/WodsModel;)Lcom/startapps/crossx/model/WodsModel;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/model/WodsModel;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/model/WodsModel;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->showViewResult(Lcom/startapps/crossx/model/WodsModel;)V

    return-void
.end method

.method private convertsWodsNameArrayList(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WodsModel;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 422
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 424
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 426
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/WodsModel;

    .line 427
    invoke-virtual {v2}, Lcom/startapps/crossx/model/WodsModel;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private orderListByDate()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    new-instance v1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$6;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$6;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private showWoodList()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getWodsModellList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/WodUtils;->getWodsNoResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WodsModel;

    iput-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    .line 397
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->showViewResult(Lcom/startapps/crossx/model/WodsModel;)V

    goto :goto_0

    .line 400
    :cond_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12025e

    .line 401
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 402
    invoke-direct {p0, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->convertsWodsNameArrayList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$7;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Ljava/util/List;)V

    .line 403
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    :goto_0
    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getAllCheckins()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v2, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v1, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->checkins(Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d007c

    return v0
.end method

.method protected getWorkoutUser(Ljava/lang/String;)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->listWorkoutClasses:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userWorkoutRequester:Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;

    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v2, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;

    .line 266
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v2, p0, v3}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v1, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    .line 265
    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;->allWorkout(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onAddResult(Lcom/startapps/crossx/model/WorkoutModel;)V
    .locals 1

    .line 494
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    .line 495
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getworkoutHours()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    .line 497
    invoke-direct {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->showWoodList()V

    return-void
.end method

.method public onClickDate()V
    .locals 5

    .line 473
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 474
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x7da

    .line 475
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 477
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    .line 478
    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 479
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 481
    new-instance v1, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    .line 482
    iget-object v2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->dateSelected:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setSelectedDate(Ljava/util/Date;)V

    .line 483
    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setDateFrom(Ljava/util/Date;)V

    .line 484
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setDateTo(Ljava/util/Date;)V

    .line 485
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setOnDateChanged(Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;)V

    .line 486
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V

    .line 487
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setEventDecorator(Lcom/startapps/crossx/view/decorator/EventDecorator;)V

    .line 488
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "calendarFrom"

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Calend\u00e1rio"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0005

    .line 174
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 176
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/view/activity/HomeActivity;

    .line 177
    invoke-virtual {p2}, Lcom/startapps/crossx/view/activity/HomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0395

    .line 179
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 180
    new-instance v0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$1;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 192
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$2;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance p2, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$3;

    invoke-direct {p2, p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$3;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onDateChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 442
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->dateSelected:Ljava/util/Date;

    .line 444
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 445
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userWorkoutAdapter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->notifyDataSetChanged()V

    .line 451
    :cond_0
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-static {p1, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->currentDate:Ljava/lang/String;

    .line 452
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getWorkoutUser(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->textViewDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p2

    const-string v0, "MMMM/yyyy"

    invoke-static {p2, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->calendarDialogFragment:Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dismiss()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 161
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 163
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 167
    :cond_0
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onDestroy()V

    return-void
.end method

.method public onEditResult(ILcom/startapps/crossx/model/UserResultModel;)V
    .locals 0

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

    .line 435
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 436
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p4, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/WorkoutModel;

    invoke-static {p2, p3}, Lcom/startapps/crossx/controller/utils/Intents;->goToDataSheetWorkout(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutModel;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2

    .line 462
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->textViewDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "MMMM/yyyy"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    const-string/jumbo p2, "yyyy-MM"

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getWorkoutUser(Ljava/lang/String;)V

    return-void
.end method

.method protected onRefresh()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->currentDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getWorkoutUser(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 141
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->dateSelected:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->dateSelected:Ljava/util/Date;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getAllCheckins()V

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->currentDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getWorkoutUser(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->textViewDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->currentDate:Ljava/lang/String;

    const-string/jumbo v2, "yyyy-MM-dd"

    .line 155
    invoke-static {v1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "MMMM/yyyy"

    .line 154
    invoke-static {v1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onUpdateResult(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
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

    .line 110
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getAllCheckins()V

    .line 111
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->currentDate:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getWorkoutUser(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 123
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->isEditResult:Z

    .line 127
    new-instance p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/ResultWodListener;Z)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userWorkoutAdapter:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    .line 128
    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    .line 132
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->userWorkoutRequester:Lcom/startapps/crossx/controller/network/requests/UserWorkoutRequester;

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string/jumbo p2, "yyyy-MM"

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->currentDate:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->textViewDate:Landroid/widget/TextView;

    const v0, 0x7f1201ae

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
