.class public Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "OnlineOrderDetailActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0346

    const-string v1, "field \'progressBar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a04b9

    const-string v1, "field \'valueTitleLabel\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueTitleLabel:Landroid/widget/TextView;

    const v0, 0x7f0a04b8

    const-string v1, "field \'valueLabel\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueLabel:Landroid/widget/TextView;

    const v0, 0x7f0a015f

    const-string v1, "field \'discountDescription\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->discountDescription:Landroid/widget/TextView;

    const v0, 0x7f0a006f

    const-string v1, "field \'barcodeTitleLabel\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeTitleLabel:Landroid/widget/TextView;

    const v0, 0x7f0a006e

    const-string v1, "field \'barcodeLabel\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0172

    const-string v1, "field \'dueDateLabel\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->dueDateLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00b2

    const-string v1, "field \'copyButton\' and method \'copyButtonClick\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->copyButton:Landroid/widget/Button;

    .line 26
    new-instance v1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c1

    const-string v1, "field \'sendEmailButton\' and method \'sendEmailButtonClick\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 35
    move-object p2, p0

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->sendEmailButton:Landroid/widget/Button;

    .line 36
    new-instance p2, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$2;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 48
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueTitleLabel:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueLabel:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->discountDescription:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeTitleLabel:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeLabel:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->dueDateLabel:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->copyButton:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->sendEmailButton:Landroid/widget/Button;

    return-void
.end method
