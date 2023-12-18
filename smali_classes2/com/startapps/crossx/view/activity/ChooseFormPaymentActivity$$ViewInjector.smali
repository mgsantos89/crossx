.class public Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "ChooseFormPaymentActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0492

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a04bd

    const-string v1, "field \'viewAddNewCard\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewAddNewCard:Landroid/view/View;

    const v0, 0x7f0a04be

    const-string v1, "field \'viewBankSlip\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewBankSlip:Landroid/view/View;

    const v0, 0x7f0a04c0

    const-string v1, "field \'viewCreditCard\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewCreditCard:Landroid/view/View;

    const v0, 0x7f0a044f

    const-string v1, "field \'textViewCardDescription\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewCardDescription:Landroid/widget/TextView;

    const v0, 0x7f0a0479

    const-string v1, "field \'textViewTotalToPay\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewTotalToPay:Landroid/widget/TextView;

    const v0, 0x7f0a047f

    const-string v1, "field \'textViewTitle\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0212

    const-string v1, "field \'imageViewType\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->imageViewType:Landroid/widget/ImageView;

    const v0, 0x7f0a0367

    const-string v1, "field \'radioButtonChooseCreditCard\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseCreditCard:Landroid/widget/RadioButton;

    const v0, 0x7f0a0366

    const-string v1, "field \'radioButtonChooseBillet\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    const v0, 0x7f0a037b

    const-string v1, "field \'root\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->root:Landroid/view/View;

    const v0, 0x7f0a00b1

    const-string v1, "method \'btContinueListener\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 33
    new-instance p2, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$$ViewInjector$1;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewAddNewCard:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewBankSlip:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->viewCreditCard:Landroid/view/View;

    .line 48
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewCardDescription:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewTotalToPay:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->textViewTitle:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->imageViewType:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseCreditCard:Landroid/widget/RadioButton;

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->radioButtonChooseBillet:Landroid/widget/RadioButton;

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->root:Landroid/view/View;

    return-void
.end method
