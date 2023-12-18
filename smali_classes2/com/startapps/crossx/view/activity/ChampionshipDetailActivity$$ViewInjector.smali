.class public Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "ChampionshipDetailActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0493

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0226

    const-string v1, "field \'indicator\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    const v0, 0x7f0a0326

    const-string v1, "field \'viewPager\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    const v0, 0x7f0a0348

    const-string v1, "field \'progressBar\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 22
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
