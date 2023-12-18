.class public Lcom/startapps/crossx/view/activity/ConversorActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "ConversorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;
    }
.end annotation


# instance fields
.field protected heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

.field protected kg:Landroid/widget/EditText;

.field protected lbs:Landroid/widget/EditText;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 88
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1201c9

    .line 91
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0029

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->hideKeyboard()V

    .line 83
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->defineToolbar()V

    .line 58
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    new-instance v0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;-><init>(Lcom/startapps/crossx/view/activity/ConversorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    new-instance v0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;-><init>(Lcom/startapps/crossx/view/activity/ConversorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    new-instance p1, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {p1}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    .line 63
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    new-instance v0, Lcom/startapps/crossx/view/activity/ConversorActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/ConversorActivity$1;-><init>(Lcom/startapps/crossx/view/activity/ConversorActivity;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ConversorActivity;->goBack()V

    .line 78
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
