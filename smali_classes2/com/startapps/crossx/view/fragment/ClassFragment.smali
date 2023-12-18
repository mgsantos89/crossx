.class public final Lcom/startapps/crossx/view/fragment/ClassFragment;
.super Landroidx/fragment/app/Fragment;
.source "ClassFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/fragment/ClassFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0012\u0010\u0015\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0013H\u0002J\u0008\u0010\u0019\u001a\u00020\u0013H\u0002J\u0012\u0010\u001a\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017H\u0002J\u0012\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010%\u001a\u00020\u0013H\u0016J\u0008\u0010&\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/startapps/crossx/view/fragment/ClassFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "mAdapter",
        "Lcom/startapps/crossx/view/adapter/GymClassAdapter;",
        "mCategory",
        "",
        "Ljava/lang/Integer;",
        "mDataList",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "Lkotlin/collections/ArrayList;",
        "mDate",
        "",
        "mViewModel",
        "Lcom/startapps/crossx/viewmodel/ClassViewModel;",
        "mWeekCalendar",
        "Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;",
        "changeDataUser",
        "",
        "dateWeekObserve",
        "enableDisablePlaceholder",
        "enablePlaceholder",
        "",
        "fetchClass",
        "gymClassObserve",
        "loading",
        "isLoading",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onResume",
        "registerObserve",
        "Companion",
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


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "CATEGORY"

.field public static final Companion:Lcom/startapps/crossx/view/fragment/ClassFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "CLASS_FRAGMENT"


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

.field private final mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

.field private mCategory:Ljava/lang/Integer;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDate:Ljava/lang/String;

.field private mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

.field private mWeekCalendar:Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;


# direct methods
.method public static synthetic $r8$lambda$9QQDR_P-ZGMnjN6f6zB63Zt9kE0(Lcom/startapps/crossx/view/fragment/ClassFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->dateWeekObserve$lambda-2(Lcom/startapps/crossx/view/fragment/ClassFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RRt1iwNfzlTBkelLrGs3Dm6fys0(Lcom/startapps/crossx/view/fragment/ClassFragment;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->gymClassObserve$lambda-3(Lcom/startapps/crossx/view/fragment/ClassFragment;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/view/fragment/ClassFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/fragment/ClassFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/view/fragment/ClassFragment;->Companion:Lcom/startapps/crossx/view/fragment/ClassFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 26
    new-instance v0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    invoke-direct {v0}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mDataList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\"yyyy-MM-dd\").format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mDate:Ljava/lang/String;

    return-void
.end method

.method private final changeDataUser()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->updateGymClass(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final dateWeekObserve()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mWeekCalendar:Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->getDate()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/fragment/ClassFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private static final dateWeekObserve$lambda-2(Lcom/startapps/crossx/view/fragment/ClassFragment;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mDate:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->fetchClass()V

    return-void
.end method

.method private final enableDisablePlaceholder(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 116
    sget p1, Lcom/startapps/crossx/R$id;->data_list:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 117
    sget p1, Lcom/startapps/crossx/R$id;->view_placeholder:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    sget p1, Lcom/startapps/crossx/R$id;->data_list:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 120
    sget p1, Lcom/startapps/crossx/R$id;->view_placeholder:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic enableDisablePlaceholder$default(Lcom/startapps/crossx/view/fragment/ClassFragment;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->enableDisablePlaceholder(Z)V

    return-void
.end method

.method private final fetchClass()V
    .locals 3

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->loading(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "CATEGORY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v0, v1

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    :goto_0
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mCategory:Ljava/lang/Integer;

    .line 76
    sget v0, Lcom/startapps/crossx/R$id;->week_calendar:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->setVisibility(I)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    if-nez v0, :cond_2

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mCategory:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->getGymClass(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private final gymClassObserve()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->getGymClassList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/fragment/ClassFragment$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/fragment/ClassFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final gymClassObserve$lambda-3(Lcom/startapps/crossx/view/fragment/ClassFragment;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->success()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->dataList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->enableDisablePlaceholder(Z)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->dataList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mDataList:Ljava/util/ArrayList;

    .line 106
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->changeDataUser()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->message()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->loading(Z)V

    return-void
.end method

.method private final loading(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->enableDisablePlaceholder(Z)V

    .line 127
    sget p1, Lcom/startapps/crossx/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    sget p1, Lcom/startapps/crossx/R$id;->horizontal_line:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 129
    sget p1, Lcom/startapps/crossx/R$id;->recycler_gym_classes:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    sget p1, Lcom/startapps/crossx/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    sget p1, Lcom/startapps/crossx/R$id;->horizontal_line:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 133
    sget p1, Lcom/startapps/crossx/R$id;->recycler_gym_classes:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic loading$default(Lcom/startapps/crossx/view/fragment/ClassFragment;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/ClassFragment;->loading(Z)V

    return-void
.end method

.method private final registerObserve()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->gymClassObserve()V

    .line 83
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->dateWeekObserve()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->getView()Landroid/view/View;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/startapps/crossx/viewmodel/ClassViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026assViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/startapps/crossx/viewmodel/ClassViewModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0077

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0372

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    new-instance p3, Lcom/startapps/crossx/view/fragment/ClassFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/startapps/crossx/view/fragment/ClassFragment$onCreateView$1;-><init>(Lcom/startapps/crossx/view/fragment/ClassFragment;)V

    check-cast p3, Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->setOnItemClickListener(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;)V

    const p2, 0x7f0a04d5

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassFragment;->mWeekCalendar:Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;

    if-eqz v0, :cond_0

    const/4 p2, -0x1

    const/4 p3, -0x2

    .line 54
    invoke-virtual {v0, p2, p3}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->measure(II)V

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->populate$default(Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;IILjava/lang/String;ILjava/lang/Object;)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->registerObserve()V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ClassFragment;->fetchClass()V

    return-void
.end method
