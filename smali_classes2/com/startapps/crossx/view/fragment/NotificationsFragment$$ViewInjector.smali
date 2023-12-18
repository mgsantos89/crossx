.class public Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "NotificationsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/NotificationsFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02b0

    const-string v1, "field \'listNotification\' and method \'onClickNotification\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    move-object v1, v0

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->listNotification:Landroid/widget/ListView;

    .line 12
    check-cast v0, Landroid/widget/AdapterView;

    new-instance v1, Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a02c4

    const-string v1, "field \'progressNotification\'"

    .line 23
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 24
    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->progressNotification:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->listNotification:Landroid/widget/ListView;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->progressNotification:Landroid/widget/ProgressBar;

    return-void
.end method
