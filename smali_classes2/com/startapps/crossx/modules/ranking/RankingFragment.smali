.class public Lcom/startapps/crossx/modules/ranking/RankingFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "RankingFragment.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnClickRankingListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "RankingFragment"


# instance fields
.field private filter:I

.field private listRanking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingWodModel;",
            ">;"
        }
    .end annotation
.end field

.field public listView:Landroid/widget/ListView;

.field public progressBar:Landroid/widget/ProgressBar;

.field private rankingRequester:Lcom/startapps/crossx/controller/network/requests/RankingRequester;

.field private viewMain:Landroid/view/View;

.field private workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistRanking(Lcom/startapps/crossx/modules/ranking/RankingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkoutDayModel(Lcom/startapps/crossx/modules/ranking/RankingFragment;)Lcom/startapps/crossx/model/WorkoutModel;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfilter(Lcom/startapps/crossx/modules/ranking/RankingFragment;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->filter:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->filter:I

    return-void
.end method

.method public static newInstance(Lcom/startapps/crossx/model/WorkoutModel;)Lcom/startapps/crossx/modules/ranking/RankingFragment;
    .locals 1

    .line 68
    new-instance v0, Lcom/startapps/crossx/modules/ranking/RankingFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;-><init>()V

    .line 69
    iput-object p0, v0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    return-object v0
.end method


# virtual methods
.method protected createDialogFilterGender()V
    .locals 2

    .line 163
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200b0

    .line 164
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->getGenderValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/modules/ranking/RankingFragment$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment$1;-><init>(Lcom/startapps/crossx/modules/ranking/RankingFragment;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method protected createDialogWods()V
    .locals 2

    .line 178
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12025e

    .line 179
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->wodListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/modules/ranking/RankingFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment$2;-><init>(Lcom/startapps/crossx/modules/ranking/RankingFragment;)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 188
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 190
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120187

    .line 192
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "title"

    .line 407
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "caption"

    .line 408
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected displayRankingAtIndex(I)V
    .locals 5

    .line 212
    new-instance v0, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;-><init>(Landroid/content/Context;)V

    .line 214
    iget-object v1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/RankingWodModel;

    .line 216
    invoke-virtual {p1}, Lcom/startapps/crossx/model/RankingWodModel;->getRankingCategoryList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/startapps/crossx/model/RankingWodModel;->getRankingCategoryList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/RankingCategory;

    .line 219
    invoke-virtual {v1}, Lcom/startapps/crossx/model/RankingCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/view/adapter/RankingAdapter;

    .line 220
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1}, Lcom/startapps/crossx/model/RankingCategory;->getUserModel()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v1, p0}, Lcom/startapps/crossx/view/adapter/RankingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnClickRankingListener;)V

    .line 219
    invoke-virtual {v0, v2, v3}, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;->notifyDataSetChanged()V

    .line 227
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_1

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listView:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0084

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected loadRanking(Lcom/startapps/crossx/model/WorkoutModel;)V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->rankingRequester:Lcom/startapps/crossx/controller/network/requests/RankingRequester;

    iget v1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->filter:I

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/modules/ranking/RankingFragment$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/startapps/crossx/modules/ranking/RankingFragment$3;-><init>(Lcom/startapps/crossx/modules/ranking/RankingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->getRanking(Lcom/startapps/crossx/model/WorkoutModel;ILcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method public onClickRankingUserListener(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 419
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->BOX:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-eq v0, v1, :cond_0

    .line 420
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-eq v0, v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goTouser(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Calend\u00e1rio - Ranking do treino"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 130
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 132
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0e000f

    .line 134
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    const v0, 0x7f0e000e

    .line 138
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->viewMain:Landroid/view/View;

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->viewMain:Landroid/view/View;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->viewMain:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->viewMain:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 125
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->createDialogWods()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->createDialogFilterGender()V

    .line 158
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0a0361
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/RankingRequester;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/network/requests/RankingRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->rankingRequester:Lcom/startapps/crossx/controller/network/requests/RankingRequester;

    .line 111
    iget-object p1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/ranking/RankingFragment;->loadRanking(Lcom/startapps/crossx/model/WorkoutModel;)V

    return-void
.end method

.method protected wodListToArray()[Ljava/lang/String;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/startapps/crossx/modules/ranking/RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/RankingWodModel;

    .line 203
    invoke-virtual {v3}, Lcom/startapps/crossx/model/RankingWodModel;->getWodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
