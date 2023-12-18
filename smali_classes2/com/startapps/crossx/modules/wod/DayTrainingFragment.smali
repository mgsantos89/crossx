.class public final Lcom/startapps/crossx/modules/wod/DayTrainingFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "DayTrainingFragment.kt"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/DayTrainingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u00013B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0014H\u0002J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0012\u0010\u001a\u001a\u00020\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010 \u001a\u00020\u00142\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0018\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J&\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010&\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010-\u001a\u00020\u0014H\u0016J\u0010\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u000200H\u0016J\u0008\u00101\u001a\u00020\u0014H\u0016J\u0008\u00102\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/startapps/crossx/modules/wod/DayTrainingFragment;",
        "Lcom/startapps/crossx/view/fragment/base/AbstractFragment;",
        "Lcom/startapps/crossx/Interfaces/DayTrainingListener;",
        "()V",
        "mDemoCollectionPagerAdapter",
        "Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;",
        "mEnableTimesheet",
        "",
        "onclickDayTrainingButton",
        "Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "workoutClient",
        "Lcom/startapps/crossx/rest/clients/WorkoutClient;",
        "workoutModelList",
        "",
        "Lcom/startapps/crossx/model/WorkoutModel;",
        "workoutRequester",
        "Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;",
        "clickCheckIn",
        "",
        "endLoader",
        "getLayoutToInflate",
        "",
        "getWorkoutDay",
        "initLoader",
        "loadWorkouts",
        "date",
        "",
        "onAttach",
        "activity",
        "Landroid/app/Activity;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onRefreshDayTraining",
        "onResume",
        "OnclickDayTrainingButton",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDemoCollectionPagerAdapter:Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;

.field private final mEnableTimesheet:Z

.field private onclickDayTrainingButton:Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;

.field public progressBar:Landroid/widget/ProgressBar;

.field private workoutClient:Lcom/startapps/crossx/rest/clients/WorkoutClient;

.field private workoutModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;"
        }
    .end annotation
.end field

.field private workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;


# direct methods
.method public static synthetic $r8$lambda$0zxbPpcg4w2LYzmQwrTC9nNIMJQ(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->onResume$lambda-0(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    .line 46
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "enable_timesheet"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->mEnableTimesheet:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutModelList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getMDemoCollectionPagerAdapter$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->mDemoCollectionPagerAdapter:Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getWorkoutModelList$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutModelList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setMDemoCollectionPagerAdapter$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->mDemoCollectionPagerAdapter:Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;

    return-void
.end method

.method private final clickCheckIn()V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->mEnableTimesheet:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToClass(Landroid/content/Context;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->onclickDayTrainingButton:Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;->onclickCheckinButton()V

    :goto_0
    return-void
.end method

.method private final getWorkoutDay()V
    .locals 4

    .line 138
    sget v0, Lcom/startapps/crossx/R$id;->progressBarDayTraining:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;

    invoke-direct {v3, p0, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;-><init>(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Landroidx/fragment/app/FragmentActivity;)V

    check-cast v3, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;

    invoke-direct {v1, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->getWorkoutDay(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method private final loadWorkouts(Ljava/lang/String;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutClient:Lcom/startapps/crossx/rest/clients/WorkoutClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$loadWorkouts$1;

    invoke-direct {v1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$loadWorkouts$1;-><init>()V

    check-cast v1, Lcom/startapps/crossx/rest/callback/CancelableCallback;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/clients/WorkoutClient;->workoutsByDay(Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private static final onResume$lambda-0(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->clickCheckIn()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0079

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    instance-of v0, p1, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/startapps/crossx/view/activity/HomeActivity;

    check-cast p1, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;

    iput-object p1, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->onclickDayTrainingButton:Lcom/startapps/crossx/modules/wod/DayTrainingFragment$OnclickDayTrainingButton;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0012

    .line 106
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p2, p3}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p2, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutRequester:Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    .line 72
    new-instance p2, Lcom/startapps/crossx/rest/clients/WorkoutClient;

    invoke-direct {p2}, Lcom/startapps/crossx/rest/clients/WorkoutClient;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutClient:Lcom/startapps/crossx/rest/clients/WorkoutClient;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 94
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a04da

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/startapps/crossx/modules/ranking/RankingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    iget-object v1, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->workoutModelList:Ljava/util/List;

    sget v2, Lcom/startapps/crossx/R$id;->viewpager:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string/jumbo v2, "workoutModel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefreshDayTraining()V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getWorkoutDay()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 77
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    .line 78
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    sget v1, Lcom/startapps/crossx/R$id;->button_cv_check_in:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201ae

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 79
    sget v0, Lcom/startapps/crossx/R$id;->indicator_athletes:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Wods"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getWorkoutDay()V

    .line 83
    iget-boolean v0, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->mEnableTimesheet:Z

    if-eqz v0, :cond_0

    .line 84
    sget v0, Lcom/startapps/crossx/R$id;->button_cv_check_in:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string/jumbo v1, "ver classes"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    sget v0, Lcom/startapps/crossx/R$id;->button_cv_check_in:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
