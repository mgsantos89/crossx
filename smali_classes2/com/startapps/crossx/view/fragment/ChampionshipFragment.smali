.class public Lcom/startapps/crossx/view/fragment/ChampionshipFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;
.source "ChampionshipFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private championshipAdapter:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

.field private championshipClient:Lcom/startapps/crossx/rest/clients/ChampionshipClient;

.field private championshipModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipModel;",
            ">;"
        }
    .end annotation
.end field

.field private championshipRequester:Lcom/startapps/crossx/controller/network/requests/ChampionshipRequester;

.field public championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

.field protected currentPage:I

.field public progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

.field public progressChampionship:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetchampionshipModelList(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipModelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetChampionships(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getChampionships(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->currentPage:I

    return-void
.end method

.method private addFooterView()Landroid/view/View;
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    .line 223
    new-instance v1, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V

    return-object v0
.end method

.method private errorLoading()V
    .locals 2

    .line 292
    iget v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->currentPage:I

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 294
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 295
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadError()V

    :goto_0
    return-void
.end method

.method private getChampionships(I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipClient:Lcom/startapps/crossx/rest/clients/ChampionshipClient;

    new-instance v1, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;I)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/clients/ChampionshipClient;->championshipList(ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressChampionship:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public errorUpdateItems()V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->setRefreshing(Z)V

    .line 287
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->errorLoading()V

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0075

    return v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    return-object v0
.end method

.method public initLoader()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressChampionship:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipModelList:Ljava/util/List;

    .line 85
    new-instance p2, Lcom/startapps/crossx/rest/clients/ChampionshipClient;

    invoke-direct {p2}, Lcom/startapps/crossx/rest/clients/ChampionshipClient;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipClient:Lcom/startapps/crossx/rest/clients/ChampionshipClient;

    .line 87
    new-instance p2, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipModelList:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipAdapter:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    .line 88
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p3, p2}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->addFooterView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadingView(Landroid/view/View;)V

    .line 90
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p2, p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnLoadMoreListListener(Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 94
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressChampionship:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 77
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onDestroy()V

    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->showLoadingView()V

    .line 252
    iget v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getChampionships(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 240
    iput v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->currentPage:I

    .line 241
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getChampionships(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 124
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->getChampionships(I)V

    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipModel;",
            ">;IZ)V"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->isAdded()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 262
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->smoothScrollToPosition(I)V

    .line 270
    :cond_0
    iput p2, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->currentPage:I

    .line 273
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championshipAdapter:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->notifyDataSetChanged()V

    .line 274
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->setRefreshing(Z)V

    .line 276
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->hideLoadingView()V

    .line 277
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadMoreItems(Z)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->setRefreshing(Z)V

    :goto_0
    return-void
.end method
