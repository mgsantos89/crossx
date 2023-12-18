.class public Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "TabataConfigActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a042d

    const-string v1, "field \'exercisesSecondTitle\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecondTitle:Landroid/widget/TextView;

    const v0, 0x7f0a042b

    const-string v1, "field \'breakSecondTitle\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecondTitle:Landroid/widget/TextView;

    const v0, 0x7f0a042f

    const-string v1, "field \'roundTotalTitle\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotalTitle:Landroid/widget/TextView;

    const v0, 0x7f0a037c

    const-string v1, "field \'root\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->root:Landroid/widget/LinearLayout;

    const v0, 0x7f0a038f

    const-string v1, "field \'scrollView\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->scrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0a042e

    const-string v1, "field \'exercisesSecond\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecond:Landroid/widget/EditText;

    const v0, 0x7f0a042c

    const-string v1, "field \'breakSecond\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecond:Landroid/widget/EditText;

    const v0, 0x7f0a0430

    const-string v1, "field \'roundTotal\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotal:Landroid/widget/EditText;

    const v0, 0x7f0a0090

    const-string v1, "field \'initTimer\' and method \'onClickInitTimer\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 27
    move-object p2, p0

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->initTimer:Landroid/widget/Button;

    .line 28
    new-instance p2, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity$$ViewInjector$1;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecondTitle:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecondTitle:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotalTitle:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->root:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->scrollView:Landroid/widget/ScrollView;

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecond:Landroid/widget/EditText;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecond:Landroid/widget/EditText;

    .line 46
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotal:Landroid/widget/EditText;

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->initTimer:Landroid/widget/Button;

    return-void
.end method
