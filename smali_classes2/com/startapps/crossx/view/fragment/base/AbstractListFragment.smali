.class public abstract Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "AbstractListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;
    }
.end annotation


# instance fields
.field protected onRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field protected swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;


# direct methods
.method static bridge synthetic -$$Nest$smcanListViewScrollUp(Landroid/widget/ListView;)Z
    .locals 0

    invoke-static {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->canListViewScrollUp(Landroid/widget/ListView;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method private static canListViewScrollUp(Landroid/widget/ListView;)Z
    .locals 1

    const/4 v0, -0x1

    .line 101
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract getListView()Landroid/widget/ListView;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    const p3, 0x7f060129

    .line 32
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 33
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 34
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->addView(Landroid/view/View;II)V

    .line 43
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onPause()V

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->setRefreshing(Z)V

    .line 52
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->destroyDrawingCache()V

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onRefreshListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_0
    return-void
.end method

.method protected setRefreshing(Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->swipeContainer:Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment$ListFragmentSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
