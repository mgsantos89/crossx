.class public Lcom/startapps/crossx/view/activity/BilletActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "BilletActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;


# instance fields
.field private billetPresenter:Lcom/startapps/crossx/classes/presenter/BilletPresenter;

.field containerView:Landroid/view/View;

.field private membershipId:J

.field textViewBilletCode:Landroid/widget/TextView;

.field textViewBilletValue:Landroid/widget/TextView;

.field textViewExpirationDate:Landroid/widget/TextView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public copyText()V
    .locals 3

    const-string v0, "clipboard"

    .line 84
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BilletActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 85
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "billet_copy"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->containerView:Landroid/view/View;

    const v1, 0x7f1200d7

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/SnackbarUtils;->show(Landroid/view/View;I)V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1200db

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/BilletActivity;->setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V

    .line 65
    new-instance v0, Lcom/startapps/crossx/classes/presenter/BilletPresenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BilletActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/classes/presenter/BilletPresenter;-><init>(Lcom/startapps/crossx/Interfaces/contracts/BilletContract$View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->billetPresenter:Lcom/startapps/crossx/classes/presenter/BilletPresenter;

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-wide v1, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->membershipId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-class v1, Lcom/startapps/crossx/view/activity/MembershipActivity;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/startapps/crossx/view/activity/HomeActivity;

    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BilletActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BilletActivity;->finish()V

    .line 107
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BilletActivity;->onBackPressed()V

    .line 58
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public populateBillet(Lcom/startapps/crossx/model/DataPayment;Lcom/startapps/crossx/model/Membership;)V
    .locals 2

    .line 73
    iget-wide v0, p2, Lcom/startapps/crossx/model/Membership;->id:J

    iput-wide v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->membershipId:J

    .line 74
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletCode:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/DataPayment;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewExpirationDate:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/startapps/crossx/model/DataPayment;->expirationDate:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletValue:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/startapps/crossx/model/Membership;->installmentsValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public sendEmailButton()V
    .locals 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BilletActivity;->textViewBilletCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/BilletActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d001e

    return v0
.end method
