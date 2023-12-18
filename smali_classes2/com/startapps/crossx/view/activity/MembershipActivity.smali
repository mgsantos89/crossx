.class public Lcom/startapps/crossx/view/activity/MembershipActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "MembershipActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;
.implements Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;


# instance fields
.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

.field recyclerViewAccession:Landroidx/recyclerview/widget/RecyclerView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/MembershipActivity;)Lcom/startapps/crossx/classes/presenter/MembershipPresenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->presenter:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1200f8

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/MembershipActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 47
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/app/Activity;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 48
    new-instance v0, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/MembershipContract$View;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->presenter:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    return-void
.end method

.method public onItemClick(Lcom/startapps/crossx/model/Membership;Z)V
    .locals 1

    .line 63
    new-instance v0, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-class p2, Lcom/startapps/crossx/view/activity/ToPayActivity;

    goto :goto_0

    :cond_0
    const-class p2, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;

    :goto_0
    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "membership_extra"

    .line 64
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extra_from_membership"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MembershipActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 115
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->presenter:Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->getAccessionList()V

    return-void
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0037

    return v0
.end method

.method public setMemberships(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->recyclerViewAccession:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->recyclerViewAccession:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 76
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->recyclerViewAccession:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/startapps/crossx/view/adapter/MembershipAdapter;

    invoke-direct {v1, p0, p1, p0}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipActivity;->showViewEmpty()V

    :goto_0
    return-void
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipActivity;->hideAll()V

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    new-instance v1, Lcom/startapps/crossx/view/activity/MembershipActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/MembershipActivity$1;-><init>(Lcom/startapps/crossx/view/activity/MembershipActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public showViewEmpty()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->EMPTY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method
