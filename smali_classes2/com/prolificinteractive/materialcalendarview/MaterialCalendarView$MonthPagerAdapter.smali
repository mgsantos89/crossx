.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthPagerAdapter"
.end annotation


# static fields
.field private static final TAG_ITEM:I


# instance fields
.field private callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

.field private color:Ljava/lang/Integer;

.field private final currentViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/prolificinteractive/materialcalendarview/MonthView;",
            ">;"
        }
    .end annotation
.end field

.field private dateTextAppearance:Ljava/lang/Integer;

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfTheWeek:I

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private showOtherDates:Ljava/lang/Boolean;

.field private final view:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

.field private weekDayTextAppearance:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 732
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$id;->mcv_pager:I

    sput v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->TAG_ITEM:I

    return-void
.end method

.method private constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 2

    .line 751
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 739
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    .line 740
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 741
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 742
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    .line 743
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 744
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 745
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 746
    sget-object v1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 752
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->view:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 753
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    .line 754
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    .line 755
    invoke-virtual {p0, v0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;)I
    .locals 0

    .line 730
    iget p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    return p0
.end method

.method private getValidSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p1

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    :cond_2
    return-object p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 856
    check-cast p3, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 857
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 858
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getDateTextAppearance()I
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 4

    if-nez p1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 784
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 786
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v0

    if-ne v2, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    :cond_4
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 795
    instance-of v0, p1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    .line 798
    :cond_0
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 799
    sget v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->TAG_ITEM:I

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-nez p1, :cond_1

    return v1

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method public getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getShowOtherDates()Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected getWeekDayTextAppearance()I
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 813
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MonthView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;-><init>(Landroid/content/Context;)V

    .line 814
    sget v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->TAG_ITEM:I

    invoke-virtual {v0, v1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setTag(ILjava/lang/Object;)V

    .line 816
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setFirstDayOfWeek(I)V

    .line 817
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 818
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V

    .line 819
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectionColor(I)V

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 823
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 826
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    .line 828
    :cond_2
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 829
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setShowOtherDates(Z)V

    .line 831
    :cond_3
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 832
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 833
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 835
    invoke-virtual {v0, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 837
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 838
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 841
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDayViewDecorators(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method public invalidateDecorators()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 765
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V
    .locals 2

    .line 867
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 868
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 869
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 884
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 885
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 886
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    .line 848
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    .line 849
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 850
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setFirstDayOfWeek(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 3

    .line 919
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 920
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 921
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 922
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 923
    invoke-virtual {v1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 927
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0xc8

    .line 928
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 929
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    move-object p1, v1

    :cond_1
    if-nez p2, :cond_2

    .line 933
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/16 v1, 0xc8

    .line 934
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 935
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    move-object p2, v1

    .line 938
    :cond_2
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 939
    invoke-virtual {p1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 940
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->setToFirstDay(Ljava/util/Calendar;)V

    .line 941
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 942
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 943
    :goto_1
    invoke-virtual {p2, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 944
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    new-instance v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v2, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 945
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->add(II)V

    .line 946
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p1, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    goto :goto_1

    .line 948
    :cond_3
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 949
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->notifyDataSetChanged()V

    .line 950
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    if-eqz p1, :cond_4

    .line 952
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 953
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;->onDateChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    :cond_4
    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2

    .line 959
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getValidSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 960
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 961
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2

    .line 874
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    .line 875
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 876
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectionColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShowOtherDates(Z)V
    .locals 2

    .line 891
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    .line 892
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 893
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setShowOtherDates(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2

    .line 898
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 899
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 900
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 912
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 913
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 914
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
