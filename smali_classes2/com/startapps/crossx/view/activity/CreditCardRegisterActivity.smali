.class public Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "CreditCardRegisterActivity.java"


# instance fields
.field public btnFavorite:Landroid/widget/LinearLayout;

.field public cardBackground:Landroidx/cardview/widget/CardView;

.field public cardBrand:Landroid/widget/ImageView;

.field public cardExpiration:Landroid/widget/TextView;

.field public cardHolderName:Landroid/widget/TextView;

.field public cardNumber:Landroid/widget/TextView;

.field private creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

.field public cvvEdit:Landroid/widget/EditText;

.field public expirationEdit:Landroid/widget/EditText;

.field public favoriteImage:Landroid/widget/ImageView;

.field public holderCityEdit:Landroid/widget/EditText;

.field public holderCpfEdit:Landroid/widget/EditText;

.field public holderDistrictEdit:Landroid/widget/EditText;

.field public holderEmailEdit:Landroid/widget/EditText;

.field public holderNameExtraEdit:Landroid/widget/EditText;

.field public holderPhoneEdit:Landroid/widget/EditText;

.field public holderStateEdit:Landroid/widget/EditText;

.field public holderStreetComplementEdit:Landroid/widget/EditText;

.field public holderStreetEdit:Landroid/widget/EditText;

.field public holderStreetNumberEdit:Landroid/widget/EditText;

.field public holderSurnameEdit:Landroid/widget/EditText;

.field public holderZipCodeEdit:Landroid/widget/EditText;

.field private isDefault:Z

.field protected llContainerOtherUser:Landroid/widget/LinearLayout;

.field private maskCpf:Lcom/startapps/crossx/controller/utils/MaskText;

.field private maskCvv:Lcom/startapps/crossx/controller/utils/MaskText;

.field private maskExpiration:Lcom/startapps/crossx/controller/utils/MaskText;

.field private maskNumber:Lcom/startapps/crossx/controller/utils/MaskText;

.field private maskPhone:Lcom/startapps/crossx/controller/utils/MaskText;

.field private maskZipCode:Lcom/startapps/crossx/controller/utils/MaskText;

.field public nameEdit:Landroid/widget/EditText;

.field public numberEdit:Landroid/widget/EditText;

.field protected progressBarLoad:Landroid/widget/ProgressBar;

.field public switchOtherUser:Landroid/widget/Switch;

.field public textViewOtherUser:Landroid/widget/TextView;

.field private zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;


# direct methods
.method public static synthetic $r8$lambda$U4PLREHGitc4dyP7UR_MnAOp2xI(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->lambda$setStates$1(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eoAQeK2MBA-FZMV6SWqjaDlJ-MQ(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmaskZipCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)Lcom/startapps/crossx/controller/utils/MaskText;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskZipCode:Lcom/startapps/crossx/controller/utils/MaskText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskNumber:Lcom/startapps/crossx/controller/utils/MaskText;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisablePostalCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->disablePostalCode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAddressByZipCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getAddressByZipCode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->isDefault:Z

    .line 111
    new-instance v0, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    return-void
.end method

.method private addListenersInEditTex()V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->nameEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 417
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->nameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$4;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 440
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 527
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$6;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$6;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private defineToolbar()V
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12005b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private disablePostalCode()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method private getAddressByZipCode(Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;->getAddressByZipCode(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->llContainerOtherUser:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setStates$1(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 591
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private registerNewCreditCard()V
    .locals 22

    move-object/from16 v0, p0

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->hideKeyboard()V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->validateForm()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/CreditCardHelper;->isExpirationValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f120039

    .line 251
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_1
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/classes/Mask;->unmask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    iget-boolean v7, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->isDefault:Z

    .line 262
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->switchOtherUser:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    const/4 v1, 0x0

    if-eqz v8, :cond_2

    .line 263
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderNameExtraEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_2
    move-object v9, v1

    :goto_0
    if-eqz v8, :cond_3

    .line 264
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderSurnameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_3
    move-object v10, v1

    :goto_1
    if-eqz v8, :cond_4

    .line 265
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/classes/Mask;->unmask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    :cond_4
    move-object v11, v1

    :goto_2
    if-eqz v8, :cond_5

    .line 266
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_3

    :cond_5
    move-object v12, v1

    :goto_3
    if-eqz v8, :cond_6

    .line 267
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_4

    :cond_6
    move-object v13, v1

    :goto_4
    if-eqz v8, :cond_7

    .line 268
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/classes/Mask;->unmask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_5

    :cond_7
    move-object v14, v1

    :goto_5
    if-eqz v8, :cond_8

    .line 269
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_6

    :cond_8
    move-object v15, v1

    :goto_6
    if-eqz v8, :cond_9

    .line 270
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_7

    :cond_9
    move-object/from16 v16, v1

    :goto_7
    if-eqz v8, :cond_b

    .line 271
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetComplementEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetComplementEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v17, v1

    :goto_9
    if-eqz v8, :cond_c

    .line 272
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_a

    :cond_c
    move-object/from16 v18, v1

    :goto_a
    if-eqz v8, :cond_d

    .line 273
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_b

    :cond_d
    move-object/from16 v19, v1

    :goto_b
    if-eqz v8, :cond_e

    .line 274
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    move-object/from16 v20, v1

    .line 276
    iget-object v2, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;

    move-object/from16 v21, v1

    invoke-direct {v1, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$3;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual/range {v2 .. v21}, Lcom/startapps/crossx/rest/clients/CreditCardClient;->registerCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private validateForm()Z
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->nameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f120057

    .line 329
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120059

    .line 333
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f12003a

    .line 337
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f120036

    .line 341
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->switchOtherUser:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 346
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderNameExtraEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f120046

    .line 347
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderSurnameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f120052

    .line 352
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 356
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f12003f

    .line 357
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_7

    const v0, 0x7f12003e

    .line 360
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 364
    :cond_7
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f120044

    .line 365
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 369
    :cond_8
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f120049

    .line 370
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 372
    :cond_9
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_a

    const v0, 0x7f120048

    .line 373
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f120053

    .line 378
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 380
    :cond_b
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_c

    const v0, 0x7f120054

    .line 381
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 385
    :cond_c
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f120050

    .line 386
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 390
    :cond_d
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f12004f

    .line 391
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 395
    :cond_e
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f120042

    .line 396
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 400
    :cond_f
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f12003c

    .line 401
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 405
    :cond_10
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f12004b

    .line 406
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public changeSwitch()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->switchOtherUser:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public favButtonClick()V
    .locals 2

    .line 582
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->isDefault:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->isDefault:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080156

    goto :goto_0

    :cond_0
    const v0, 0x7f080155

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->favoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d002c

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 577
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 136
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->finish()V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "count_cards"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->btnFavorite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->btnFavorite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    :cond_2
    :goto_0
    new-instance p1, Lcom/startapps/crossx/rest/clients/CreditCardClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/CreditCardClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->creditCardClient:Lcom/startapps/crossx/rest/clients/CreditCardClient;

    .line 153
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Cadastrar cart\u00e3o de cr\u00e9dito"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->defineToolbar()V

    .line 155
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->addListenersInEditTex()V

    .line 157
    new-instance p1, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    const-string v2, "##/##"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskExpiration:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 158
    new-instance p1, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cvvEdit:Landroid/widget/EditText;

    const-string v2, "####"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskCvv:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 159
    new-instance p1, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    const-string v2, "#### #### #### #### ###"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskNumber:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 160
    new-instance p1, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    const-string v2, "#####-###"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskZipCode:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 161
    new-instance p1, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    const-string v2, "###.###.###-##"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskCpf:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 162
    new-instance p1, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    const-string v2, "(##) #####-####"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskPhone:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 164
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->expirationEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskExpiration:Lcom/startapps/crossx/controller/utils/MaskText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cvvEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskCvv:Lcom/startapps/crossx/controller/utils/MaskText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskNumber:Lcom/startapps/crossx/controller/utils/MaskText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskZipCode:Lcom/startapps/crossx/controller/utils/MaskText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCpfEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskCpf:Lcom/startapps/crossx/controller/utils/MaskText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderPhoneEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->maskPhone:Lcom/startapps/crossx/controller/utils/MaskText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderZipCodeEdit:Landroid/widget/EditText;

    new-instance v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->switchOtherUser:Landroid/widget/Switch;

    new-instance v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 552
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 553
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 558
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    .line 566
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->registerNewCreditCard()V

    return v2

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->goBack()V

    return v2
.end method

.method public setStates()V
    .locals 2

    .line 589
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 590
    invoke-static {}, Lcom/startapps/crossx/model/enuns/BrStates;->getInitialsStates()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    .line 591
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
