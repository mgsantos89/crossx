.class public Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "LoadFooterListView.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnClickRankingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingFragment"
.end annotation


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
.method static bridge synthetic -$$Nest$fgetlistRanking(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkoutDayModel(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)Lcom/startapps/crossx/model/WorkoutModel;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfilter(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->filter:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    const/4 v0, 0x1

    .line 151
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->filter:I

    return-void
.end method

.method public static newInstance(Lcom/startapps/crossx/model/WorkoutModel;)Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;
    .locals 1

    .line 158
    new-instance v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;-><init>()V

    .line 159
    iput-object p0, v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    return-object v0
.end method


# virtual methods
.method protected createDialogFilterGender()V
    .locals 2

    .line 253
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200b0

    .line 254
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/startapps/crossx/model/enuns/FilterGenderEnum;->getGenderValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$1;-><init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)V

    .line 256
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method protected createDialogWods()V
    .locals 2

    .line 268
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12025e

    .line 269
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->wodListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$2;-><init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)V

    .line 272
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 278
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 280
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120187

    .line 282
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 283
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

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "title"

    .line 497
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "caption"

    .line 498
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected displayRankingAtIndex(I)V
    .locals 5

    .line 302
    new-instance v0, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;-><init>(Landroid/content/Context;)V

    .line 304
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/RankingWodModel;

    .line 306
    invoke-virtual {p1}, Lcom/startapps/crossx/model/RankingWodModel;->getRankingCategoryList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 307
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

    .line 309
    invoke-virtual {v1}, Lcom/startapps/crossx/model/RankingCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/view/adapter/RankingAdapter;

    .line 310
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1}, Lcom/startapps/crossx/model/RankingCategory;->getUserModel()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v1, p0}, Lcom/startapps/crossx/view/adapter/RankingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnClickRankingListener;)V

    .line 309
    invoke-virtual {v0, v2, v3}, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/RankingSectionAdapter;->notifyDataSetChanged()V

    .line 317
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_1

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listView:Landroid/widget/ListView;

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

    .line 325
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 332
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->rankingRequester:Lcom/startapps/crossx/controller/network/requests/RankingRequester;

    iget v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->filter:I

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;-><init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapps/crossx/controller/network/requests/RankingRequester;->getRanking(Lcom/startapps/crossx/model/WorkoutModel;ILcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method public onClickRankingUserListener(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 509
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

    .line 510
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

    .line 512
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goTouser(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Calend\u00e1rio - Ranking do treino"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 183
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 220
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 222
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0e000f

    .line 224
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    const v0, 0x7f0e000e

    .line 228
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->viewMain:Landroid/view/View;

    if-nez v0, :cond_0

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->viewMain:Landroid/view/View;

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->viewMain:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->viewMain:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 215
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->createDialogWods()V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->createDialogFilterGender()V

    .line 248
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

    .line 206
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/RankingRequester;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/network/requests/RankingRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->rankingRequester:Lcom/startapps/crossx/controller/network/requests/RankingRequester;

    .line 201
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->workoutDayModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->loadRanking(Lcom/startapps/crossx/model/WorkoutModel;)V

    return-void
.end method

.method protected wodListToArray()[Ljava/lang/String;
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->listRanking:Ljava/util/List;

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

    .line 293
    invoke-virtual {v3}, Lcom/startapps/crossx/model/RankingWodModel;->getWodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
