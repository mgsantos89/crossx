.class public Lcom/startapps/crossx/view/activity/HomeActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "HomeActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/HomeActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a016f

    const-string v1, "field \'mDrawerLayout\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x7f0a0492

    const-string v1, "field \'toolbar\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/HomeActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a02da

    const-string v1, "field \'listView\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 15
    check-cast p0, Landroid/widget/ListView;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/HomeActivity;->listView:Landroid/widget/ListView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/HomeActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 20
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/HomeActivity;->listView:Landroid/widget/ListView;

    return-void
.end method
