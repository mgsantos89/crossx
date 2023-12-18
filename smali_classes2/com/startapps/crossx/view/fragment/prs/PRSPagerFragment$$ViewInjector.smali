.class public Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "PRSPagerFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a034d

    const-string v1, "field \'progressBar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02b2

    const-string v1, "field \'listPRSUser\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 13
    check-cast p0, Landroid/widget/ListView;

    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->listPRSUser:Landroid/widget/ListView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 18
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->listPRSUser:Landroid/widget/ListView;

    return-void
.end method
