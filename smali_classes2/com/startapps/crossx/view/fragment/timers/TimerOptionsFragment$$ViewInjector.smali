.class public Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "TimerOptionsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a00c3

    const-string v1, "field \'buttonStopWatch\' and method \'onCLickStopWatch\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonStopWatch:Landroid/widget/Button;

    .line 12
    new-instance v1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c5

    const-string v1, "field \'buttonTimer\' and method \'onCLickTimer\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTimer:Landroid/widget/Button;

    .line 22
    new-instance v1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b5

    const-string v1, "field \'buttonEmon\' and method \'onCLickEmon\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonEmon:Landroid/widget/Button;

    .line 32
    new-instance v1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$3;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$3;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c4

    const-string v1, "field \'buttonTabata\' and method \'onCLickTabata\'"

    .line 40
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 41
    move-object p2, p0

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTabata:Landroid/widget/Button;

    .line 42
    new-instance p2, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$4;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$4;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonStopWatch:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTimer:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonEmon:Landroid/widget/Button;

    .line 56
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTabata:Landroid/widget/Button;

    return-void
.end method
