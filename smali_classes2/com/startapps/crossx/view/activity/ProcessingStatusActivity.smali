.class public Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "ProcessingStatusActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;
.implements Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;


# instance fields
.field buttonChangeCard:Landroid/widget/Button;

.field buttonTryAgain:Landroid/widget/Button;

.field private idCreditCard:J

.field imageViewBackPressed:Landroid/widget/ImageView;

.field imageViewStatusProcessing:Landroid/widget/ImageView;

.field private installmentsValue:Ljava/lang/String;

.field private presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

.field progressBarProcessingStatus:Landroid/widget/ProgressBar;

.field textViewStatusDescription:Landroid/widget/TextView;

.field textViewTotalToPay:Landroid/widget/TextView;

.field textViewTotalToPayValue:Landroid/widget/TextView;

.field textviewStatusTitle:Landroid/widget/TextView;

.field viewProcessingPayment:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private fullScreen()V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public backPressed()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->onBackPressed()V

    return-void
.end method

.method public changeCard()V
    .locals 3

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "list_cards"

    const-string v2, "from_card_choose"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public clickDown()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->clickedDown()V

    return-void
.end method

.method public clickedChangeCard(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->clickedChangeCard(Lcom/startapps/crossx/model/Notification;)V

    return-void
.end method

.method public clickedEnablePayment(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->clickedEnablePayment(Lcom/startapps/crossx/model/Notification;)V

    return-void
.end method

.method public clickedOk()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->clickedOk()V

    return-void
.end method

.method public clickedToPayNow(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->clickedToPayNow(Lcom/startapps/crossx/model/Notification;)V

    return-void
.end method

.method public finishActivity()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->finish()V

    return-void
.end method

.method public goToHome()V
    .locals 1

    const-string v0, "dialog"

    .line 231
    invoke-static {p0, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goToHomeAndClickChangeCard(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    const-string v0, "action_change_card"

    .line 236
    invoke-static {p0, p1, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public goToHomeAndClickToPayNow(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    const-string/jumbo v0, "to_pay_now"

    .line 241
    invoke-static {p0, p1, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public goToHomeEnablePayment(Lcom/startapps/crossx/model/Notification;)V
    .locals 1

    const-string v0, "enable_card"

    .line 246
    invoke-static {p0, p1, v0}, Lcom/startapps/crossx/view/activity/HomeActivity;->startActivity(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;Lcom/startapps/crossx/model/Notification;Ljava/lang/String;)V

    return-void
.end method

.method protected init()V
    .locals 3

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity$1;-><init>(Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/ProcessingStatusContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "broadcast_payment_polling"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->fullScreen()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 178
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "credit_card_extra"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/CreditCard;

    if-eqz p1, :cond_0

    .line 179
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    iget-wide v0, p1, Lcom/startapps/crossx/model/CreditCard;->id:J

    iput-wide v0, p2, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->creditCardId:J

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->requestPayment()V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->requestPayment()V

    :goto_0
    return-void
.end method

.method public onBack()V
    .locals 2

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    iget v0, v0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->statusProcessing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->finish()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->viewProcessingPayment:Landroid/view/View;

    const v1, 0x7f1201f0

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/SnackbarUtils;->show(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public populateDialogCardRefused(Lcom/startapps/crossx/model/DataPayment;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;)V

    return-void
.end method

.method public populateDialogSuccess(Lcom/startapps/crossx/model/DataPayment;)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;)V

    return-void
.end method

.method public processingPayment(Ljava/lang/String;)V
    .locals 3

    .line 95
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->installmentsValue:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewBackPressed:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->progressBarProcessingStatus:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textviewStatusTitle:Landroid/widget/TextView;

    const v0, 0x7f120109

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewStatusDescription:Landroid/widget/TextView;

    const v0, 0x7f12010a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonTryAgain:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonChangeCard:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d003f

    return v0
.end method

.method public showErrorGenerateBillet()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewBackPressed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonTryAgain:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textviewStatusTitle:Landroid/widget/TextView;

    const v1, 0x7f12010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewStatusDescription:Landroid/widget/TextView;

    const v1, 0x7f120106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->progressBarProcessingStatus:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonChangeCard:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showErrorUnexpected()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewBackPressed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonTryAgain:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->buttonChangeCard:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewTotalToPayValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    iget-object v1, v1, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    iget-object v1, v1, Lcom/startapps/crossx/model/Membership;->installmentsValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textviewStatusTitle:Landroid/widget/TextView;

    const v1, 0x7f12010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->textViewStatusDescription:Landroid/widget/TextView;

    const v1, 0x7f12010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->imageViewStatusProcessing:Landroid/widget/ImageView;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->progressBarProcessingStatus:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public showMessagePaymentDone()V
    .locals 1

    const-string v0, "Pagamento realizado com sucesso"

    .line 160
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public startBilletActivity(Lcom/startapps/crossx/model/DataPayment;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->finish()V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/BilletActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data_payment_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    iget-object v0, v0, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->membership:Lcom/startapps/crossx/model/Membership;

    const-string v1, "membership_extra"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startServicePolling()V
    .locals 2

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/services/PaymentPollingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public tryAgain()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->installmentsValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->processingPayment(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ProcessingStatusActivity;->presenter:Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;

    invoke-virtual {v0}, Lcom/startapps/crossx/classes/presenter/ProcessingStatusPresenter;->requestPayment()V

    return-void
.end method
