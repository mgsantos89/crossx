.class public Lcom/startapps/crossx/view/fragment/ProfileFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "ProfileFragment.java"


# instance fields
.field backgroundImg:Landroid/widget/ImageView;

.field boxData:Landroid/widget/RelativeLayout;

.field boxEmailData:Landroid/widget/TextView;

.field boxMembership:Landroid/view/View;

.field boxNameData:Landroid/widget/TextView;

.field boxPR:Landroid/view/View;

.field boxSeeData:Landroid/widget/TextView;

.field cardBox:Landroid/view/View;

.field cardCreditCard:Landroid/view/View;

.field cardMembership:Landroid/view/View;

.field checkinCount:Landroid/widget/TextView;

.field confirmNewPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

.field creditCardData:Landroid/widget/RelativeLayout;

.field dataUser:Landroid/widget/RelativeLayout;

.field emailData:Landroid/widget/RelativeLayout;

.field icFeedback:Landroid/widget/ImageView;

.field membershipData:Landroid/widget/RelativeLayout;

.field nameUser:Landroid/widget/TextView;

.field newPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

.field nicknameUser:Landroid/widget/TextView;

.field protected onCLickPersonalRecordListener:Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;

.field password:Lcom/rengwuxian/materialedittext/MaterialEditText;

.field personalRecodsCount:Landroid/widget/TextView;

.field positiveAction:Landroid/view/View;

.field profileImg:Landroid/widget/ImageView;

.field private showFinancialMenu:Z

.field totalPRS:I

.field totalTrain:I

.field totalWods:I

.field private userModel:Lcom/startapps/crossx/model/UserModel;

.field private userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalTrain:I

    .line 101
    iput v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalWods:I

    .line 102
    iput v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalPRS:I

    return-void
.end method

.method private formatSubInfo()Ljava/lang/String;
    .locals 10

    const-string v0, "%d %s"

    const-string/jumbo v1, "yyyy-MM-dd"

    const v2, 0x7f1201bc

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v7, "%d %s - %s kg"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 375
    invoke-virtual {v9}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 374
    invoke-static {v9}, Lcom/startapps/crossx/controller/utils/DateUtility;->getAge(Ljava/util/Date;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    .line 376
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    iget-object v4, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    .line 373
    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 382
    invoke-virtual {v7}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 381
    invoke-static {v7}, Lcom/startapps/crossx/controller/utils/DateUtility;->getAge(Ljava/util/Date;)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 383
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    .line 380
    invoke-static {v3, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 388
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 392
    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->getAge(Ljava/util/Date;)Ljava/lang/Integer;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 390
    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstace(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/ProfileFragment;
    .locals 3

    .line 109
    new-instance v0, Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p0

    .line 113
    :cond_0
    iput-object p0, v0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method

.method private getProfileBox()Lcom/startapps/crossx/model/BoxModel;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private populateUser()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Perfil outro atleta"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 362
    :cond_1
    :goto_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Perfil"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    :goto_1
    return-void
.end method


# virtual methods
.method protected createDialogAlterPassword()V
    .locals 3

    .line 399
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Alterar senha"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 401
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120186

    .line 402
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d006b

    const/4 v2, 0x0

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 404
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 405
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120185

    .line 406
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120181

    .line 407
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    .line 408
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    iput-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->positiveAction:Landroid/view/View;

    .line 421
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 422
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->inflateViewAlterPassword(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 423
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0081

    return v0
.end method

.method protected inflateViewAlterPassword(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .line 427
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialEditText;

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->newPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 428
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialEditText;

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->password:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 429
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->confirmNewPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 430
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->newPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    new-instance v0, Lcom/startapps/crossx/view/fragment/ProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment$3;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 446
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->password:Lcom/rengwuxian/materialedittext/MaterialEditText;

    new-instance v0, Lcom/startapps/crossx/view/fragment/ProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment$4;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->confirmNewPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    new-instance v0, Lcom/startapps/crossx/view/fragment/ProfileFragment$5;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment$5;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected logout()V
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 524
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 526
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onAttach(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    .line 165
    instance-of v0, p1, Lcom/startapps/crossx/view/activity/HomeActivity;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/startapps/crossx/view/activity/HomeActivity;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->onCLickPersonalRecordListener:Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;

    :cond_0
    return-void
.end method

.method public onClickImageProfile()V
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToPhotoViewer(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 193
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 195
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getProfileBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0e000c

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 209
    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->HEADCOACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    .line 210
    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/UsersRole;->geRole()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-boolean v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->showFinancialMenu:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e000d

    .line 213
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 136
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 138
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxPR:Landroid/view/View;

    new-instance v0, Lcom/startapps/crossx/view/fragment/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p3

    const-string v0, "payments"

    invoke-virtual {p3, v0}, Lcom/startapps/crossx/controller/utils/Preference;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 149
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxMembership:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iput-boolean p3, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->showFinancialMenu:Z

    goto :goto_0

    .line 152
    :cond_0
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxMembership:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iput-boolean p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->showFinancialMenu:Z

    .line 156
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->populateUser()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 187
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 188
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0055

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a017e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02cc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->logout()V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->setDataUserClick()V

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->createDialogAlterPassword()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Perfil outro atleta"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_1
    :goto_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Perfil"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->setupUI()V

    .line 182
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->requestStatistics()V

    return-void
.end method

.method protected requestAlterPassword()V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->password:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {v1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->newPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 495
    invoke-virtual {v2}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/fragment/ProfileFragment$6;

    .line 496
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v4, p0, v5}, Lcom/startapps/crossx/view/fragment/ProfileFragment$6;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    .line 494
    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method protected requestStatistics()V
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v3, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;

    .line 507
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v3, p0, v4}, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    .line 506
    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->getAccountStatistics(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method public setBoxAccessionClick()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goMemberShips(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setBoxDataClick()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToBox(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setCreditCardDataClick()V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/startapps/crossx/controller/utils/Intents;->goToCreditCardList(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/Payment;IZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setDataUserClick()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToProfile(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setEmailDataClick()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setUserMembershipDataClick()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToUserMembershipList(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setupUI()V
    .locals 5

    .line 298
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->profileImg:Landroid/widget/ImageView;

    const v3, 0x7f080172

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 299
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->backgroundImg:Landroid/widget/ImageView;

    const v3, 0x7f080171

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 301
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->checkinCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalTrain:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->personalRecodsCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalTrain:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v0, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    .line 306
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->getProfileBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 310
    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->isAffiliate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->isCoachHeadCoach(Lcom/startapps/crossx/model/UserModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->isSameBox(Lcom/startapps/crossx/model/BoxModel;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->isUserLogged(Lcom/startapps/crossx/model/UserModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nicknameUser:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 326
    :cond_4
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nicknameUser:Landroid/widget/TextView;

    .line 327
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x6

    .line 327
    :goto_2
    invoke-static {v2}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/UsersRole;->getName()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :goto_3
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxNameData:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxEmailData:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nameUser:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getCompleteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 346
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Utils;->userLoggedHeadCoadh()Z

    move-result v0

    if-nez v0, :cond_7

    .line 347
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->emailData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 352
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->emailData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->membershipData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->creditCardData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->icFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxSeeData:Landroid/widget/TextView;

    const-string/jumbo v1, "visualizar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method protected validFieldsPassword()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->newPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->confirmNewPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->newPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 484
    invoke-virtual {v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->confirmNewPassword:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {v2}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->password:Lcom/rengwuxian/materialedittext/MaterialEditText;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->positiveAction:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->positiveAction:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method
