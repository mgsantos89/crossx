.class public Lcom/startapps/crossx/view/decorator/EventDecorator;
.super Ljava/lang/Object;
.source "EventDecorator.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;


# instance fields
.field context:Landroid/content/Context;

.field private dates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/decorator/EventDecorator;->dates:Ljava/util/HashSet;

    .line 23
    iput-object p2, p0, Lcom/startapps/crossx/view/decorator/EventDecorator;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public decorate(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/view/decorator/EventDecorator;->context:Landroid/content/Context;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public shouldDecorate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/view/decorator/EventDecorator;->dates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
