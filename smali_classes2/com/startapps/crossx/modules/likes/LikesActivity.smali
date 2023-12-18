.class public Lcom/startapps/crossx/modules/likes/LikesActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "LikesActivity.java"

# interfaces
.implements Lcom/startapps/crossx/classes/likes/LikesContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "Lcom/startapps/crossx/classes/likes/LikesContract$View<",
        "Lcom/startapps/crossx/model/LikesModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOX_ID_PARAMS:Ljava/lang/String; = "box_id"

.field public static final POST_ID_PARAMS:Ljava/lang/String; = "post_id"


# instance fields
.field footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

.field isLoading:Z

.field protected listComments:Landroidx/recyclerview/widget/RecyclerView;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLikesAdapter:Lcom/startapps/crossx/view/adapter/LikesAdapter;

.field private presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field final visibleThreshold:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLayoutManager(Lcom/startapps/crossx/modules/likes/LikesActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/modules/likes/LikesActivity;)Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartLoadingData(Lcom/startapps/crossx/modules/likes/LikesActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->startLoadingData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    .line 43
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->visibleThreshold:I

    return-void
.end method

.method private createViewLoading()V
    .locals 4

    .line 137
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    iput-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    .line 138
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    new-instance v1, Lcom/startapps/crossx/modules/likes/LikesActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/likes/LikesActivity$2;-><init>(Lcom/startapps/crossx/modules/likes/LikesActivity;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V

    return-void
.end method

.method private startLoadingData()V
    .locals 4

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->isLoading:Z

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLikesAdapter:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->addFooterView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->initLoading()V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapps/crossx/modules/likes/LikesActivity$3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/likes/LikesActivity$3;-><init>(Lcom/startapps/crossx/modules/likes/LikesActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120024

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public errorUpdateItems()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->errorLoad()V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0035

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "box_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "post_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->defineToolbar()V

    .line 78
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 83
    new-instance v2, Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-direct {v2, p0, p1, v0}, Lcom/startapps/crossx/modules/likes/LikesViewModel;-><init>(Lcom/startapps/crossx/classes/likes/LikesContract$View;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

    .line 85
    new-instance p1, Lcom/startapps/crossx/view/adapter/LikesAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

    invoke-direct {p1, v1, v0}, Lcom/startapps/crossx/view/adapter/LikesAdapter;-><init>(Ljava/util/List;Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLikesAdapter:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 88
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLikesAdapter:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    invoke-direct {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->createViewLoading()V

    .line 93
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->presenter:Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

    invoke-interface {p1}, Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;->init()V

    .line 95
    invoke-direct {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->startLoadingData()V

    .line 97
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/startapps/crossx/modules/likes/LikesActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/modules/likes/LikesActivity$1;-><init>(Lcom/startapps/crossx/modules/likes/LikesActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->finish()V

    .line 118
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;IZ)V"
        }
    .end annotation

    .line 123
    iget-object p2, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLikesAdapter:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->addData(Ljava/util/List;)V

    .line 125
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->mLikesAdapter:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->removeFooterView()V

    xor-int/lit8 p1, p3, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->isLoading:Z

    return-void
.end method
