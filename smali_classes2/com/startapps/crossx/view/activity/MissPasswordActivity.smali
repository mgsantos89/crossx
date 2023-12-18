.class public final Lcom/startapps/crossx/view/activity/MissPasswordActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "MissPasswordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/MissPasswordActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0014J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u0014\u0010\u0010\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0012\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u000cH\u0014J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u000cH\u0014J\u0008\u0010\u001f\u001a\u00020\u000cH\u0002J\u0008\u0010 \u001a\u00020\u000cH\u0002J\u0008\u0010!\u001a\u00020\u000cH\u0002J\u0008\u0010\"\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006$"
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/MissPasswordActivity;",
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "()V",
        "mViewModel",
        "Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;",
        "userRequester",
        "Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "getUserRequester",
        "()Lcom/startapps/crossx/controller/network/requests/UserRequester;",
        "setUserRequester",
        "(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V",
        "defineFonts",
        "",
        "endLoader",
        "getToLayoutInflate",
        "",
        "goToLogin",
        "message",
        "",
        "initLoader",
        "isValidForm",
        "",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onResume",
        "registerClick",
        "registerObserve",
        "resetPassword",
        "setSendClick",
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
.field public static final Companion:Lcom/startapps/crossx/view/activity/MissPasswordActivity$Companion;

.field public static final MESSAGE_MISS_PASSWORD:Ljava/lang/String; = "message-miss-password"


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

.field private mViewModel:Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;

.field private userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;


# direct methods
.method public static synthetic $r8$lambda$5JAHb6896LJdtbZzJ4UncggWz3M(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->registerClick$lambda-1(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OnCmtYrQJ20hKmua1NsvDqn_Y48(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->registerObserve$lambda-3(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/view/activity/MissPasswordActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->Companion:Lcom/startapps/crossx/view/activity/MissPasswordActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private final goToLogin(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v1, "message-miss-password"

    invoke-virtual {v0, v1, p1}, Lcom/startapps/crossx/controller/utils/Preference;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->finish()V

    return-void
.end method

.method static synthetic goToLogin$default(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->goToLogin(Ljava/lang/String;)V

    return-void
.end method

.method private final isValidForm()Z
    .locals 3

    .line 112
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

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
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 115
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "O campo e-mail \u00e9 obrigat\u00f3rio"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 118
    :cond_2
    sget v0, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v1, v2

    :goto_2
    return v1

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final registerClick()V
    .locals 2

    .line 78
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/MissPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final registerClick$lambda-1(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->setSendClick()V

    return-void
.end method

.method private final registerObserve()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->getForgotPassword()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity$$ExternalSyntheticLambda1;-><init>(Lcom/startapps/crossx/view/activity/MissPasswordActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final registerObserve$lambda-3(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->endLoader()V

    const-string p1, "Foi enviado no seu e-mail um link para altera\u00e7\u00e3o da senha"

    .line 96
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->goToLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->endLoader()V

    .line 99
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->message()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;->showError$default(Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final resetPassword()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->initLoader()V

    .line 126
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;

    if-nez v0, :cond_0

    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget v1, Lcom/startapps/crossx/R$id;->text_input_email:I

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;->forgotPassword(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setSendClick()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->isValidForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->resetPassword()V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->findViewById(I)Landroid/view/View;

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

    .line 73
    sget v0, Lcom/startapps/crossx/R$id;->progress_save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0039

    return v0
.end method

.method public final getUserRequester()Lcom/startapps/crossx/controller/network/requests/UserRequester;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-object v0
.end method

.method public initLoader()V
    .locals 2

    .line 67
    sget v0, Lcom/startapps/crossx/R$id;->progress_save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    sget v0, Lcom/startapps/crossx/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->hideKeyboard()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-static {p0, v0, v1, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->goToLogin$default(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 44
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    .line 28
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->setContentView(I)V

    .line 29
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    move-object v0, p0

    check-cast v0, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p1, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    .line 30
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026ordViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->mViewModel:Lcom/startapps/crossx/viewmodel/MissPasswordViewModel;

    .line 31
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->registerClick()V

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->registerObserve()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 63
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-static {p0, v0, v1, v0}, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->goToLogin$default(Lcom/startapps/crossx/view/activity/MissPasswordActivity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onResume()V

    .line 58
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Esqueci minha senha"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserRequester(Lcom/startapps/crossx/controller/network/requests/UserRequester;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MissPasswordActivity;->userRequester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    return-void
.end method
