.class Lcom/prolificinteractive/materialcalendarview/MonthView;
.super Landroid/widget/LinearLayout;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;
    }
.end annotation


# static fields
.field protected static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field protected static final DEFAULT_MAX_WEEKS:I = 0x6

.field protected static final DEFAULT_MONTH_TILE_HEIGHT:I = 0x7


# instance fields
.field private final calendarOfRecord:Ljava/util/Calendar;

.field private callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

.field private dayViewDecorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final monthDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prolificinteractive/materialcalendarview/DayView;",
            ">;"
        }
    .end annotation
.end field

.field private selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private showOtherDates:Z

.field private final tempWorkingCalendar:Ljava/util/Calendar;

.field private final weekDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prolificinteractive/materialcalendarview/WeekDayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    .line 37
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->calendarOfRecord:Ljava/util/Calendar;

    .line 38
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 42
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 43
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    .line 53
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setOrientation(I)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setClipChildren(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setClipToPadding(Z)V

    .line 58
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->makeRow(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v5, 0x7

    if-ge v2, v5, :cond_0

    .line 60
    new-instance v5, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    invoke-direct {v5, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 65
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->makeRow(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_1

    .line 67
    new-instance v7, Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-direct {v7, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v7, p0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v8, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_2
    iget p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setFirstDayOfWeek(I)V

    .line 75
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>()V

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method private applyDecorators(Lcom/prolificinteractive/materialcalendarview/DayView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->dayViewDecorators:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->dayViewDecorators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .line 190
    invoke-interface {v2, p2}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->shouldDecorate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->setDayView(Lcom/prolificinteractive/materialcalendarview/DayView;)V

    .line 192
    invoke-interface {v2, v0}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->decorate(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static makeRow(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 5

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private resetAndGetWorkingCalendar()Ljava/util/Calendar;
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->calendarOfRecord:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 120
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v0

    .line 121
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    sub-int/2addr v1, v0

    .line 123
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x7

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 128
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method public getShowOtherDates()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 204
    instance-of v0, p1, Lcom/prolificinteractive/materialcalendarview/DayView;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/DayView;->setChecked(Z)V

    goto :goto_0

    .line 208
    :cond_0
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/DayView;

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->setChecked(Z)V

    .line 211
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 215
    :cond_1
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 217
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;->onDateChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    :cond_2
    return-void
.end method

.method public setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    return-void
.end method

.method public setDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->calendarOfRecord:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 160
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->calendarOfRecord:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->setToFirstDay(Ljava/util/Calendar;)V

    .line 161
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 99
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDayViewDecorators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->dayViewDecorators:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3

    .line 132
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    .line 134
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 135
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 137
    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(Ljava/util/Calendar;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 155
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    return-void
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 150
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 166
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 114
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setSelectionColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShowOtherDates(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    .line 105
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 144
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 93
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateUi()V
    .locals 9

    .line 172
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->calendarOfRecord:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v0

    .line 173
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 175
    new-instance v4, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v4, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 176
    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/DayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 177
    iget-boolean v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v4, v6, v7}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v6

    invoke-virtual {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v0, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3, v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/DayView;->setupSelection(ZZZ)V

    .line 178
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v4, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/prolificinteractive/materialcalendarview/DayView;->setChecked(Z)V

    .line 179
    invoke-direct {p0, v3, v4}, Lcom/prolificinteractive/materialcalendarview/MonthView;->applyDecorators(Lcom/prolificinteractive/materialcalendarview/DayView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    const/4 v3, 0x5

    .line 180
    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->postInvalidate()V

    return-void
.end method
