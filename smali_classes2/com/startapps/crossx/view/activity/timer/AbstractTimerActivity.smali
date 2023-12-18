.class public abstract Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbstractTimerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;

    const-string v0, "StringPickerDialog"

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getStringArray()[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3c

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 124
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract defineFonts()V
.end method

.method protected abstract getToLayoutInflate()I
.end method

.method public hideKeyboard()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    .line 103
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public notification(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->isFinishing()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getToLayoutInflate()I

    move-result v0

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->setContentView(Landroid/view/View;)V

    .line 36
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->defineFonts()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->finish()V

    .line 51
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStop()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setFont(Landroid/view/View;I)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public setFont(Landroid/widget/EditText;I)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setFont(Landroid/widget/TextView;I)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected setTitleActionBar(Ljava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 88
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected showPicker(Ljava/lang/String;I)V
    .locals 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x7f120277

    .line 111
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const v1, 0x7f120278

    .line 112
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p1, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;

    invoke-direct {p1}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;-><init>()V

    .line 114
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 115
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->setCurrentItem(I)V

    return-void
.end method
