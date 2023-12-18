.class public Lcom/startapps/crossx/view/activity/EditGroupActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "EditGroupActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnEditGroup;


# instance fields
.field adapter:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

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

    .line 41
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->isEdit:Z

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

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 280
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected checkForm()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->nameGroup:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f120254

    .line 264
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->notification(Ljava/lang/String;)V

    return v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->getListUsersSelected()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1202b7

    .line 269
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->notification(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected createGroup()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->hideKeyboard()V

    .line 229
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->checkForm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->getListUsersSelected()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 234
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->nameGroup:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/EditGroupActivity$4;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity$4;-><init>(Lcom/startapps/crossx/view/activity/EditGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

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

    .line 123
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1200ea

    .line 126
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected deleteUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/EditGroupActivity$2;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity$2;-><init>(Lcom/startapps/crossx/view/activity/EditGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->deleteUserGroup(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    .line 188
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->userModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->notifyDataSetChanged()V

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

    .line 194
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    new-instance v1, Lcom/startapps/crossx/view/activity/EditGroupActivity$3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity$3;-><init>(Lcom/startapps/crossx/view/activity/EditGroupActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/startapps/crossx/rest/clients/AthleteClient;->getUsersSameBox(ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method protected getUsersOfGroup()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupID:Ljava/lang/String;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/EditGroupActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity$1;-><init>(Lcom/startapps/crossx/view/activity/EditGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->getUsersOfGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method protected goBack()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Editar / Novo Grupo"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "group_id"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->isEdit:Z

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupID:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->nameGroup:Landroid/widget/EditText;

    const-string v1, "name_group"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->nameGroup:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 94
    :cond_0
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    .line 95
    new-instance p1, Lcom/startapps/crossx/rest/clients/AthleteClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/AthleteClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->userModels:Ljava/util/List;

    .line 98
    new-instance p1, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->userModels:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    .line 99
    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->setOnEditGroupListener(Lcom/startapps/crossx/Interfaces/OnEditGroup;)V

    .line 100
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->listUsers:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->defineToolbar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDeleteUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 294
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120290

    .line 295
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f12028d

    .line 296
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 297
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 298
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120185

    .line 299
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120181

    .line 300
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/activity/EditGroupActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/activity/EditGroupActivity$5;-><init>(Lcom/startapps/crossx/view/activity/EditGroupActivity;Lcom/startapps/crossx/model/UserModel;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 119
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a004a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->groupID:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToAdduserGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onStart()V

    .line 109
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity;->isEdit:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getUsersOfGroup()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->getUsers()V

    :goto_0
    return-void
.end method
