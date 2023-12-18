.class public Lcom/startapps/crossx/view/activity/FinancialActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "FinancialActivity.java"


# static fields
.field public static final EXTRA_USER:Ljava/lang/String; = "extra-user"


# instance fields
.field private adapter:Lcom/startapps/crossx/view/adapter/FinancialAdapter;

.field private financialModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mList:Landroid/widget/ListView;

.field protected progressBar:Landroid/widget/ProgressBar;

.field private requester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/startapps/crossx/view/activity/FinancialActivity;)Lcom/startapps/crossx/view/adapter/FinancialAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->adapter:Lcom/startapps/crossx/view/adapter/FinancialAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfinancialModelList(Lcom/startapps/crossx/view/activity/FinancialActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->financialModelList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
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

    .line 119
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1201ac

    .line 121
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->setTitleActionBar(Ljava/lang/String;)V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getFinancial()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->mList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->requester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/FinancialActivity$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/startapps/crossx/view/activity/FinancialActivity$1;-><init>(Lcom/startapps/crossx/view/activity/FinancialActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/UserRequester;->getPayments(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d007a

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected notifyAlert()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

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

    const v0, 0x7f1201a5

    .line 131
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1201a6

    .line 135
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201ac

    .line 139
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 141
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120185

    .line 142
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Financeiro"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->defineToolbar()V

    .line 76
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra-user"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->finish()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 82
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/UserRequester;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/startapps/crossx/controller/network/requests/UserRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->requester:Lcom/startapps/crossx/controller/network/requests/UserRequester;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->financialModelList:Ljava/util/List;

    .line 85
    new-instance p1, Lcom/startapps/crossx/view/adapter/FinancialAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->financialModelList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->adapter:Lcom/startapps/crossx/view/adapter/FinancialAdapter;

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/FinancialActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 100
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->goBack()V

    .line 110
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onStart()V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/FinancialActivity;->getFinancial()V

    return-void
.end method
