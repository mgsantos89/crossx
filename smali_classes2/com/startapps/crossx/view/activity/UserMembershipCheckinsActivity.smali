.class public Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "UserMembershipCheckinsActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private checkins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Checkin;",
            ">;"
        }
    .end annotation
.end field

.field protected currentPage:I

.field private itemsPerPage:I

.field public listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

.field public progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

.field public progressBarCheckin:Landroid/widget/ProgressBar;

.field private userMembershipCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;

.field private userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

.field private userMembershipId:J

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetcheckins(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->checkins:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfetchUserMembershipCheckin(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->fetchUserMembershipCheckin(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->currentPage:I

    const/16 v0, 0x14

    .line 47
    iput v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->itemsPerPage:I

    return-void
.end method

.method private addFooterView()Landroid/view/View;
    .locals 3

    .line 139
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    .line 140
    new-instance v1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$2;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V

    return-object v0
.end method

.method private errorLoading()V
    .locals 2

    .line 214
    iget v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->currentPage:I

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 216
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 217
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadError()V

    :goto_0
    return-void
.end method

.method private fetchUserMembershipCheckin(I)V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    iget-wide v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userMembershipId:J

    iget v4, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->itemsPerPage:I

    new-instance v5, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity$1;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;I)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->getCheckinsWithUserMembership(JIILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1200ba

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public errorUpdateItems()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->errorLoading()V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d004a

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_membership_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->finish()V

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v1, "Checkins por ades\u00e3o"

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->defineToolbar()V

    .line 81
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "user_model"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userMembershipId:J

    .line 83
    new-instance p1, Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->checkins:Ljava/util/List;

    .line 86
    new-instance p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->checkins:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userMembershipCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->addFooterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadingView(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnLoadMoreListListener(Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;)V

    .line 91
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->currentPage:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->fetchUserMembershipCheckin(I)V

    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->showLoadingView()V

    .line 180
    iget v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->fetchUserMembershipCheckin(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->finish()V

    .line 168
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->currentPage:I

    .line 174
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->fetchUserMembershipCheckin(I)V

    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Checkin;",
            ">;IZ)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBarCheckin:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 189
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->smoothScrollToPosition(I)V

    .line 193
    :cond_0
    iput p2, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->currentPage:I

    .line 195
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->userMembershipCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->notifyDataSetChanged()V

    .line 198
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->hideLoadingView()V

    .line 199
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;->listCheckins:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadMoreItems(Z)V

    return-void
.end method
