.class public Lcom/startapps/crossx/view/activity/AddUserGroupActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "AddUserGroupActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface<",
        "Lcom/startapps/crossx/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

.field private athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

.field private groupID:Ljava/lang/String;

.field private groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

.field public listUsers:Landroid/widget/ListView;

.field public progressBar:Landroid/widget/ProgressBar;

.field private queryName:Ljava/lang/String;

.field private userModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/startapps/crossx/view/activity/AddUserGroupActivity;)Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserModels(Lcom/startapps/crossx/view/activity/AddUserGroupActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->userModels:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->queryName:Ljava/lang/String;

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

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1200d6

    .line 100
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public errorUpdateItems()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d001d

    return v0
.end method

.method protected getUsersOfGroup()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->groupID:Ljava/lang/String;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$1;-><init>(Lcom/startapps/crossx/view/activity/AddUserGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->getUsersOfGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method protected goBack()V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "group_id"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->groupID:Ljava/lang/String;

    .line 83
    :cond_0
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    .line 84
    new-instance p1, Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;-><init>(Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->userModels:Ljava/util/List;

    .line 88
    new-instance p1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->userModels:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->listUsers:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->defineToolbar()V

    .line 93
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->queryName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;->getAthetesPage(Ljava/lang/String;I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->saveGroup()V

    .line 121
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method

.method public saveGroup()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->getListUsersSelected()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 146
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 147
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->listUsers:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->groupID:Ljava/lang/String;

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;-><init>(Lcom/startapps/crossx/view/activity/AddUserGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->adduserGroup(Ljava/lang/String;[Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f1202b7

    .line 184
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->notification(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;IZ)V"
        }
    .end annotation

    .line 209
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->userModels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->adapter:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->notifyDataSetChanged()V

    return-void
.end method
