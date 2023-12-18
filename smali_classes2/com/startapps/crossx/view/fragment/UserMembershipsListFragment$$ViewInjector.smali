.class public Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipsListFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a04b7

    const-string v1, "field \'userMembershipList\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const v0, 0x7f0a02c5

    const-string v1, "field \'progressUserMemberships\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressUserMemberships:Landroid/widget/ProgressBar;

    const v0, 0x7f0a035f

    const-string v1, "field \'progressBar\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const v0, 0x7f0a04b6

    const-string v1, "field \'userMembershipPlaceholder\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipPlaceholder:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    .line 22
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressUserMemberships:Landroid/widget/ProgressBar;

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipPlaceholder:Landroid/widget/RelativeLayout;

    return-void
.end method
