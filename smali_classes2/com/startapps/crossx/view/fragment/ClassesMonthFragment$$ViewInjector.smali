.class public Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ClassesMonthFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02b6

    const-string v1, "field \'listWorkoutClasses\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->listWorkoutClasses:Landroid/widget/ListView;

    const v0, 0x7f0a00ca

    const-string v1, "field \'calendarView\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/startapps/crossx/view/calendar/MonthView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->calendarView:Lcom/startapps/crossx/view/calendar/MonthView;

    const v0, 0x7f0a0346

    const-string v1, "field \'progressBar\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 15
    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->listWorkoutClasses:Landroid/widget/ListView;

    .line 20
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->calendarView:Lcom/startapps/crossx/view/calendar/MonthView;

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
