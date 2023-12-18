.class public Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "CreditCardRegisterActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a006d

    const-string v1, "field \'cardBackground\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBackground:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a00d3

    const-string v1, "field \'cardBrand\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBrand:Landroid/widget/ImageView;

    const v0, 0x7f0a0306

    const-string v1, "field \'nameEdit\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->nameEdit:Landroid/widget/EditText;

    const v0, 0x7f0a031b

    const-string v1, "field \'numberEdit\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    const v0, 0x7f0a0198

    const-string v1, "field \'expirationEdit\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    const v0, 0x7f0a0137

    const-string v1, "field \'cvvEdit\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cvvEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d2

    const-string v1, "field \'holderNameExtraEdit\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderNameExtraEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d8

    const-string v1, "field \'holderSurnameEdit\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderSurnameEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01cf

    const-string v1, "field \'holderCpfEdit\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d1

    const-string v1, "field \'holderEmailEdit\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderEmailEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d3

    const-string v1, "field \'holderPhoneEdit\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d9

    const-string v1, "field \'holderZipCodeEdit\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d5

    const-string v1, "field \'holderStreetEdit\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d0

    const-string v1, "field \'holderDistrictEdit\'"

    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d7

    const-string v1, "field \'holderStreetNumberEdit\'"

    .line 38
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetNumberEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d6

    const-string v1, "field \'holderStreetComplementEdit\'"

    .line 40
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetComplementEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01ce

    const-string v1, "field \'holderCityEdit\'"

    .line 42
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    const v0, 0x7f0a01d4

    const-string v1, "field \'holderStateEdit\' and method \'setStates\'"

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    .line 46
    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d9

    const-string v1, "field \'switchOtherUser\'"

    .line 54
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->switchOtherUser:Landroid/widget/Switch;

    const v0, 0x7f0a0441

    const-string v1, "field \'textViewOtherUser\' and method \'changeSwitch\'"

    .line 56
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->textViewOtherUser:Landroid/widget/TextView;

    .line 58
    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d7

    const-string v1, "field \'cardHolderName\'"

    .line 66
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardHolderName:Landroid/widget/TextView;

    const v0, 0x7f0a00d9

    const-string v1, "field \'cardNumber\'"

    .line 68
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardNumber:Landroid/widget/TextView;

    const v0, 0x7f0a00d6

    const-string v1, "field \'cardExpiration\'"

    .line 70
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardExpiration:Landroid/widget/TextView;

    const v0, 0x7f0a0096

    const-string v1, "field \'btnFavorite\' and method \'favButtonClick\'"

    .line 72
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->btnFavorite:Landroid/widget/LinearLayout;

    .line 74
    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$3;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$3;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0097

    const-string v1, "field \'favoriteImage\'"

    .line 82
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->favoriteImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0350

    const-string v1, "field \'progressBarLoad\'"

    .line 84
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02be

    const-string v1, "field \'llContainerOtherUser\'"

    .line 86
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 87
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->llContainerOtherUser:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBackground:Landroidx/cardview/widget/CardView;

    .line 92
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBrand:Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->nameEdit:Landroid/widget/EditText;

    .line 94
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    .line 95
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    .line 96
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cvvEdit:Landroid/widget/EditText;

    .line 97
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderNameExtraEdit:Landroid/widget/EditText;

    .line 98
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderSurnameEdit:Landroid/widget/EditText;

    .line 99
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    .line 100
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderEmailEdit:Landroid/widget/EditText;

    .line 101
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    .line 102
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    .line 103
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    .line 104
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    .line 105
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetNumberEdit:Landroid/widget/EditText;

    .line 106
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetComplementEdit:Landroid/widget/EditText;

    .line 107
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    .line 108
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    .line 109
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->switchOtherUser:Landroid/widget/Switch;

    .line 110
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->textViewOtherUser:Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardHolderName:Landroid/widget/TextView;

    .line 112
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardNumber:Landroid/widget/TextView;

    .line 113
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardExpiration:Landroid/widget/TextView;

    .line 114
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->btnFavorite:Landroid/widget/LinearLayout;

    .line 115
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->favoriteImage:Landroid/widget/ImageView;

    .line 116
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    .line 117
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->llContainerOtherUser:Landroid/widget/LinearLayout;

    return-void
.end method
