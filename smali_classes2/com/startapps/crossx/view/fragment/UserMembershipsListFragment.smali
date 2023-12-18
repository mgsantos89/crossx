.class public Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;
.source "UserMembershipsListFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field private static final TYPE_USERMEMBERSHIP:Ljava/lang/String; = "type"

.field private static final USER_MODEL:Ljava/lang/String; = "user_model"


# instance fields
.field protected currentPage:I

.field private itemsPerPage:I

.field public progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

.field public progressUserMemberships:Landroid/widget/ProgressBar;

.field private userMembershipAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

.field private userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

.field public userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

.field public userMembershipPlaceholder:Landroid/widget/RelativeLayout;

.field private userMembershipType:Ljava/lang/String;

.field private userMemberships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetuserMemberships(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMemberships:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfetchUserMembershipsPerType(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->fetchUserMembershipsPerType(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->currentPage:I

    const/16 v0, 0xa

    .line 52
    iput v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->itemsPerPage:I

    const-string v0, "active"

    .line 56
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipType:Ljava/lang/String;

    return-void
.end method

.method private addFooterView()Landroid/view/View;
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    .line 176
    new-instance v1, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V

    return-object v0
.end method

.method private errorLoading()V
    .locals 2

    .line 234
    iget v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->currentPage:I

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 236
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 237
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadError()V

    :goto_0
    return-void
.end method

.method private fetchUserMembershipsPerType(I)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipType:Ljava/lang/String;

    iget v2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->itemsPerPage:I

    new-instance v3, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;I)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->fetchUserMemberships(Ljava/lang/String;IILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;
    .locals 3

    .line 61
    new-instance v0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "type"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "user_model"

    .line 64
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public endLoader()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressUserMemberships:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public errorUpdateItems()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->setRefreshing(Z)V

    .line 229
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->errorLoading()V

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d008a

    return v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    return-object v0
.end method

.method public initLoader()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressUserMemberships:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "type"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipType:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "user_model"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserModel;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 104
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMemberships:Ljava/util/List;

    .line 105
    new-instance p2, Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    invoke-direct {p2}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    .line 106
    new-instance p2, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMemberships:Ljava/util/List;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-direct {p2, p3, v0, v1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/model/UserModel;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    .line 107
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p3, p2}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->addFooterView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadingView(Landroid/view/View;)V

    .line 109
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p2, p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnLoadMoreListListener(Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 113
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipPlaceholder:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 92
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onDestroy()V

    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->showLoadingView()V

    .line 201
    iget v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->fetchUserMembershipsPerType(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->currentPage:I

    .line 195
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->fetchUserMembershipsPerType(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 122
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->fetchUserMembershipsPerType(I)V

    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;IZ)V"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->isAdded()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressUserMemberships:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 210
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->smoothScrollToPosition(I)V

    .line 214
    :cond_0
    iput p2, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->currentPage:I

    .line 216
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->notifyDataSetChanged()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->setRefreshing(Z)V

    .line 219
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->hideLoadingView()V

    .line 220
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadMoreItems(Z)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->setRefreshing(Z)V

    :goto_0
    return-void
.end method
