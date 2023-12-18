.class public final Lcom/startapps/crossx/view/activity/RegisterActivity;
.super Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;
.source "RegisterActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/RegisterActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 I2\u00020\u0001:\u0001IB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0014J\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u0012\u0010 \u001a\u00020\u001a2\u0008\u0010!\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020&H\u0014J\u0008\u0010\'\u001a\u00020\u001aH\u0002J\u0008\u0010(\u001a\u00020\u001aH\u0002J\u0008\u0010)\u001a\u00020\u001aH\u0016J\u0008\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020\u001aH\u0002J\u0008\u0010-\u001a\u00020\u001aH\u0002J\u0008\u0010.\u001a\u00020\u001aH\u0016J\u0012\u0010/\u001a\u00020\u001a2\u0008\u00100\u001a\u0004\u0018\u000101H\u0014J\u0010\u00102\u001a\u00020+2\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u001a2\u0006\u00106\u001a\u000207H\u0002J\u0008\u00108\u001a\u00020\u001aH\u0002J\u0008\u00109\u001a\u00020\u001aH\u0002J\u0008\u0010:\u001a\u00020\u001aH\u0002J\u0008\u0010;\u001a\u00020\u001aH\u0002J\u0008\u0010<\u001a\u00020\u001aH\u0002J\u0008\u0010=\u001a\u00020\u001aH\u0002J\u001c\u0010>\u001a\u00020\u001a2\u0008\u0010?\u001a\u0004\u0018\u00010@2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0014J\u0008\u0010C\u001a\u00020\u001aH\u0002J\u0008\u0010D\u001a\u00020\u001aH\u0002J\u0010\u0010E\u001a\u00020\u001a2\u0006\u0010F\u001a\u00020$H\u0002J\u0008\u0010G\u001a\u00020\u001aH\u0014J\u0008\u0010H\u001a\u00020\u001aH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/RegisterActivity;",
        "Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;",
        "()V",
        "mBoxAdapter",
        "Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;",
        "mBoxModelList",
        "",
        "Lcom/startapps/crossx/model/BoxModel;",
        "mCalendar",
        "Ljava/util/Calendar;",
        "kotlin.jvm.PlatformType",
        "mEditTextZipcode",
        "Landroid/widget/EditText;",
        "mHandler",
        "Landroid/os/Handler;",
        "mRunner",
        "Ljava/lang/Runnable;",
        "mTextMaskZipcode",
        "Lcom/startapps/crossx/controller/utils/MaskText;",
        "mUserModel",
        "Lcom/startapps/crossx/model/UserModel;",
        "mViewViewModel",
        "Lcom/startapps/crossx/viewmodel/RegisterViewModel;",
        "zipCodeRepository",
        "Lcom/startapps/crossx/rest/repository/ZipCodeRepository;",
        "clearAdress",
        "",
        "clearBoxList",
        "clickBirthday",
        "clickGender",
        "defineFonts",
        "endLoader",
        "fillForm",
        "boxModel",
        "getAddressByZipCode",
        "zipcode",
        "",
        "getToLayoutInflate",
        "",
        "goToHome",
        "goToLogin",
        "initLoader",
        "isValidForm",
        "",
        "observeRegister",
        "observeSearchBox",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "populateAddress",
        "model",
        "Lcom/startapps/crossx/model/ZipcodeAddress;",
        "populateUser",
        "registerChange",
        "registerClick",
        "registerImages",
        "registerMask",
        "registerObserve",
        "resultImage",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "file",
        "Ljava/io/File;",
        "revalStates",
        "saveUser",
        "searchBox",
        "name",
        "setAddImage",
        "submitForm",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/startapps/crossx/view/activity/RegisterActivity$Companion;

.field public static final EXTRA_USER:Ljava/lang/String; = "extra-user"


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

.field private mBoxAdapter:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

.field private mBoxModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field private mEditTextZipcode:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mRunner:Ljava/lang/Runnable;

.field private mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

.field private mUserModel:Lcom/startapps/crossx/model/UserModel;

.field private mViewViewModel:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

.field private zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;


# direct methods
.method public static synthetic $r8$lambda$2JBo7rNNYflcXjcxK9lEQUBHDkI(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->observeRegister$lambda-17(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2kmZeGJYH07rUt8pw-Pe3mORSU8(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerClick$lambda-11(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5CJVH0ZLK7sPpVTJTgBWA_sBDsI(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerChange$lambda-8(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$60iSU2cIYqPboPgBcKXWaxUrTq0(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerClick$lambda-12(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABKDYcOtT4UZ1ETQ2VUZjz-OB6E(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerClick$lambda-13(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DY3sjmvMnMQXSbPRnfWIjbaM35c(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->observeSearchBox$lambda-6(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JZEKNUsGTGxgfR0AO8mkuSmutkg(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->populateUser$lambda-5(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5l0O0DKoG_ZmrSP3zSARx8aJSo(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->populateUser$lambda-4(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PccslNy0pkzZSFdCefQYwagB_i0(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clickGender$lambda-15(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q9qFSansb5hg66BtBh2ODZIAyPQ(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerClick$lambda-9(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_16wlUKdOsZL-oWVuaN-O6i6aC0(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerClick$lambda-10(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dawEFKmXRPSnE0zKrPDXER9wz_I(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clickBirthday$lambda-16(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$qO49Vwjr1tgcN-K6rrv70SxwG3U(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/RegisterActivity;->revalStates$lambda-14(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/view/activity/RegisterActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/view/activity/RegisterActivity;->Companion:Lcom/startapps/crossx/view/activity/RegisterActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxModelList:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/startapps/crossx/model/UserModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/UserModel;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method

.method public static final synthetic access$clearBoxList(Lcom/startapps/crossx/view/activity/RegisterActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clearBoxList()V

    return-void
.end method

.method public static final synthetic access$getAddressByZipCode(Lcom/startapps/crossx/view/activity/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getAddressByZipCode(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getMHandler$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMRunner$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMTextMaskZipcode$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Lcom/startapps/crossx/controller/utils/MaskText;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

    return-object p0
.end method

.method public static final synthetic access$populateAddress(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/model/ZipcodeAddress;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->populateAddress(Lcom/startapps/crossx/model/ZipcodeAddress;)V

    return-void
.end method

.method public static final synthetic access$searchBox(Lcom/startapps/crossx/view/activity/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->searchBox(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMRunner$p(Lcom/startapps/crossx/view/activity/RegisterActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mRunner:Ljava/lang/Runnable;

    return-void
.end method

.method private final clearAdress()V
    .locals 4

    .line 276
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

    .line 277
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v0, Lcom/startapps/crossx/R$id;->text_input_complement:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    sget v0, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget v0, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final clearBoxList()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxAdapter:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    if-nez v0, :cond_0

    const-string v0, "mBoxAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final clickBirthday()V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 334
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 335
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 336
    new-instance v0, Landroid/app/DatePickerDialog;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    new-instance v4, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda8;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 343
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private static final clickBirthday$lambda-16(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/widget/DatePicker;III)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 338
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 339
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 340
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "dd/MM/yyyy"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleDateFormat(DateUti\u2026E).format(mCalendar.time)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    sget p2, Lcom/startapps/crossx/R$id;->text_input_birthday:I

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final clickGender()V
    .locals 3

    .line 324
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-static {}, Lcom/startapps/crossx/model/enuns/Gender;->getGenderValues()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private static final clickGender$lambda-15(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget p1, Lcom/startapps/crossx/R$id;->text_input_gender:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

.method private final getAddressByZipCode(Ljava/lang/String;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    if-nez v0, :cond_0

    const-string/jumbo v0, "zipCodeRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$getAddressByZipCode$1;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;->getAddressByZipCode(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V

    return-void
.end method

.method private final goToHome()V
    .locals 1

    .line 361
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToMain(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->finish()V

    return-void
.end method

.method private final goToLogin()V
    .locals 1

    .line 151
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->finish()V

    return-void
.end method

.method private final isValidForm()Z
    .locals 17

    move-object/from16 v0, p0

    .line 406
    sget v1, Lcom/startapps/crossx/R$id;->text_input_name:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v1, :cond_37

    .line 407
    sget v3, Lcom/startapps/crossx/R$id;->text_input_last_name:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 408
    sget v4, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {v0, v4}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 409
    sget v5, Lcom/startapps/crossx/R$id;->text_input_confirm_password:I

    invoke-virtual {v0, v5}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 410
    sget v6, Lcom/startapps/crossx/R$id;->text_input_gender:I

    invoke-virtual {v0, v6}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 412
    sget v7, Lcom/startapps/crossx/R$id;->text_input_birthday:I

    invoke-virtual {v0, v7}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_32

    .line 413
    sget v8, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {v0, v8}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 414
    sget v9, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {v0, v9}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_30

    .line 415
    sget v10, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {v0, v10}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    if-eqz v10, :cond_2f

    .line 416
    sget v11, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {v0, v11}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v11}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_2e

    .line 417
    sget v12, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {v0, v12}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    if-eqz v12, :cond_2d

    .line 418
    sget v13, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {v0, v13}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_2c

    .line 419
    sget v14, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {v0, v14}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    if-eqz v14, :cond_2b

    .line 421
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 422
    sget v1, Lcom/startapps/crossx/R$id;->text_input_name:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v16, "O campo nome \u00e9 obrigat\u00f3rio"

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v1, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_2

    .line 425
    :cond_2
    sget v1, Lcom/startapps/crossx/R$id;->text_input_name:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 428
    :goto_2
    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v15, 0x1

    :goto_4
    if-eqz v15, :cond_5

    .line 429
    sget v1, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v14, "O campo e-mail \u00e9 obrigat\u00f3rio"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v1, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    .line 432
    :cond_5
    sget v15, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {v0, v15}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 433
    sget-object v15, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-nez v14, :cond_6

    .line 434
    sget v1, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v14, "O campo e-mail \u00e9 inv\u00e1lido"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v1, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 439
    :cond_6
    :goto_6
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_9

    .line 440
    sget v1, Lcom/startapps/crossx/R$id;->text_input_last_name:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo sobrenome \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_9

    .line 443
    :cond_9
    sget v3, Lcom/startapps/crossx/R$id;->text_input_last_name:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 446
    :goto_9
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_c

    .line 447
    sget v1, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo senha \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_c
    const/4 v1, 0x0

    goto :goto_d

    .line 450
    :cond_c
    sget v3, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v14, 0x6

    if-ge v3, v14, :cond_d

    .line 452
    sget v1, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo senha deve possuir deve possuir mais de 5 caracteres"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 457
    :cond_d
    :goto_d
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v3, 0x1

    :goto_f
    if-eqz v3, :cond_10

    .line 458
    sget v1, Lcom/startapps/crossx/R$id;->text_input_confirm_password:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo confirmar senha \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_10
    const/4 v1, 0x0

    goto :goto_11

    .line 461
    :cond_10
    sget v3, Lcom/startapps/crossx/R$id;->text_input_confirm_password:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 463
    sget v1, Lcom/startapps/crossx/R$id;->text_input_confirm_password:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo confirmar senha deve ser igual ao campo senha"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 468
    :cond_11
    :goto_11
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    goto :goto_13

    :cond_13
    :goto_12
    const/4 v3, 0x1

    :goto_13
    if-eqz v3, :cond_14

    .line 469
    sget v1, Lcom/startapps/crossx/R$id;->text_input_gender:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo sexo \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_14

    .line 472
    :cond_14
    sget v3, Lcom/startapps/crossx/R$id;->text_input_gender:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 482
    :goto_14
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_15

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    :cond_16
    :goto_15
    const/4 v3, 0x1

    :goto_16
    if-eqz v3, :cond_17

    .line 483
    sget v1, Lcom/startapps/crossx/R$id;->text_input_birthday:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo data de nascimento \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_17

    .line 486
    :cond_17
    sget v3, Lcom/startapps/crossx/R$id;->text_input_birthday:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 489
    :goto_17
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_19

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_18

    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    :cond_19
    :goto_18
    const/4 v3, 0x1

    :goto_19
    if-eqz v3, :cond_1a

    .line 490
    sget v1, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo CEP \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_1a

    .line 493
    :cond_1a
    sget v3, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 496
    :goto_1a
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1b

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1c

    :cond_1c
    :goto_1b
    const/4 v3, 0x1

    :goto_1c
    if-eqz v3, :cond_1d

    .line 497
    sget v1, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo endere\u00e7o \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_1d

    .line 500
    :cond_1d
    sget v3, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 503
    :goto_1d
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1f

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_1e

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1f
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    if-eqz v3, :cond_20

    .line 504
    sget v1, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo n\u00famero \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_20

    .line 507
    :cond_20
    sget v3, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 510
    :goto_20
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_21

    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    :cond_22
    :goto_21
    const/4 v3, 0x1

    :goto_22
    if-eqz v3, :cond_23

    .line 511
    sget v1, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo bairro \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_23

    .line 514
    :cond_23
    sget v3, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 517
    :goto_23
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_24

    :cond_24
    const/4 v3, 0x0

    goto :goto_25

    :cond_25
    :goto_24
    const/4 v3, 0x1

    :goto_25
    if-eqz v3, :cond_26

    .line 518
    sget v1, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "O campo cidade \u00e9 obrigat\u00f3rio"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_26

    .line 521
    :cond_26
    sget v3, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 524
    :goto_26
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_28

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_27

    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    :cond_28
    :goto_27
    const/4 v3, 0x1

    :goto_28
    if-eqz v3, :cond_29

    .line 525
    sget v1, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo estado \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_29

    .line 528
    :cond_29
    sget v3, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 531
    :goto_29
    sget v2, Lcom/startapps/crossx/R$id;->checkbox_term:I

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2a

    if-eqz v1, :cond_2a

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Termos de uso e pol\u00edticas de privacidade \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    goto :goto_2a

    :cond_2a
    move v2, v1

    :goto_2a
    return v2

    .line 419
    :cond_2b
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_2c
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_2d
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_2e
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_2f
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_30
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_31
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_32
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_33
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_34
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_35
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_36
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_37
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final observeRegister()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mViewViewModel:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->getRegisterUser()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda3;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeRegister$lambda-17(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->endLoader()V

    .line 351
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->goToHome()V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->endLoader()V

    .line 354
    sget-object v1, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->message()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final observeSearchBox()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mViewViewModel:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->getSearchBox()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda7;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeSearchBox$lambda-6(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->success()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clearBoxList()V

    .line 198
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->dataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/BoxModel;

    .line 199
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxModelList:Ljava/util/List;

    const-string v2, "boxList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxAdapter:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    if-nez p0, :cond_1

    const-string p0, "mBoxAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 203
    :cond_2
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->message()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final populateAddress(Lcom/startapps/crossx/model/ZipcodeAddress;)V
    .locals 3

    .line 286
    sget v0, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

    .line 287
    sget v0, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getState()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    sget v0, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

    .line 288
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final populateUser()V
    .locals 7

    .line 156
    sget v0, Lcom/startapps/crossx/R$id;->checkbox_term:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    sget v0, Lcom/startapps/crossx/R$id;->checkbox_term:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v2, "checkbox_term"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    new-array v3, v1, [Lkotlin/Pair;

    new-instance v4, Lkotlin/Pair;

    const v5, 0x7f1200a4

    .line 158
    invoke-virtual {p0, v5}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    new-instance v6, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda5;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/startapps/crossx/extensions/TextViewExtensionsKt;->makeLinks(Landroid/widget/TextView;[Lkotlin/Pair;)V

    .line 164
    sget v0, Lcom/startapps/crossx/R$id;->checkbox_term:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const v3, 0x7f1200a0

    .line 165
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v4, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda6;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/startapps/crossx/extensions/TextViewExtensionsKt;->makeLinks(Landroid/widget/TextView;[Lkotlin/Pair;)V

    .line 171
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra-user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/startapps/crossx/model/UserModel;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    .line 173
    sget v0, Lcom/startapps/crossx/R$id;->text_input_name:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget v0, Lcom/startapps/crossx/R$id;->text_input_last_name:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.startapps.crossx.model.UserModel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method private static final populateUser$lambda-4(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 161
    check-cast p0, Landroid/content/Context;

    const-string v0, "https://app-crossx.s3.sa-east-1.amazonaws.com/lgpd/termos_uso_app_v1.pdf"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private static final populateUser$lambda-5(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 168
    check-cast p0, Landroid/content/Context;

    const-string v0, "https://app-crossx.s3.sa-east-1.amazonaws.com/lgpd/politica_privacidade_app_v1.pdf"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private final registerChange()V
    .locals 4

    .line 214
    sget v0, Lcom/startapps/crossx/R$id;->text_input_box:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mEditTextZipcode:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "mEditTextZipcode"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$2;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$2;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mEditTextZipcode:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda4;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    .line 214
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.AutoCompleteTextView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final registerChange$lambda-8(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;Z)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 254
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mEditTextZipcode:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const-string p1, "mEditTextZipcode"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x9

    if-ge p1, p2, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clearAdress()V

    :cond_1
    return-void
.end method

.method private final registerClick()V
    .locals 3

    .line 293
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda10;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget v0, Lcom/startapps/crossx/R$id;->text_input_gender:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v0, :cond_3

    new-instance v2, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda11;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    sget v0, Lcom/startapps/crossx/R$id;->text_input_birthday:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda12;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget v0, Lcom/startapps/crossx/R$id;->edit_user_image:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    sget v0, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda2;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final registerClick$lambda-10(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clickGender()V

    return-void
.end method

.method private static final registerClick$lambda-11(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->clickBirthday()V

    return-void
.end method

.method private static final registerClick$lambda-12(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->setAddImage()V

    return-void
.end method

.method private static final registerClick$lambda-13(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->revalStates()V

    return-void
.end method

.method private static final registerClick$lambda-9(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->submitForm()V

    return-void
.end method

.method private final registerImages()V
    .locals 4

    .line 186
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/startapps/crossx/R$id;->img_person_edit:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/view/RoundedImageView;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080141

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.startapps.crossx.view.RoundedImageView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final registerMask()V
    .locals 5

    .line 83
    sget v0, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mEditTextZipcode:Landroid/widget/EditText;

    .line 84
    new-instance v0, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mEditTextZipcode:Landroid/widget/EditText;

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

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

    .line 85
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mEditTextZipcode:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mTextMaskZipcode:Lcom/startapps/crossx/controller/utils/MaskText;

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

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final registerObserve()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->observeSearchBox()V

    .line 191
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->observeRegister()V

    return-void
.end method

.method private final revalStates()V
    .locals 3

    .line 315
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-static {}, Lcom/startapps/crossx/model/enuns/BrStates;->getInitialsStates()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/RegisterActivity$$ExternalSyntheticLambda9;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private static final revalStates$lambda-14(Lcom/startapps/crossx/view/activity/RegisterActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget p1, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

.method private final saveUser()V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->hideKeyboard()V

    .line 400
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->initLoader()V

    .line 401
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mViewViewModel:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->createUser(Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method

.method private final searchBox(Ljava/lang/String;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mViewViewModel:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/startapps/crossx/viewmodel/RegisterViewModel;->searchBoxByName(Ljava/lang/String;)V

    return-void
.end method

.method private final submitForm()V
    .locals 5

    .line 370
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->isValidForm()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 371
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_name:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setName(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_last_name:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setLastName(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setPassword(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_gender:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/model/enuns/Gender;->findByFullGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setGender(Lcom/startapps/crossx/model/enuns/Gender;)V

    .line 376
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_birthday:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setBirthday(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_zipcode:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setZipcode(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_address:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setAddress(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_address_number:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setAddressNumber(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_complement:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setComplement(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_district:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setDistrict(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_city:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setCity(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_state:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setState(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setEmail(Ljava/lang/String;)V

    .line 385
    sget v0, Lcom/startapps/crossx/R$id;->text_input_box:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/startapps/crossx/model/UserModel;->setBox(Lcom/startapps/crossx/model/BoxModel;)V

    .line 388
    :cond_2
    sget v0, Lcom/startapps/crossx/R$id;->text_input_nickname:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    if-nez v1, :cond_6

    .line 389
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    sget v1, Lcom/startapps/crossx/R$id;->text_input_nickname:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setNickname(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setFacebookID(Ljava/lang/String;)V

    .line 394
    :cond_7
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->saveUser()V

    goto :goto_3

    .line 388
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.AutoCompleteTextView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_3
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

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

    .line 125
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    sget v0, Lcom/startapps/crossx/R$id;->progress_save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public fillForm(Lcom/startapps/crossx/model/BoxModel;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setBox(Lcom/startapps/crossx/model/BoxModel;)V

    .line 95
    sget v0, Lcom/startapps/crossx/R$id;->text_input_box:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.AutoCompleteTextView"

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 98
    sget v0, Lcom/startapps/crossx/R$id;->text_input_box:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/model/UserModel;->setBox(Lcom/startapps/crossx/model/BoxModel;)V

    goto :goto_2

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_3
    :goto_2
    sget p1, Lcom/startapps/crossx/R$id;->text_input_box:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0042

    return v0
.end method

.method public initLoader()V
    .locals 2

    .line 130
    sget v0, Lcom/startapps/crossx/R$id;->progress_save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->goToLogin()V

    .line 147
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0042

    .line 61
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v1, -0x14

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 68
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026terViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mViewViewModel:Lcom/startapps/crossx/viewmodel/RegisterViewModel;

    .line 69
    new-instance p1, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    move-object v0, p0

    check-cast v0, Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxModelList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;-><init>(Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxAdapter:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    .line 70
    sget p1, Lcom/startapps/crossx/R$id;->text_input_box:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mBoxAdapter:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    if-nez v0, :cond_1

    const-string v0, "mBoxAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance p1, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/repository/ZipCodeRepository;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->zipCodeRepository:Lcom/startapps/crossx/rest/repository/ZipCodeRepository;

    .line 74
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerMask()V

    .line 75
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerClick()V

    .line 76
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerChange()V

    .line 77
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerObserve()V

    .line 78
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->registerImages()V

    .line 79
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->populateUser()V

    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.AutoCompleteTextView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->goToLogin()V

    .line 90
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected resultImage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 4

    .line 112
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p1, :cond_0

    .line 113
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    move-object v3, v0

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    if-eqz p2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0, p2}, Lcom/startapps/crossx/model/UserModel;->setAvatar(Ljava/io/File;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 119
    sget p2, Lcom/startapps/crossx/R$id;->img_person_edit:I

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/RegisterActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/view/RoundedImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->encodeTo(Landroid/graphics/Bitmap;)[B

    goto :goto_0

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.startapps.crossx.view.RoundedImageView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method protected setAddImage()V
    .locals 7

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->setEnableCropImageInPictureAndGallery(Z)V

    .line 136
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.permission-group.CAMERA"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v6, "android.permission.CAMERA"

    if-eqz v3, :cond_0

    invoke-static {v1, v5}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-static {v1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->imageDialog()V

    return-void

    .line 137
    :cond_2
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    filled-new-array {v2, v5, v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
