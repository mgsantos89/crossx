.class public Lcom/startapps/crossx/view/activity/UserMembershipActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/UserMembershipActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02cd

    const-string v1, "field \'mainView\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->mainView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a035b

    const-string v1, "field \'progressRelativeLayout\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0355

    const-string v1, "field \'progressBar\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02d8

    const-string v1, "field \'membershipName\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->membershipName:Landroid/widget/TextView;

    const v0, 0x7f0a0370

    const-string v1, "field \'recurrenceName\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->recurrenceName:Landroid/widget/TextView;

    const v0, 0x7f0a03c8

    const-string v1, "field \'startLabel\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startLabel:Landroid/widget/TextView;

    const v0, 0x7f0a018e

    const-string v1, "field \'endLabel\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endLabel:Landroid/widget/TextView;

    const v0, 0x7f0a03c7

    const-string v1, "field \'startDateLabel\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startDateLabel:Landroid/widget/TextView;

    const v0, 0x7f0a018d

    const-string v1, "field \'endDateLabel\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endDateLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0344

    const-string v1, "field \'programsLabel\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->programsLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0345

    const-string v1, "field \'programsNameLabel\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->programsNameLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0294

    const-string v1, "field \'limitLabel\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0295

    const-string v1, "field \'limitNameLabel\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitNameLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0292

    const-string v1, "field \'limitCountNameLabel\'"

    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountNameLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0293

    const-string v1, "field \'limitCountView\' and method \'setLimitCountViewClick\'"

    .line 38
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountView:Landroid/widget/RelativeLayout;

    .line 40
    new-instance v1, Lcom/startapps/crossx/view/activity/UserMembershipActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00bb

    const-string v1, "field \'buttonRenew\' and method \'setButtonRenewClick\'"

    .line 48
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->buttonRenew:Landroid/widget/Button;

    .line 50
    new-instance v1, Lcom/startapps/crossx/view/activity/UserMembershipActivity$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0336

    const-string v1, "field \'paymentLabel\'"

    .line 58
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentLabel:Landroid/widget/TextView;

    const v0, 0x7f0a02c7

    const-string v1, "field \'lockLabel\'"

    .line 60
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockLabel:Landroid/widget/TextView;

    const v0, 0x7f0a02c6

    const-string v1, "field \'lockCountLabel\'"

    .line 62
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockCountLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0164

    const-string v1, "field \'documentLabel\'"

    .line 64
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0337

    const-string v1, "field \'paymentsView\'"

    .line 66
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03b5

    const-string v1, "field \'paymentsSpace\'"

    .line 68
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsSpace:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02b1

    const-string v1, "field \'paymentsList\'"

    .line 70
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsList:Landroid/widget/ListView;

    const v0, 0x7f0a02c8

    const-string v1, "field \'locksView\'"

    .line 72
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03b6

    const-string v1, "field \'locksSpace\'"

    .line 74
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksSpace:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02af

    const-string v1, "field \'locksList\'"

    .line 76
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksList:Landroid/widget/ListView;

    const v0, 0x7f0a0165

    const-string v1, "field \'documentsView\'"

    .line 78
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02a9

    const-string v1, "field \'documentsList\'"

    .line 80
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 81
    check-cast p0, Landroid/widget/ListView;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsList:Landroid/widget/ListView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->mainView:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 88
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->membershipName:Landroid/widget/TextView;

    .line 89
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->recurrenceName:Landroid/widget/TextView;

    .line 90
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startLabel:Landroid/widget/TextView;

    .line 91
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endLabel:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startDateLabel:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endDateLabel:Landroid/widget/TextView;

    .line 94
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->programsLabel:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->programsNameLabel:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitLabel:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitNameLabel:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountNameLabel:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountView:Landroid/widget/RelativeLayout;

    .line 100
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->buttonRenew:Landroid/widget/Button;

    .line 101
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentLabel:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockLabel:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockCountLabel:Landroid/widget/TextView;

    .line 104
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentLabel:Landroid/widget/TextView;

    .line 105
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsView:Landroid/widget/RelativeLayout;

    .line 106
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsSpace:Landroid/widget/RelativeLayout;

    .line 107
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsList:Landroid/widget/ListView;

    .line 108
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksView:Landroid/widget/RelativeLayout;

    .line 109
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksSpace:Landroid/widget/RelativeLayout;

    .line 110
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksList:Landroid/widget/ListView;

    .line 111
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsView:Landroid/widget/RelativeLayout;

    .line 112
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsList:Landroid/widget/ListView;

    return-void
.end method
