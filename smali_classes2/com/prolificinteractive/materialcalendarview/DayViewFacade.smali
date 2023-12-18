.class public final Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
.super Ljava/lang/Object;
.source "DayViewFacade.java"


# instance fields
.field private dayView:Lcom/prolificinteractive/materialcalendarview/DayView;

.field private initialText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->dayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/DayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->initialText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->dayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundUnselected(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->dayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setDayView(Lcom/prolificinteractive/materialcalendarview/DayView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->dayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    .line 59
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->initialText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->dayView:Lcom/prolificinteractive/materialcalendarview/DayView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
