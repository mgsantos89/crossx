.class public Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "ProcessingStatusActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0471

    const-string v1, "field \'textviewStatusTitle\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textviewStatusTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0469

    const-string v1, "field \'textViewStatusDescription\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewStatusDescription:Landroid/widget/TextView;

    const v0, 0x7f0a047a

    const-string v1, "field \'textViewTotalToPayValue\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    const v0, 0x7f0a0211

    const-string v1, "field \'imageViewStatusProcessing\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    const v0, 0x7f0a00c7

    const-string v1, "field \'buttonTryAgain\' and method \'tryAgain\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonTryAgain:Landroid/widget/Button;

    .line 20
    new-instance v1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ab

    const-string v1, "field \'buttonChangeCard\' and method \'changeCard\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonChangeCard:Landroid/widget/Button;

    .line 30
    new-instance v1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035e

    const-string v1, "field \'progressBarProcessingStatus\'"

    .line 38
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->progressBarProcessingStatus:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0479

    const-string v1, "field \'textViewTotalToPay\'"

    .line 40
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPay:Landroid/widget/TextView;

    const v0, 0x7f0a0116

    const-string v1, "field \'viewProcessingPayment\'"

    .line 42
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->viewProcessingPayment:Landroid/view/View;

    const v0, 0x7f0a020a

    const-string v1, "field \'imageViewBackPressed\' and method \'backPressed\'"

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 45
    move-object p2, p0

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewBackPressed:Landroid/widget/ImageView;

    .line 46
    new-instance p2, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector$3;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$$ViewInjector$3;-><init>(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textviewStatusTitle:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewStatusDescription:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonTryAgain:Landroid/widget/Button;

    .line 62
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonChangeCard:Landroid/widget/Button;

    .line 63
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->progressBarProcessingStatus:Landroid/widget/ProgressBar;

    .line 64
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPay:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->viewProcessingPayment:Landroid/view/View;

    .line 66
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewBackPressed:Landroid/widget/ImageView;

    return-void
.end method
