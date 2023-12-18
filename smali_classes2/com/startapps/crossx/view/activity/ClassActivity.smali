.class public final Lcom/startapps/crossx/view/activity/ClassActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ClassActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/ClassActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0012\u0010\u0013\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0010H\u0002J\u0008\u0010\u0017\u001a\u00020\u0010H\u0002J\u0012\u0010\u0018\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0015H\u0002J\u0008\u0010\u001a\u001a\u00020\u0010H\u0016J\u0012\u0010\u001b\u001a\u00020\u00102\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0010H\u0014J\u0008\u0010\"\u001a\u00020\u0010H\u0002J\u0008\u0010#\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/ClassActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "mAdapter",
        "Lcom/startapps/crossx/view/adapter/GymClassAdapter;",
        "mCategoryId",
        "",
        "Ljava/lang/Integer;",
        "mDataList",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "mDate",
        "",
        "mViewModel",
        "Lcom/startapps/crossx/viewmodel/ClassViewModel;",
        "backFragment",
        "",
        "message",
        "changeDataUser",
        "enableDisablePlaceholder",
        "enablePlaceholder",
        "",
        "fetchClass",
        "gymClassObserve",
        "loading",
        "isLoading",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onResume",
        "registerExtraData",
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
.field public static final CATEGORY_DATA:Ljava/lang/String; = "category_id"

.field public static final Companion:Lcom/startapps/crossx/view/activity/ClassActivity$Companion;


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

.field private mCategoryId:Ljava/lang/Integer;

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


# direct methods
.method public static synthetic $r8$lambda$YfSOZXMhPmRu-dSsCYz9KK86n-4(Lcom/startapps/crossx/view/activity/ClassActivity;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->gymClassObserve$lambda-2(Lcom/startapps/crossx/view/activity/ClassActivity;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/view/activity/ClassActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/activity/ClassActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/view/activity/ClassActivity;->Companion:Lcom/startapps/crossx/view/activity/ClassActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    invoke-direct {v0}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mDataList:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\"yyyy-MM-dd\").format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mDate:Ljava/lang/String;

    return-void
.end method

.method private final backFragment(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->finish()V

    return-void
.end method

.method private final changeDataUser()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->updateGymClass(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final enableDisablePlaceholder(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 122
    sget p1, Lcom/startapps/crossx/R$id;->data_list:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 123
    sget p1, Lcom/startapps/crossx/R$id;->view_placeholder:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    sget p1, Lcom/startapps/crossx/R$id;->data_list:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 126
    sget p1, Lcom/startapps/crossx/R$id;->view_placeholder:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic enableDisablePlaceholder$default(Lcom/startapps/crossx/view/activity/ClassActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->enableDisablePlaceholder(Z)V

    return-void
.end method

.method private final fetchClass()V
    .locals 3

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ClassActivity;->loading(Z)V

    .line 104
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mCategoryId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->getGymClass(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private final gymClassObserve()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->getGymClassList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/startapps/crossx/view/activity/ClassActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/ClassActivity$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/ClassActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final gymClassObserve$lambda-2(Lcom/startapps/crossx/view/activity/ClassActivity;Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->success()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->dataList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/ClassActivity;->enableDisablePlaceholder(Z)V

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->dataList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mDataList:Ljava/util/ArrayList;

    .line 94
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->changeDataUser()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->message()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->loading(Z)V

    return-void
.end method

.method private final loading(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/ClassActivity;->enableDisablePlaceholder(Z)V

    .line 110
    sget p1, Lcom/startapps/crossx/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    sget p1, Lcom/startapps/crossx/R$id;->horizontal_line:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 112
    sget p1, Lcom/startapps/crossx/R$id;->recycler_gym_classes:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_0
    sget p1, Lcom/startapps/crossx/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    sget p1, Lcom/startapps/crossx/R$id;->horizontal_line:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 116
    sget p1, Lcom/startapps/crossx/R$id;->recycler_gym_classes:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic loading$default(Lcom/startapps/crossx/view/activity/ClassActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->loading(Z)V

    return-void
.end method

.method private final registerExtraData()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Wod n\u00e3o encontrado"

    .line 74
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ClassActivity;->backFragment(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mCategoryId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mCategoryId:Ljava/lang/Integer;

    :cond_2
    :goto_0
    return-void
.end method

.method private final registerObserve()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->gymClassObserve()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->findViewById(I)Landroid/view/View;

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

.method public onBackPressed()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ClassActivity;->backFragment(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 29
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    :cond_0
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

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/ClassViewModel;

    .line 37
    sget p1, Lcom/startapps/crossx/R$id;->recycler_gym_classes:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ClassActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ClassActivity;->mAdapter:Lcom/startapps/crossx/view/adapter/GymClassAdapter;

    new-instance v0, Lcom/startapps/crossx/view/activity/ClassActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/ClassActivity$onCreate$2;-><init>(Lcom/startapps/crossx/view/activity/ClassActivity;)V

    check-cast v0, Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->setOnItemClickListener(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->registerExtraData()V

    .line 47
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->registerObserve()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ClassActivity;->backFragment(Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ClassActivity;->fetchClass()V

    return-void
.end method
