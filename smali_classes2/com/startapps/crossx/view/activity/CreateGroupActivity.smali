.class public Lcom/startapps/crossx/view/activity/CreateGroupActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "CreateGroupActivity.java"


# instance fields
.field adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

.field private athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

.field groupID:Ljava/lang/String;

.field groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

.field isEdit:Z

.field public listUsers:Landroid/widget/ListView;

.field public nameGroup:Landroid/widget/EditText;

.field userModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->isEdit:Z

    return-void
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 253
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected checkForm()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->nameGroup:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f120254

    .line 237
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->notification(Ljava/lang/String;)V

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->getListUsersSelected()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1202b7

    .line 242
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->notification(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected createGroup()V
    .locals 5

    .line 200
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->hideKeyboard()V

    .line 202
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->checkForm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->getListUsersSelected()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 207
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 208
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->nameGroup:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/CreateGroupActivity$3;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity$3;-><init>(Lcom/startapps/crossx/view/activity/CreateGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->createGroup(Ljava/lang/String;[Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    :cond_1
    return-void
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1200ea

    .line 113
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d002a

    return v0
.end method

.method protected getUsers()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    new-instance v1, Lcom/startapps/crossx/view/activity/CreateGroupActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity$2;-><init>(Lcom/startapps/crossx/view/activity/CreateGroupActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/startapps/crossx/rest/clients/AthleteClient;->getUsersSameBox(ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method protected getUsersOfGroup()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->groupID:Ljava/lang/String;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/CreateGroupActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity$1;-><init>(Lcom/startapps/crossx/view/activity/CreateGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->getUsersOfGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method protected goBack()V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Editar / Novo Grupo"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "group_id"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->isEdit:Z

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->groupID:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->nameGroup:Landroid/widget/EditText;

    const-string v1, "name_group"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->nameGroup:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 92
    :cond_0
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    .line 93
    new-instance p1, Lcom/startapps/crossx/rest/clients/AthleteClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/AthleteClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->userModels:Ljava/util/List;

    .line 97
    new-instance p1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->userModels:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    .line 98
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->listUsers:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->defineToolbar()V

    .line 102
    iget-boolean p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->isEdit:Z

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getUsersOfGroup()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getUsers()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->createGroup()V

    .line 134
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method
