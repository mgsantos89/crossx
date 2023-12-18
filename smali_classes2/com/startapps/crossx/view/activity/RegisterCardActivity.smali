.class public Lcom/startapps/crossx/view/activity/RegisterCardActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "RegisterCardActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;


# static fields
.field private static final MY_SCAN_REQUEST_CODE:I = 0x64


# instance fields
.field private creditCard:Lcom/startapps/crossx/model/CreditCard;

.field editTextCardNumber:Landroid/widget/EditText;

.field editTextCvv:Landroid/widget/EditText;

.field editTextName:Landroid/widget/EditText;

.field editTextValidate:Landroid/widget/EditText;

.field private placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;

.field recurrece:Landroid/view/View;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static bridge synthetic -$$Nest$fgetcreditCard(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)Lcom/startapps/crossx/model/CreditCard;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->presenter:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private upLayout()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/startapps/crossx/model/CreditCard;->number:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/startapps/crossx/model/CreditCard;->name:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/startapps/crossx/model/CreditCard;->expirationMonth:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/startapps/crossx/model/CreditCard;->expirationYear:I

    return-void
.end method


# virtual methods
.method public backWithResult(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "credit_card_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->setResult(I)V

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->finish()V

    return-void
.end method

.method public hideAll()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    return-void
.end method

.method protected init()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1201de

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 58
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/app/Activity;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    .line 59
    new-instance v0, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/RegisterCardPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->presenter:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;

    .line 60
    new-instance v0, Lcom/startapps/crossx/model/CreditCard;

    invoke-direct {v0}, Lcom/startapps/crossx/model/CreditCard;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;

    sget-object v2, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->CARD_NUMBER:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;-><init>(Lcom/startapps/crossx/model/enuns/MaskTypeEnum;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;

    sget-object v2, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->VALIDATE_CARD:Lcom/startapps/crossx/model/enuns/MaskTypeEnum;

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;-><init>(Lcom/startapps/crossx/model/enuns/MaskTypeEnum;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "io.card.payment.scanResult"

    .line 139
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/card/payment/CreditCard;

    .line 141
    iget p2, p1, Lio/card/payment/CreditCard;->expiryMonth:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 142
    iget p3, p1, Lio/card/payment/CreditCard;->expiryYear:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 143
    iget v0, p1, Lio/card/payment/CreditCard;->expiryMonth:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextName:Landroid/widget/EditText;

    iget-object v1, p1, Lio/card/payment/CreditCard;->cardholderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    iget-object v1, p1, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCvv:Landroid/widget/EditText;

    iget-object p1, p1, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/KeyboardHelper;->hideKeyboardActivity(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 72
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public openHome()V
    .locals 2

    const-string v0, "Cart\u00e3o salvo com sucesso"

    .line 101
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->showToast(Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public registerCard()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->upLayout()V

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->presenter:Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-interface {v0, v1}, Lcom/startapps/crossx/Interfaces/contracts/RegisterCardContract$Presenter;->registerCard(Lcom/startapps/crossx/model/CreditCard;)V

    :cond_0
    return-void
.end method

.method public scannerCreditCard()V
    .locals 4

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/card/payment/CardIOActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "io.card.payment.requireExpiry"

    const/4 v2, 0x1

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requireCVV"

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requirePostalCode"

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.restrictPostalCodeToNumericOnly"

    .line 122
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requireCardholderName"

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.suppressManual"

    .line 124
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.keepApplicationTheme"

    .line 125
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.hideLogo"

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.intentSenderIsPayPal"

    .line 127
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0043

    return v0
.end method

.method public showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/CrossXError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conex\u00e3o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/CrossXError;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/startapps/crossx/view/activity/RegisterCardActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity$1;-><init>(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/startapps/crossx/controller/utils/DialogUtils;->showDialogError(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/CrossXError;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/startapps/crossx/view/activity/RegisterCardActivity$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/RegisterCardActivity$2;-><init>(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/startapps/crossx/controller/utils/DialogUtils;->showDialogError(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->placeholdersManager:Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    return-void
.end method

.method public showRecurrenceOption()V
    .locals 0

    return-void
.end method

.method public validate()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Validator;->isNameValidity(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f1201e6

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Validator;->isCardValidity(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCardNumber:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Validator;->isValidateValidity(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextValidate:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCvv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Validator;->isValidityCVV(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->editTextCvv:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/RegisterCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method
