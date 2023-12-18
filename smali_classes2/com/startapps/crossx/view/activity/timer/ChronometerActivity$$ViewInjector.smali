.class public Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "ChronometerActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a037b

    const-string v1, "field \'root\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->root:Landroid/view/View;

    const v0, 0x7f0a02cf

    const-string v1, "field \'mask\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    const v0, 0x7f0a04bc

    const-string v1, "field \'delayView\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delayView:Landroid/view/View;

    const v0, 0x7f0a00f2

    const-string v1, "field \'chronometer\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/startapps/crossx/view/widget/Chronometer;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    const v0, 0x7f0a03f3

    const-string v1, "field \'textRound\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    const v0, 0x7f0a03f4

    const-string v1, "field \'textRoundCount\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    const v0, 0x7f0a00a4

    const-string v1, "field \'buttonReset\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    const v0, 0x7f0a0200

    const-string v1, "field \'imageStart\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->imageStart:Landroid/widget/ImageView;

    const v0, 0x7f0a009f

    const-string v1, "field \'buttonClose\' and method \'onButtonCloseClick\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonClose:Landroid/widget/ImageButton;

    .line 28
    new-instance v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03f1

    const-string v1, "field \'textDelayCount\'"

    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 37
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textDelayCount:Landroid/widget/TextView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->root:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    .line 43
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delayView:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    .line 48
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->imageStart:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonClose:Landroid/widget/ImageButton;

    .line 50
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textDelayCount:Landroid/widget/TextView;

    return-void
.end method
