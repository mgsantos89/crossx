.class public Lcom/startapps/crossx/view/activity/BoxActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "BoxActivity.java"


# instance fields
.field boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

.field boxModel:Lcom/startapps/crossx/model/BoxModel;

.field commentText:Landroid/widget/EditText;

.field descriptionBox:Landroid/widget/TextView;

.field formFeedback:Landroid/widget/RelativeLayout;

.field imgBox:Landroid/widget/ImageView;

.field nameBox:Landroid/widget/TextView;

.field privateButton:Landroid/widget/Button;

.field userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private sendFeedback()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->commentText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u00c9 obrigat\u00f3rio preencher o coment\u00e1rio"

    .line 131
    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->commentText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    new-instance v3, Lcom/startapps/crossx/view/activity/BoxActivity$2;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/activity/BoxActivity$2;-><init>(Lcom/startapps/crossx/view/activity/BoxActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->sendFeedback(Ljava/lang/String;ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12001c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0020

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->finish()V

    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v1, "Detalhes do Box"

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->defineToolbar()V

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 97
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->boxModel:Lcom/startapps/crossx/model/BoxModel;

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->boxModel:Lcom/startapps/crossx/model/BoxModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->imgBox:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->nameBox:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->boxModel:Lcom/startapps/crossx/model/BoxModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->formFeedback:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->descriptionBox:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance p1, Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    .line 116
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 117
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    new-instance v0, Lcom/startapps/crossx/view/activity/BoxActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/BoxActivity$1;-><init>(Lcom/startapps/crossx/view/activity/BoxActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    const v1, 0x7f1201af

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_0

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

    .line 172
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 165
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->sendFeedback()V

    .line 187
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BoxActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method
