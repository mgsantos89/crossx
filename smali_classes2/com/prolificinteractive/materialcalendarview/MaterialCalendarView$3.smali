.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$402(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 99
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 101
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;->onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    :cond_0
    return-void
.end method
