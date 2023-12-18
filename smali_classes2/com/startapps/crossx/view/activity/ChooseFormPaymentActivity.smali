.class public Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "ChooseFormPaymentActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private creditCardId:J

.field public imageViewType:Landroid/widget/ImageView;

.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;

.field public radioButtonChooseBillet:Landroid/widget/RadioButton;

.field public radioButtonChooseCreditCard:Landroid/widget/RadioButton;

.field root:Landroid/view/View;

.field public textViewCardDescription:Landroid/widget/TextView;

.field public textViewTitle:Landroid/widget/TextView;

.field public textViewTotalToPay:Landroid/widget/TextView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field public viewAddNewCard:Landroid/view/View;

.field public viewBankSlip:Landroid/view/View;

.field public viewCreditCard:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;)Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private choosePaymentMethod()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseCreditCard:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->root:Landroid/view/View;

    const v1, 0x7f1200e9

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/SnackbarUtils;->show(Landroid/view/View;I)V

    goto :goto_2

    .line 175
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;

    invoke-virtual {v1}, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->getMemberShip()Lcom/startapps/crossx/model/Membership;

    move-result-object v1

    const-string v2, "membership_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const-string v2, "method_payment"

    if-eqz v1, :cond_2

    const-string v1, "billet_payment"

    .line 178
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v1, "credit_card_payment"

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "credit_card_extra"

    .line 181
    iget-wide v2, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->creditCardId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    :goto_1
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method private setCheckedRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 1

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public btContinueListener()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->choosePaymentMethod()V

    return-void
.end method

.method public hideAll()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1200e6

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 67
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/app/Activity;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 68
    new-instance v0, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/ChooseFormPaymentContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewCreditCard:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewBankSlip:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewAddNewCard:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseCreditCard:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 199
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "credit_card_extra"

    .line 200
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/CreditCard;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->upCardInfo(Lcom/startapps/crossx/model/CreditCard;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04c0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0367

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04be

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0366

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04bd

    if-ne p1, v0, :cond_4

    .line 155
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "list_cards"

    const-string v1, "from_card_choose"

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x64

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 153
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseCreditCard:Landroid/widget/RadioButton;

    invoke-direct {p0, p1, v0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->setCheckedRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto :goto_2

    .line 151
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseCreditCard:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    invoke-direct {p0, p1, v0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->setCheckedRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->choosePaymentMethod()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->onBackPressed()V

    .line 142
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0023

    return v0
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->hideAll()V

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;

    new-instance v1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$1;-><init>(Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/rest/error/CrossXError;->showErrorAndTryAgain(Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public upCardInfo(Lcom/startapps/crossx/model/CreditCard;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 114
    iget-wide v0, p1, Lcom/startapps/crossx/model/CreditCard;->id:J

    iput-wide v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->creditCardId:J

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewCreditCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p1, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/CardUtil;->setBrandCard(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewCardDescription:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const p1, 0x7f1200e5

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/startapps/crossx/model/CreditCard;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewCreditCard:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public upLayout(Lcom/startapps/crossx/model/CreditCard;Lcom/startapps/crossx/model/Membership;ZZ)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewTotalToPay:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/startapps/crossx/model/Membership;->installmentsValue:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f1201ee

    invoke-virtual {p0, v1, p2}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewAddNewCard:Landroid/view/View;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewBankSlip:Landroid/view/View;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->upCardInfo(Lcom/startapps/crossx/model/CreditCard;Z)V

    return-void
.end method
