.class public Lcom/startapps/crossx/view/activity/CreditCardListActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "CreditCardListActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnCreditCardListener;


# static fields
.field private static final CODE_NEW_CREDIT_CARD:I = 0x7e3


# instance fields
.field public btnNewCreditCard:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field public cardPlaceholder:Landroid/widget/RelativeLayout;

.field private creditCardAdapter:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

.field private creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

.field private isSelectCreditCard:Z

.field public listCreditCard:Landroid/widget/ListView;

.field private payment:Lcom/startapps/crossx/model/Payment;

.field private position:I

.field public progressBar:Landroid/widget/ProgressBar;

.field private userCreditCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Lcom/startapps/crossx/view/adapter/CreditCardAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->creditCardAdapter:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSelectCreditCard(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->isSelectCreditCard:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userCreditCardList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcreditCardAdapter(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Lcom/startapps/crossx/view/adapter/CreditCardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->creditCardAdapter:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuserCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userCreditCardList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoDeleteCreditCard(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->doDeleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfetchCreditCardList(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->fetchCreditCardList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->isSelectCreditCard:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->payment:Lcom/startapps/crossx/model/Payment;

    .line 60
    iput v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->position:I

    return-void
.end method

.method private deleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 3

    const-string v0, "Delete credit card"

    .line 198
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12001f

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;-><init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Lcom/startapps/crossx/model/UserCreditCard;I)V

    const-string p1, "OK"

    .line 203
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    new-instance p1, Lcom/startapps/crossx/view/activity/CreditCardListActivity$4;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity$4;-><init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V

    const-string p2, "CANCELAR"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private doDeleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity$5;-><init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;I)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/clients/CreditCardClient;->deleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private fetchCreditCardList()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->cardPlaceholder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity$1;-><init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/clients/CreditCardClient;->creditCards(Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private setCreditCardToDefault(Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity$2;-><init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;I)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/clients/CreditCardClient;->setCreditCardToDefault(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120022

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d002b

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "is_new_credit_card"

    .line 290
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 291
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->fetchCreditCardList()V

    const p1, 0x7f12005a

    .line 294
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->finish()V

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 90
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_select_credit_card"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->isSelectCreditCard:Z

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->btnNewCreditCard:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "payment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Payment;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->payment:Lcom/startapps/crossx/model/Payment;

    .line 96
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->position:I

    .line 99
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Lista de cart\u00e3o de cr\u00e9dito"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->defineToolbar()V

    .line 102
    new-instance p1, Lcom/startapps/crossx/rest/clients/CreditCardClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/CreditCardClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userCreditCardList:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->fetchCreditCardList()V

    return-void
.end method

.method public onDeleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->isSelectCreditCard:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->deleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 251
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 252
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 268
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->finish()V

    .line 272
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSelectCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 1

    .line 163
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "credit_card"

    .line 164
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "position"

    .line 165
    iget v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->position:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "payment"

    .line 166
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->payment:Lcom/startapps/crossx/model/Payment;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->finish()V

    return-void
.end method

.method public onSetCreditCardToDefault(Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->isSelectCreditCard:Z

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->setCreditCardToDefault(Lcom/startapps/crossx/model/UserCreditCard;I)V

    :cond_0
    return-void
.end method

.method public setNewCreditCardClick()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userCreditCardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 278
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const v1, 0x7f120021

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120272

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showWarning(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->userCreditCardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToRegisterCreditCard(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7e3

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
