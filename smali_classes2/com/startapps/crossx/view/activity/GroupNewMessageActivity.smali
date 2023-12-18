.class public Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "GroupNewMessageActivity.java"


# instance fields
.field editText:Landroid/widget/EditText;

.field private groupID:Ljava/lang/String;

.field private groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private checkIsMessage()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120119

    .line 136
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->notification(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private sendMessage()V
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->hideKeyboard()V

    .line 111
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->checkIsMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->groupID:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity$1;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity$1;-><init>(Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->postMessage(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f120105

    .line 78
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d003a

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Atletas - Nova mensagem no Grupo"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "group_id"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->groupID:Ljava/lang/String;

    .line 63
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    .line 65
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->defineToolbar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 71
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->sendMessage()V

    .line 100
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method
