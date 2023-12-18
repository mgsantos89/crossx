.class public Lcom/startapps/crossx/view/widget/listview/ObservableListView;
.super Landroid/widget/ListView;
.source "ObservableListView.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/interfaces/ListViewWithLoadingIndicator;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

.field private loadMoreItems:Z

.field private onLoadMoreListListener:Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;

.field private refreshing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 48
    new-instance v0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->loadMoreItems:Z

    .line 50
    invoke-virtual {p0, p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public getLoadingView()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->getLoadingView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    .line 137
    invoke-interface {v0}, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;->stopLoading()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->refreshing:Z

    .line 140
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->hideLoadingView()V

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not implemented FooterViewLoadingInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLoadingViewVisible()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->isLoadingViewVisible()Z

    move-result v0

    return v0
.end method

.method public onLoadError()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    .line 90
    invoke-interface {v0}, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;->errorLoad()V

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not implemented FooterViewLoadingInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResetLoading()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    .line 80
    invoke-interface {v0}, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;->reset()V

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not implemented FooterViewLoadingInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p1, p4, -0x1

    if-lt p2, p1, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 64
    iget-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->refreshing:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->loadMoreItems:Z

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadMoreListListener:Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;

    if-eqz p1, :cond_1

    .line 67
    invoke-interface {p1}, Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;->onLoadMore()V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->beforeSetAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->afterSetAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setLoadMoreItems(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->loadMoreItems:Z

    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->setLoadingView(Landroid/view/View;)V

    return-void
.end method

.method public setOnLoadMoreListListener(Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadMoreListListener:Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->refreshing:Z

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;

    .line 123
    invoke-interface {v0}, Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;->initLoading()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->refreshing:Z

    .line 126
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->showLoadingView()V

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not implemented FooterViewLoadingInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
