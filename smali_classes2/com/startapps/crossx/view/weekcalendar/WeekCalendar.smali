.class public final Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;
.super Landroidx/viewpager/widget/ViewPager;
.source "WeekCalendar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0014J$\u0010\u0018\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nR \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;",
        "Landroidx/viewpager/widget/ViewPager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "date",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getDate",
        "()Landroidx/lifecycle/LiveData;",
        "setDate",
        "(Landroidx/lifecycle/LiveData;)V",
        "mAdapterWeekCalendar",
        "Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;",
        "mDate",
        "Landroidx/lifecycle/MutableLiveData;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "populate",
        "subWeek",
        "addWeek",
        "dateSelected",
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

.field private date:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterWeekCalendar:Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;

.field private final mDate:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->mDate:Landroidx/lifecycle/MutableLiveData;

    .line 18
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->date:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->mDate:Landroidx/lifecycle/MutableLiveData;

    .line 18
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->date:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static synthetic populate$default(Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;IILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x3

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 29
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string/jumbo p4, "yyyy-MM-dd"

    invoke-direct {p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "SimpleDateFormat(\"yyyy-MM-dd\").format(Date())"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->populate(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->findViewById(I)Landroid/view/View;

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

.method public final getDate()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->date:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 47
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 53
    invoke-virtual {p0}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    .line 54
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v2, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    .line 59
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 62
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public final populate(IILjava/lang/String;)V
    .locals 3

    const-string v0, "dateSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 33
    new-instance v2, Lcom/startapps/crossx/model/WeekCalendarModel;

    invoke-direct {v2}, Lcom/startapps/crossx/model/WeekCalendarModel;-><init>()V

    .line 34
    invoke-virtual {v2, p1}, Lcom/startapps/crossx/model/WeekCalendarModel;->setWeekNumber(I)V

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "context"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->mDate:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2, v0, v2, p3}, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->mAdapterWeekCalendar:Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;

    .line 41
    check-cast p1, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->setCurrentItem(I)V

    return-void
.end method

.method public final setDate(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/startapps/crossx/view/weekcalendar/WeekCalendar;->date:Landroidx/lifecycle/LiveData;

    return-void
.end method
