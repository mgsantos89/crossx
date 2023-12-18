.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 84
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
