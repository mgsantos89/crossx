.class public abstract Lcom/startapps/crossx/view/activity/AbstractActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbstractActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract defineFonts()V
.end method

.method public abstract endLoader()V
.end method

.method protected abstract getToLayoutInflate()I
.end method

.method public hideKeyboard()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    .line 99
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public abstract initLoader()V
.end method

.method public notification(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12011b

    .line 55
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const v0, 0x7f060034

    .line 58
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const v0, 0x7f120188

    .line 59
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getToLayoutInflate()I

    move-result v0

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 42
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->defineFonts()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setFont(Landroid/view/View;I)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public setFont(Landroid/widget/EditText;I)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setFont(Landroid/widget/TextView;I)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected setTitleActionBar(Ljava/lang/String;)V
    .locals 3

    .line 83
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method
