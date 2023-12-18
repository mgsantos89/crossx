.class public Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "TimerConfigActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0091

    const-string v1, "field \'initTimer\' and method \'onClickInitTimer\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->initTimer:Landroid/widget/Button;

    .line 12
    new-instance v1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a043e

    const-string v1, "field \'typeTitle\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->typeTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0436

    const-string v1, "field \'timeTitle\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->timeTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0432

    const-string v1, "field \'minutesTitle\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutesTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0434

    const-string v1, "field \'secondsTitle\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->secondsTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0433

    const-string v1, "field \'minutes\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutes:Landroid/widget/EditText;

    const v0, 0x7f0a0435

    const-string v1, "field \'seconds\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->seconds:Landroid/widget/EditText;

    const v0, 0x7f0a00e9

    const-string v1, "field \'checkCrescente\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    const v0, 0x7f0a00ea

    const-string v1, "field \'checkDecrescente\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 35
    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescente:Landroid/widget/CheckBox;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->initTimer:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->typeTitle:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->timeTitle:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutesTitle:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->secondsTitle:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutes:Landroid/widget/EditText;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->seconds:Landroid/widget/EditText;

    .line 46
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescente:Landroid/widget/CheckBox;

    return-void
.end method
