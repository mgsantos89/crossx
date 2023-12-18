.class public Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "PagerFragmentAthetes.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;
.implements Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/fragment/base/AbstractFragment;",
        "Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface<",
        "Lcom/startapps/crossx/model/UserModel;",
        ">;",
        "Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;"
    }
.end annotation


# instance fields
.field adapter:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

.field private athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

.field private currentPage:I

.field private filter:I

.field listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

.field private mainView:Landroid/view/View;

.field private queryFilter:Ljava/lang/String;

.field private type:I

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
.method static bridge synthetic -$$Nest$fgetathletesInterface(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPage(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->currentPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetqueryFilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->queryFilter:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentPage(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->currentPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->filter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputqueryFilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->queryFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->currentPage:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->filter:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->queryFilter:Ljava/lang/String;

    return-void
.end method

.method private addFooterView()Landroid/view/View;
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    .line 232
    new-instance v1, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;-><init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V

    return-object v0
.end method

.method public static newInstace(I)Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;
    .locals 1

    .line 58
    new-instance v0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;-><init>()V

    .line 59
    iput p0, v0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->type:I

    return-object v0
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method public errorUpdateItems()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadError()V

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d007e

    return v0
.end method

.method protected goToUserActivity(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goTouser(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0004

    .line 165
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/view/activity/HomeActivity;

    .line 168
    invoke-virtual {p2}, Lcom/startapps/crossx/view/activity/HomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0391

    .line 170
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 171
    new-instance v0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$2;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$2;-><init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 183
    new-instance v0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$3;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$3;-><init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance p2, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;

    invoke-direct {p2, p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;-><init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->mainView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->mainView:Landroid/view/View;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->userModels:Ljava/util/List;

    .line 86
    new-instance p1, Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->userModels:Ljava/util/List;

    iget v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->type:I

    invoke-direct {p1, p2, p3, v0}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->adapter:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    .line 87
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->type:I

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string p3, "Atletas - Todos"

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->setHasOptionsMenu(Z)V

    .line 106
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->addFooterView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadingView(Landroid/view/View;)V

    .line 107
    new-instance p1, Lcom/startapps/crossx/classes/athletes/AllUsers;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/classes/athletes/AllUsers;-><init>(Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string p3, "Atletas - Meu Box"

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->setHasOptionsMenu(Z)V

    .line 94
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->addFooterView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadingView(Landroid/view/View;)V

    .line 95
    new-instance p1, Lcom/startapps/crossx/classes/athletes/UsersSameBox;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;-><init>(Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    .line 113
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->mainView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 134
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->setHasOptionsMenu(Z)V

    .line 137
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroyView()V

    return-void
.end method

.method public onLoadMore()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->showLoadingView()V

    .line 286
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->queryFilter:Ljava/lang/String;

    iget v2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;->getAthetesPage(Ljava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a01a7

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->openFilter()V

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnLoadMoreListListener(Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;)V

    .line 121
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    new-instance p2, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$1;

    invoke-direct {p2, p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$1;-><init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)V

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->athletesInterface:Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->queryFilter:Ljava/lang/String;

    iget v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->currentPage:I

    invoke-interface {p1, p2, v0}, Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;->getAthetesPage(Ljava/lang/String;I)V

    return-void
.end method

.method protected openFilter()V
    .locals 3

    .line 244
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201b9

    .line 245
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 246
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f030003

    .line 247
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->filter:I

    new-instance v2, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;-><init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)V

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 267
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 269
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120188

    .line 270
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120187

    .line 271
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->userModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->smoothScrollToPosition(I)V

    .line 300
    :cond_0
    iput p2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->currentPage:I

    .line 302
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->userModels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->adapter:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->userModels:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->setItems(Ljava/util/List;)V

    .line 304
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->adapter:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->hideLoadingView()V

    .line 307
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadMoreItems(Z)V

    return-void
.end method
