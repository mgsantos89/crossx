.class public Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "UserMembershipCheckinsActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02a6

    const-string v1, "field \'listCheckins\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const v0, 0x7f0a034a

    const-string v1, "field \'progressBarCheckin\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const v0, 0x7f0a035f

    const-string v1, "field \'progressBar\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 15
    check-cast p0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    .line 20
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    return-void
.end method
