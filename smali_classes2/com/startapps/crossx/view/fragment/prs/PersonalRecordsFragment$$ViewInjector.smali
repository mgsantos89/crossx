.class public Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "PersonalRecordsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0353

    const-string v1, "field \'progressBar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0328

    const-string v1, "field \'viewPager\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a01de

    const-string v1, "field \'horizontalScrollView\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/startapps/crossx/view/CustonIndicatePager;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->horizontalScrollView:Lcom/startapps/crossx/view/CustonIndicatePager;

    const v0, 0x7f0a00d0

    const-string v1, "field \'cantentCategories\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->cantentCategories:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 22
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->horizontalScrollView:Lcom/startapps/crossx/view/CustonIndicatePager;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->cantentCategories:Landroid/widget/LinearLayout;

    return-void
.end method
