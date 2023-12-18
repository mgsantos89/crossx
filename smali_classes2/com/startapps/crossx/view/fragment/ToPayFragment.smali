.class public Lcom/startapps/crossx/view/fragment/ToPayFragment;
.super Landroidx/fragment/app/Fragment;
.source "ToPayFragment.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;
.implements Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;


# instance fields
.field buttonToPay:Landroid/widget/Button;

.field expandableListViewToPay:Landroid/widget/ExpandableListView;

.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

.field textViewItems:Landroid/widget/TextView;

.field textViewTotalValue:Landroid/widget/TextView;

.field viewStatus:Landroid/view/View;

.field viewTotalItems:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/fragment/ToPayFragment;)Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideAll()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method public hideWarningPaymentPending()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewStatus:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0089

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 57
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/view/View;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 58
    new-instance p2, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;Landroid/os/Bundle;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->emptyData()V

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getToPay()V

    return-void
.end method

.method public setPaymentItens(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getTotalItems()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->textViewTotalValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getTotalValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->textViewItems:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const v2, 0x7f1201d9

    goto :goto_0

    :cond_0
    const v2, 0x7f1201da

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->buttonToPay:Landroid/widget/Button;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->expandableListViewToPay:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/startapps/crossx/view/adapter/ToPayAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4, p1, p2, p0}, Lcom/startapps/crossx/view/adapter/ToPayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->showViewEmpty()V

    .line 81
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewTotalItems:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewTotalItems:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->hideAll()V

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    new-instance v1, Lcom/startapps/crossx/view/fragment/ToPayFragment$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/ToPayFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public showMembershipDetailsClickListener(J)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getDetailsMembership(J)V

    return-void
.end method

.method public showViewEmpty()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->EMPTY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    const v1, 0x7f1202b4

    .line 111
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;->configureMessage(Ljava/lang/String;)V

    const v1, 0x7f080144

    .line 112
    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;->configureImageView(I)V

    return-void
.end method

.method public showWarningPaymentPending()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewStatus:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startDetailsMembershipActivity(Lcom/startapps/crossx/model/Membership;)V
    .locals 3

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "membership_extra"

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public toPay()V
    .locals 5

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Lcom/startapps/crossx/model/Membership;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getMembershiId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->presenter:Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    invoke-virtual {v4}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getTotalValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/startapps/crossx/model/Membership;-><init>(JLjava/lang/String;)V

    const-string v2, "membership_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
