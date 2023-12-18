.class public Lcom/startapps/crossx/view/fragment/HistoryFragment;
.super Landroidx/fragment/app/Fragment;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;
.implements Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;


# instance fields
.field expandableListViewHistoric:Landroid/widget/ExpandableListView;

.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;


# direct methods
.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/fragment/HistoryFragment;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->presenter:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d007b

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 45
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/view/View;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 46
    new-instance p2, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;

    invoke-direct {p2, p0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->presenter:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->presenter:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;->getHistoryList()V

    return-void
.end method

.method public setHistories(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->expandableListViewHistoric:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/startapps/crossx/view/adapter/HistoryAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p0}, Lcom/startapps/crossx/view/adapter/HistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/HistoryFragment;->showViewEmpty()V

    :cond_0
    return-void
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/HistoryFragment;->hideAll()V

    .line 85
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    new-instance v1, Lcom/startapps/crossx/view/fragment/HistoryFragment$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/HistoryFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/HistoryFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public showMembershipDetailsClickListener(J)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->presenter:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;->getDetailsMembership(J)V

    return-void
.end method

.method public showViewEmpty()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->EMPTY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public startDetailsMembershipActivity(Lcom/startapps/crossx/model/Membership;)V
    .locals 3

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "membership_extra"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/HistoryFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
