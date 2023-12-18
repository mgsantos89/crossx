.class public Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CalendarDialogFragment.java"


# instance fields
.field private dateFrom:Ljava/util/Date;

.field private dateSelected:Ljava/util/Date;

.field private dateTo:Ljava/util/Date;

.field private eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

.field private onDateChanged:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

.field private onMonthChangedListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

.field private widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDecorators()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->removeDecorators()V

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addDecorators([Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "onCreateView"

    .line 43
    invoke-static {p3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0d0052

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00ca

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 53
    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dateSelected:Ljava/util/Date;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Date;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dateFrom:Ljava/util/Date;

    if-eqz p1, :cond_1

    .line 58
    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p2, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMinimumDate(Ljava/util/Date;)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dateTo:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 62
    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p2, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMaximumDate(Ljava/util/Date;)V

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    if-eqz p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->removeDecorators()V

    .line 67
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addDecorators([Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060048

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->onDateChanged:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;)V

    .line 73
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->onMonthChangedListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    invoke-virtual {p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V

    return-void
.end method

.method public setDateFrom(Ljava/util/Date;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dateFrom:Ljava/util/Date;

    return-void
.end method

.method public setDateTo(Ljava/util/Date;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dateTo:Ljava/util/Date;

    return-void
.end method

.method public setEventDecorator(Lcom/startapps/crossx/view/decorator/EventDecorator;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->eventDecorator:Lcom/startapps/crossx/view/decorator/EventDecorator;

    return-void
.end method

.method public setOnDateChanged(Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->onDateChanged:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    return-void
.end method

.method public setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->onMonthChangedListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    return-void
.end method

.method public setSelectedDate(Ljava/util/Date;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->dateSelected:Ljava/util/Date;

    return-void
.end method
