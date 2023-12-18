.class public final Lcom/startapps/crossx/view/activity/LoginActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "LoginActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002J\u0008\u0010\u001b\u001a\u00020\u0018H\u0014J\u0008\u0010\u001c\u001a\u00020\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u000cH\u0014J\u0008\u0010\u001e\u001a\u00020\u0018H\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u000eH\u0002J\u0008\u0010!\u001a\u00020\u0018H\u0016J\u0010\u0010\"\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u000eH\u0002J\u0008\u0010#\u001a\u00020\u0018H\u0002J\"\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000c2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0012\u0010)\u001a\u00020\u00182\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0014J\u0008\u0010,\u001a\u00020\u0018H\u0014J\u0008\u0010-\u001a\u00020\u0018H\u0014J\u0008\u0010.\u001a\u00020\u0018H\u0002J\u0008\u0010/\u001a\u00020\u0018H\u0002J\u0008\u00100\u001a\u000201H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/LoginActivity;",
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "()V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "setAccessToken",
        "(Ljava/lang/String;)V",
        "callbackManager",
        "Lcom/facebook/CallbackManager;",
        "mTypeLogin",
        "",
        "mUserModel",
        "Lcom/startapps/crossx/model/UserModel;",
        "mViewModel",
        "Lcom/startapps/crossx/viewmodel/LoginViewModel;",
        "userRequester",
        "Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "getUserRequester",
        "()Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "setUserRequester",
        "(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V",
        "clickLogin",
        "",
        "clickRegisterUser",
        "clickResetPassword",
        "defineFonts",
        "endLoader",
        "getToLayoutInflate",
        "goToHome",
        "goToRegistration",
        "userModel",
        "initLoader",
        "loginOrRegisterWithFacebook",
        "loginWithEmail",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "registerClickButton",
        "registerObserve",
        "validForm",
        "",
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

.field private accessToken:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private mTypeLogin:I

.field private mUserModel:Lcom/startapps/crossx/model/UserModel;

.field private mViewModel:Lcom/startapps/crossx/viewmodel/LoginViewModel;

.field private userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;


# direct methods
.method public static synthetic $r8$lambda$HSaI5w6ihPOUCr4dL1uv2xQpHM8(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->registerClickButton$lambda-3(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSFC_ojRh1A1zgBFWB8dq07lXZM(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->registerClickButton$lambda-1(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rHZtYYE-Aqvu2sCXviN0cPVe3aY(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->registerClickButton$lambda-2(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rheSGnMurND4L7cVfFExzvzOoXY(Lcom/startapps/crossx/view/activity/LoginActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->registerObserve$lambda-4(Lcom/startapps/crossx/view/activity/LoginActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mTypeLogin:I

    return-void
.end method

.method public static final synthetic access$loginOrRegisterWithFacebook(Lcom/startapps/crossx/view/activity/LoginActivity;Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->loginOrRegisterWithFacebook(Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method

.method private final clickLogin()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->validForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->loginWithEmail()V

    :cond_0
    return-void
.end method

.method private final clickRegisterUser()V
    .locals 1

    .line 170
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToRegister(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final clickResetPassword()V
    .locals 1

    .line 166
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToMissPassword(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final goToHome()V
    .locals 1

    .line 227
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToMain(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->finish()V

    return-void
.end method

.method private final goToRegistration(Lcom/startapps/crossx/model/UserModel;)V
    .locals 1

    .line 240
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToRegister(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->finish()V

    return-void
.end method

.method private final loginOrRegisterWithFacebook(Lcom/startapps/crossx/model/UserModel;)V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->hideKeyboard()V

    .line 233
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->initLoader()V

    const/4 v0, 0x2

    .line 234
    iput v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mTypeLogin:I

    .line 235
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    .line 236
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/LoginViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "mViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v2, v2, p1}, Lcom/startapps/crossx/viewmodel/LoginViewModel;->doLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loginWithEmail()V
    .locals 5

    .line 199
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->hideKeyboard()V

    .line 200
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->initLoader()V

    const/4 v0, 0x1

    .line 201
    iput v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mTypeLogin:I

    .line 202
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/LoginViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "mViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 204
    :cond_0
    sget v3, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    sget v4, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/startapps/crossx/viewmodel/LoginViewModel;->doLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final registerClickButton()V
    .locals 2

    .line 145
    sget v0, Lcom/startapps/crossx/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget v0, Lcom/startapps/crossx/R$id;->miss_password:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/startapps/crossx/R$id;->register:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final registerClickButton$lambda-1(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->clickLogin()V

    return-void
.end method

.method private static final registerClickButton$lambda-2(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->clickResetPassword()V

    return-void
.end method

.method private static final registerClickButton$lambda-3(Lcom/startapps/crossx/view/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->clickRegisterUser()V

    return-void
.end method

.method private final registerObserve()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/LoginViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/LoginViewModel;->getLogin()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final registerObserve$lambda-4(Lcom/startapps/crossx/view/activity/LoginActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->goToHome()V

    .line 214
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->endLoader()V

    goto :goto_1

    .line 216
    :cond_0
    iget v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mTypeLogin:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mUserModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->goToRegistration(Lcom/startapps/crossx/model/UserModel;)V

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->message()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->endLoader()V

    :goto_1
    return-void
.end method

.method private final validForm()Z
    .locals 5

    .line 175
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 176
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "O campo e-mail \u00e9 obrigat\u00f3rio"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    move v0, v1

    goto :goto_3

    .line 179
    :cond_2
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 180
    sget v4, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "O campo e-mail \u00e9 inv\u00e1lido"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    :cond_3
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v2

    .line 189
    :goto_3
    sget v4, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    if-eqz v2, :cond_6

    .line 190
    sget v0, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo senha \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_4

    .line 193
    :cond_6
    sget v2, Lcom/startapps/crossx/R$id;->text_input_password:I

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->findViewById(I)Landroid/view/View;

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

    .line 138
    sget v0, Lcom/startapps/crossx/R$id;->loginProgressBar:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    sget v0, Lcom/startapps/crossx/R$id;->layoutScreenScrollView:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 140
    sget v0, Lcom/startapps/crossx/R$id;->facebook_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton;->setVisibility(I)V

    .line 141
    sget v0, Lcom/startapps/crossx/R$id;->register:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0036

    return v0
.end method

.method public final getUserRequester()Lcom/startapps/crossx/controller/network/requests/UserRequester;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-object v0
.end method

.method public initLoader()V
    .locals 2

    .line 131
    sget v0, Lcom/startapps/crossx/R$id;->loginProgressBar:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    sget v0, Lcom/startapps/crossx/R$id;->layoutScreenScrollView:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 133
    sget v0, Lcom/startapps/crossx/R$id;->facebook_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton;->setVisibility(I)V

    .line 134
    sget v0, Lcom/startapps/crossx/R$id;->register:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    if-nez v0, :cond_0

    const-string v0, "callbackManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0036

    .line 39
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->setContentView(I)V

    .line 42
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 43
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/startapps/crossx/viewmodel/LoginViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026ginViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/startapps/crossx/viewmodel/LoginViewModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/LoginViewModel;

    .line 44
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    move-object v0, p0

    check-cast v0, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p1, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    .line 45
    sget-object p1, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 46
    sget p1, Lcom/startapps/crossx/R$id;->facebook_button:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/widget/LoginButton;

    const-string v0, "email"

    const-string/jumbo v1, "user_friends"

    const-string v2, "public_profile"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/login/widget/LoginButton;->setPermissions(Ljava/util/List;)V

    .line 47
    sget p1, Lcom/startapps/crossx/R$id;->facebook_button:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/LoginActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/widget/LoginButton;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    if-nez v0, :cond_0

    const-string v0, "callbackManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/LoginActivity$onCreate$1;-><init>(Lcom/startapps/crossx/view/activity/LoginActivity;)V

    check-cast v1, Lcom/facebook/FacebookCallback;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/widget/LoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 93
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->registerClickButton()V

    .line 94
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/LoginActivity;->registerObserve()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 119
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 120
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 108
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onResume()V

    .line 109
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "message-miss-password"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    move-object v0, v4

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
    if-nez v0, :cond_2

    .line 111
    sget-object v2, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    const-string v0, "it"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showSuccess$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 113
    :cond_2
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->clearPreference()V

    .line 115
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Tela inicial"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    return-void
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setUserRequester(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/LoginActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-void
.end method
