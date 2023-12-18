.class Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "AbstractListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListFragmentSwipeRefreshLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;Landroid/content/Context;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;

    .line 60
    invoke-direct {p0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->-$$Nest$smcanListViewScrollUp(Landroid/widget/ListView;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
