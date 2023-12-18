.class public Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "MyTrainingFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02b8

    const-string v1, "field \'listWorkoutClasses\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->listWorkoutClasses:Landroid/widget/ListView;

    const v0, 0x7f0a0451

    const-string v1, "field \'textViewDate\' and method \'onClickDate\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->textViewDate:Landroid/widget/TextView;

    .line 14
    new-instance v1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0346

    const-string v1, "field \'progressBar\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 23
    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->listWorkoutClasses:Landroid/widget/ListView;

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->textViewDate:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
