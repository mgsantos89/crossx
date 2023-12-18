.class public Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector;
.super Ljava/lang/Object;
.source "ExerciseDetailActivity_old$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a034e

    const-string v1, "field \'progressBar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02aa

    const-string v1, "field \'listHistoric\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    const v0, 0x7f0a01bd

    const-string v1, "field \'squareGridView\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->squareGridView:Landroid/widget/GridView;

    const v0, 0x7f0a0252

    const-string v1, "field \'nameExercise\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->nameExercise:Landroid/widget/TextView;

    const v0, 0x7f0a0253

    const-string v1, "field \'resultExercise\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->resultExercise:Landroid/widget/TextView;

    const v0, 0x7f0a0250

    const-string v1, "field \'rlabelExercise\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rlabelExercise:Landroid/widget/TextView;

    const v0, 0x7f0a0427

    const-string v1, "field \'labelPercentsPR\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->labelPercentsPR:Landroid/widget/TextView;

    const v0, 0x7f0a0124

    const-string v1, "field \'viewPercents\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->viewPercents:Landroid/view/View;

    const v0, 0x7f0a0203

    const-string v1, "field \'imageArrow\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0a01df

    const-string v1, "field \'HorizontalScrollViewGrafic\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0a0406

    const-string v1, "field \'description\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    const v0, 0x7f0a00be

    const-string v1, "field \'btReverse\' and method \'reverse\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->btReverse:Landroid/widget/ImageButton;

    .line 34
    new-instance v1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ac

    const-string v1, "field \'slidingUpPanelLayout\'"

    .line 42
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    const v0, 0x7f0a01ae

    const-string v1, "field \'addResultButton\' and method \'addResultClick\'"

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->addResultButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 46
    new-instance v1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a038e

    const-string v1, "field \'scrollViewExercises\'"

    .line 54
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->scrollViewExercises:Landroid/widget/ScrollView;

    const v0, 0x7f0a02a0

    const-string v1, "field \'lineView\'"

    .line 56
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    check-cast v0, Lcom/dacer/androidcharts/LineView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    const v0, 0x7f0a0114

    const-string v1, "field \'containerNamePr\'"

    .line 58
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 59
    iput-object p0, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->containerNamePr:Landroid/view/View;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->progressBar:Landroid/widget/ProgressBar;

    .line 64
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    .line 65
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->squareGridView:Landroid/widget/GridView;

    .line 66
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->nameExercise:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->resultExercise:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rlabelExercise:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->labelPercentsPR:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->viewPercents:Landroid/view/View;

    .line 71
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->imageArrow:Landroid/widget/ImageView;

    .line 72
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    .line 73
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->btReverse:Landroid/widget/ImageButton;

    .line 75
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    .line 76
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->addResultButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 77
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->scrollViewExercises:Landroid/widget/ScrollView;

    .line 78
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    .line 79
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->containerNamePr:Landroid/view/View;

    return-void
.end method
