.class public Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "MembershipDetailsActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;


# instance fields
.field public buttonAction:Landroid/widget/Button;

.field public imageViewStatus:Landroid/widget/ImageView;

.field public layoutMembershipDetailsStatus:Landroid/view/View;

.field private membership:Lcom/startapps/crossx/model/Membership;

.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;

.field recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

.field public textViewDateEnd:Landroid/widget/TextView;

.field public textViewDateEndLabel:Landroid/widget/TextView;

.field public textViewDateStart:Landroid/widget/TextView;

.field public textViewDiscount:Landroid/widget/TextView;

.field textViewEmpty:Landroid/widget/TextView;

.field public textViewName:Landroid/widget/TextView;

.field public textViewParcelPrice:Landroid/widget/TextView;

.field public textViewProgramType:Landroid/widget/TextView;

.field public textViewSession:Landroid/widget/TextView;

.field public textViewSessionLabel:Landroid/widget/TextView;

.field public textViewStatus:Landroid/widget/TextView;

.field public textViewTotalPrice:Landroid/widget/TextView;

.field public textViewTypeRecurrence:Landroid/widget/TextView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->presenter:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonActionListener()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->membership:Lcom/startapps/crossx/model/Membership;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/ToPayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "membership_extra"

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->membership:Lcom/startapps/crossx/model/Membership;

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "list_cards"

    const-string v2, "from_card_choose"

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public hideAll()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1200fa

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 88
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/app/Activity;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 89
    new-instance v0, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/MembershipDetailsPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->presenter:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 204
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->presenter:Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;

    const-string p3, "credit_card_extra"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/CreditCard;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;->setEnableRecurrence(Lcom/startapps/crossx/model/CreditCard;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->onBackPressed()V

    .line 198
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0038

    return v0
.end method

.method public setMemberships(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->hideAll()V

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewEmpty:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->hideAll()V

    .line 169
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    new-instance v1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$1;-><init>(Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public upLayout(Lcom/startapps/crossx/model/Membership;)V
    .locals 11

    .line 110
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->membership:Lcom/startapps/crossx/model/Membership;

    .line 111
    iget-object v0, p1, Lcom/startapps/crossx/model/Membership;->discountValue:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 112
    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getType()Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    move-result-object v3

    sget-object v4, Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;->TYPE_PLAN:Lcom/startapps/crossx/model/enuns/MembershipTypeEnum;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    .line 114
    :goto_0
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewName:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/startapps/crossx/model/Membership;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewParcelPrice:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/startapps/crossx/model/Membership;->installmentsValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDiscount:Landroid/widget/TextView;

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTotalPrice:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEnd:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSessionLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSession:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move v3, v4

    goto :goto_5

    :cond_5
    move v3, v5

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEndLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewProgramType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getProgram()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getProgram()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    const-string v3, "---"

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateStart:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/startapps/crossx/model/Membership;->startDate:Ljava/lang/String;

    const-string/jumbo v4, "yyyy-MM-dd"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v3, v4, v6}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTypeRecurrence:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/startapps/crossx/model/Membership;->recurrenceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p1, Lcom/startapps/crossx/model/Membership;->discountValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTotalPrice:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/model/Membership;->getFormatedTotalValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDiscount:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/model/Membership;->getFormatedDiscount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_7
    iget-wide v0, p1, Lcom/startapps/crossx/model/Membership;->recurrenceCreditCardId:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    const/16 v1, 0x8

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getStatus()Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v0

    sget-object v3, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->LOCKED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->layoutMembershipDetailsStatus:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 133
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->layoutMembershipDetailsStatus:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->imageViewStatus:Landroid/widget/ImageView;

    iget-wide v9, p1, Lcom/startapps/crossx/model/Membership;->recurrenceCreditCardId:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_b

    const v3, 0x7f0800de

    goto :goto_9

    :cond_b
    const v3, 0x7f080125

    :goto_9
    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewStatus:Landroid/widget/TextView;

    iget-wide v9, p1, Lcom/startapps/crossx/model/Membership;->recurrenceCreditCardId:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_c

    const v3, 0x7f120100

    goto :goto_a

    :cond_c
    const v3, 0x7f1200fb

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_b
    if-eqz v2, :cond_d

    .line 143
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEnd:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/startapps/crossx/model/Membership;->endDate:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 145
    :cond_d
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSession:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getPlanStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_c
    iget-wide v2, p1, Lcom/startapps/crossx/model/Membership;->recurrenceCreditCardId:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz v0, :cond_e

    goto :goto_d

    .line 151
    :cond_e
    invoke-virtual {p1}, Lcom/startapps/crossx/model/Membership;->getStatus()Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    move-result-object v0

    sget-object v2, Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;->LOCKED:Lcom/startapps/crossx/model/enuns/MembershipStatusEnum;

    if-eq v0, v2, :cond_f

    iget-wide v2, p1, Lcom/startapps/crossx/model/Membership;->recurrenceCreditCardId:J

    cmp-long p1, v2, v7

    if-eqz p1, :cond_12

    .line 152
    :cond_f
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->buttonAction:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_f

    .line 149
    :cond_10
    :goto_d
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->buttonAction:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->buttonAction:Landroid/widget/Button;

    iget-boolean p1, p1, Lcom/startapps/crossx/model/Membership;->paymentPending:Z

    if-eqz p1, :cond_11

    const p1, 0x7f1200fc

    goto :goto_e

    :cond_11
    const p1, 0x7f120101

    :goto_e
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_12
    :goto_f
    return-void
.end method
