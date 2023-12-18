.class public final Lcom/startapps/crossx/view/activity/BillingAddressRegister;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "BillingAddressRegister.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0014J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u000eH\u0002J\u0012\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u000eH\u0002J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u000eH\u0002J\u0008\u0010\"\u001a\u00020\u000eH\u0002J\u0008\u0010#\u001a\u00020\u000eH\u0002J\u0008\u0010$\u001a\u00020\u000eH\u0002J\u0008\u0010%\u001a\u00020\u000eH\u0002J\u0008\u0010&\u001a\u00020\u000eH\u0002J\u0008\u0010\'\u001a\u00020\u000eH\u0002J\u0008\u0010(\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/BillingAddressRegister;",
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "()V",
        "mEditTextZipcode",
        "Landroid/widget/EditText;",
        "mTextMaskZipcode",
        "Lcom/startapps/crossx/controller/utils/MaskText;",
        "mUserModel",
        "Lcom/startapps/crossx/model/UserModel;",
        "mViewViewModel",
        "Lcom/startapps/crossx/viewmodel/ProfileViewModel;",
        "zipCodeRepository",
        "Lcom/startapps/crossx/rest/repository/ZipCodeRepository;",
        "clearAdress",
        "",
        "defineFonts",
        "endLoader",
        "getAddressByZipCode",
        "zipcode",
        "",
        "getToLayoutInflate",
        "",
        "goToHome",
        "initLoader",
        "isValidForm",
        "",
        "observeUpdateUser",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "populateAddress",
        "model",
        "Lcom/startapps/crossx/model/ZipcodeAddress;",
        "registerAdapter",
        "registerClick",
        "registerEvents",
        "registerMask",
        "registerObserve",
        "revalStates",
        "saveBillingAddress",
        "submitForm",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEditTextZipcode:Landroid/widget/EditText;

.field private mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

.field private mUserModel:Lcom/startapps/crossx/model/UserModel;

.field private mViewViewModel:Lcom/startapps/crossx/viewmodel/ProfileViewModel;

.field private zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;


# direct methods
.method public static synthetic $r8$lambda$3OJbKUt90eUNwK1VXfLA3YGry9U(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->observeUpdateUser$lambda-5(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_xnkTE0fR7U5JR3vDFqA7PaZNYs(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerClick$lambda-3(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qECXGoom3mgFliL82SxqYQxY37o(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerEvents$lambda-1(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$r0-ImotDlcIRdxwQK2vM4OoY__Y(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->revalStates$lambda-4(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uxBbmSBGmLiNOBedxuKW0hAxvRE(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerClick$lambda-2(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    .line 37
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    const-string v1, "getInstance().currentUser"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method

.method public static final synthetic access$getAddressByZipCode(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->getAddressByZipCode(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getMTextMaskZipcode$p(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)Lcom/startapps/crossx/controller/utils/MaskText;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

    return-object p0
.end method

.method public static final synthetic access$populateAddress(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/startapps/crossx/model/ZipcodeAddress;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->populateAddress(Lcom/startapps/crossx/model/ZipcodeAddress;)V

    return-void
.end method

.method private final clearAdress()V
    .locals 4

    .line 109
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_6

    const-string v2, ""

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget v0, Lcom/startapps/crossx/R$id;->text_input_complement:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v0, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v0, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getAddressByZipCode(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    if-nez v0, :cond_0

    const-string/jumbo v0, "zipCodeRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/startapps/crossx/view/activity/BillingAddressRegister$getAddressByZipCode$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$getAddressByZipCode$1;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;->getAddressByZipCode(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method private final goToHome()V
    .locals 1

    .line 201
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToMain(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->finish()V

    return-void
.end method

.method private final isValidForm()Z
    .locals 10

    .line 207
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_17

    .line 208
    sget v2, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 209
    sget v3, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 210
    sget v4, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 211
    sget v5, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v5}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 212
    sget v6, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v6}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 214
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v7

    :goto_1
    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 215
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v9, "O campo CEP \u00e9 obrigat\u00f3rio"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_2

    .line 218
    :cond_2
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v7

    .line 221
    :goto_2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v7

    :goto_4
    if-eqz v2, :cond_5

    .line 222
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo endere\u00e7o \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_5

    .line 225
    :cond_5
    sget v2, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 228
    :goto_5
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    move v2, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v2, v7

    :goto_7
    if-eqz v2, :cond_8

    .line 229
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo n\u00famero \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_8

    .line 232
    :cond_8
    sget v2, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 235
    :goto_8
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    move v2, v1

    goto :goto_a

    :cond_a
    :goto_9
    move v2, v7

    :goto_a
    if-eqz v2, :cond_b

    .line 236
    sget v0, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo bairro \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_b

    .line 239
    :cond_b
    sget v2, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 242
    :goto_b
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_c

    :cond_c
    move v2, v1

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v7

    :goto_d
    if-eqz v2, :cond_e

    .line 243
    sget v0, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo cidade \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_e

    .line 246
    :cond_e
    sget v2, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 249
    :goto_e
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_f

    goto :goto_f

    :cond_f
    move v7, v1

    :cond_10
    :goto_f
    if-eqz v7, :cond_11

    .line 250
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo estado \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 253
    :cond_11
    sget v1, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v1, v0

    :goto_10
    return v1

    .line 212
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final observeUpdateUser()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mViewViewModel:Lcom/startapps/crossx/viewmodel/ProfileViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->getUserLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeUpdateUser$lambda-5(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Atualizado com sucesso"

    .line 190
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->notification(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->endLoader()V

    .line 192
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->goToHome()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->notification(Ljava/lang/String;)V

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->endLoader()V

    return-void
.end method

.method private final populateAddress()V
    .locals 3

    .line 260
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getZipcode()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getAddressNumber()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    sget v0, Lcom/startapps/crossx/R$id;->text_input_complement:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getComplement()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    sget v0, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getDistrict()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getState()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    sget v0, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final populateAddress(Lcom/startapps/crossx/model/ZipcodeAddress;)V
    .locals 3

    .line 119
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getStreet()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget v0, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getState()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget v0, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getCity()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final registerAdapter()V
    .locals 2

    .line 58
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/startapps/crossx/viewmodel/ProfileViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026ileViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/startapps/crossx/viewmodel/ProfileViewModel;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mViewViewModel:Lcom/startapps/crossx/viewmodel/ProfileViewModel;

    return-void
.end method

.method private final registerClick()V
    .locals 2

    .line 126
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda2;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda3;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final registerClick$lambda-2(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->submitForm()V

    return-void
.end method

.method private static final registerClick$lambda-3(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->revalStates()V

    return-void
.end method

.method private final registerEvents()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mEditTextZipcode:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "mEditTextZipcode"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lcom/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mEditTextZipcode:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private static final registerEvents$lambda-1(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Landroid/view/View;Z)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mEditTextZipcode:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const-string p1, "mEditTextZipcode"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x9

    if-ge p1, p2, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->clearAdress()V

    :cond_1
    return-void
.end method

.method private final registerMask()V
    .locals 5

    .line 62
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mEditTextZipcode:Landroid/widget/EditText;

    .line 63
    new-instance v0, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mEditTextZipcode:Landroid/widget/EditText;

    const-string v2, "mEditTextZipcode"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    const-string v4, "#####-###"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mEditTextZipcode:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

    if-nez v1, :cond_2

    const-string v1, "mTextMaskZipcode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final registerObserve()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->observeUpdateUser()V

    return-void
.end method

.method private final revalStates()V
    .locals 3

    .line 136
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/startapps/crossx/model/enuns/BrStates;->getInitialsStates()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister$$ExternalSyntheticLambda4;-><init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private static final revalStates$lambda-4(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget p1, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final saveBillingAddress()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->hideKeyboard()V

    .line 169
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->initLoader()V

    .line 170
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mViewViewModel:Lcom/startapps/crossx/viewmodel/ProfileViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/viewmodel/ProfileViewModel;->updateUser(Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method

.method private final submitForm()V
    .locals 4

    .line 145
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->isValidForm()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 146
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setZipcode(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setAddress(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setAddressNumber(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_complement:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setComplement(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setDistrict(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setCity(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setState(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getPhones()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v3, v0}, Lcom/startapps/crossx/model/UserModel;->setPhones(Ljava/util/ArrayList;)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 160
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setBirthday(Ljava/lang/String;)V

    .line 163
    :cond_5
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->saveBillingAddress()V

    goto :goto_2

    .line 152
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method public endLoader()V
    .locals 2

    .line 174
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    sget v0, Lcom/startapps/crossx/R$id;->progress_save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d001f

    return v0
.end method

.method public initLoader()V
    .locals 2

    .line 179
    sget v0, Lcom/startapps/crossx/R$id;->progress_save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 45
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->setContentView(I)V

    .line 47
    new-instance p1, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    .line 49
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerAdapter()V

    .line 50
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerClick()V

    .line 51
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerMask()V

    .line 52
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerObserve()V

    .line 53
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->populateAddress()V

    .line 54
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerEvents()V

    return-void
.end method
