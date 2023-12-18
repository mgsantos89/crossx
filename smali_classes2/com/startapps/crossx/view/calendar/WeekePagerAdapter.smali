.class public Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "WeekePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;
    }
.end annotation


# instance fields
.field dateTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/view/calendar/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private isLoadPage:Z

.field private listener:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

.field private totalItemPerPage:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;)Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->listener:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetDates(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->resetDates()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/view/calendar/DateTime;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 p1, 0x7

    .line 27
    iput p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->totalItemPerPage:I

    .line 34
    iput-object p3, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->listener:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    return-void
.end method

.method private resetDates()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageCurrentDay()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/view/calendar/DateTime;

    .line 105
    invoke-virtual {v2}, Lcom/startapps/crossx/view/calendar/DateTime;->isToday()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    div-int/lit8 v1, v1, 0x7

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0121

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    iget v2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->totalItemPerPage:I

    mul-int/2addr v2, p2

    add-int/2addr v2, v1

    .line 74
    iget-object v3, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->dateTimeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/view/calendar/DateTime;

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/view/calendar/CellView;

    .line 77
    invoke-virtual {v3, v2}, Lcom/startapps/crossx/view/calendar/CellView;->setDate(Lcom/startapps/crossx/view/calendar/DateTime;)V

    .line 78
    invoke-virtual {v2}, Lcom/startapps/crossx/view/calendar/DateTime;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/startapps/crossx/view/calendar/CellView;->setSelected(Z)V

    .line 79
    new-instance v4, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;-><init>(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;Lcom/startapps/crossx/view/calendar/DateTime;)V

    invoke-virtual {v3, v4}, Lcom/startapps/crossx/view/calendar/CellView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 60
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOnDateClick(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->listener:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    return-void
.end method
