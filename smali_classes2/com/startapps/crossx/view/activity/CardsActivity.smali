.class public Lcom/startapps/crossx/view/activity/CardsActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "CardsActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;
.implements Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;


# instance fields
.field containerCards:Landroid/view/View;

.field private creditCardRequest:Lcom/startapps/crossx/model/CreditCard;

.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

.field recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field viewSafeConnection:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/CardsActivity;)Lcom/startapps/crossx/classes/presenter/CardsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private chooseCardPayment()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->creditCardRequest:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "credit_card_extra"

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->creditCardRequest:Lcom/startapps/crossx/model/CreditCard;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/CardsActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CardsActivity;->setResult(I)V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->finish()V

    return-void
.end method

.method private setDefaultCard()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->creditCardRequest:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    iget-wide v2, v0, Lcom/startapps/crossx/model/CreditCard;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->setDefaultCard(J)V

    :cond_0
    return-void
.end method

.method private setResultAndBack()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getFromCards()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_card_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->setDefaultCard()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->chooseCardPayment()V

    :goto_0
    return-void
.end method


# virtual methods
.method public adapterItemClickListener(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->creditCardRequest:Lcom/startapps/crossx/model/CreditCard;

    return-void
.end method

.method public addNewCard()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CardsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public checkViewWarningSafeConnection()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getFromCards()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_card_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->viewSafeConnection:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->viewSafeConnection:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideAll()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1200e0

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/CardsActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 74
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/app/Activity;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 75
    new-instance v0, Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/CardsContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->setResultAndBack()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->onBackPressed()V

    .line 68
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public proceed()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->setResultAndBack()V

    return-void
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0021

    return v0
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->hideAll()V

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    new-instance v1, Lcom/startapps/crossx/view/activity/CardsActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CardsActivity$1;-><init>(Lcom/startapps/crossx/view/activity/CardsActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public showMessageCardDefaultSuccess()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->containerCards:Landroid/view/View;

    const v1, 0x7f1200de

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/SnackbarUtils;->show(Landroid/view/View;I)V

    return-void
.end method

.method public showViewEmpty()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->EMPTY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    const v1, 0x7f1200df

    .line 120
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/CardsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;->configureMessage(Ljava/lang/String;)V

    const v1, 0x7f0800d7

    .line 121
    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;->configureImageView(I)V

    return-void
.end method

.method public upLayout(Ljava/util/List;Lcom/startapps/crossx/model/CreditCard;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;",
            "Lcom/startapps/crossx/model/CreditCard;",
            ")V"
        }
    .end annotation

    .line 83
    iput-object p2, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->creditCardRequest:Lcom/startapps/crossx/model/CreditCard;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 85
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/startapps/crossx/view/adapter/CardsAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->presenter:Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    invoke-virtual {v1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getFromCards()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p0, v1}, Lcom/startapps/crossx/view/adapter/CardsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CardsActivity;->showViewEmpty()V

    :goto_0
    return-void
.end method
