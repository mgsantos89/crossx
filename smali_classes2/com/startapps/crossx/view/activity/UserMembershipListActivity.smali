.class public Lcom/startapps/crossx/view/activity/UserMembershipListActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "UserMembershipListActivity.java"


# instance fields
.field indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field pagerAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;

.field public progressBar:Landroid/widget/ProgressBar;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field private userModel:Lcom/startapps/crossx/model/UserModel;

.field viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private populateTabs()V
    .locals 4

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v2, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-direct {v2}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;-><init>()V

    const-string v2, "active"

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {v2, v3}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->newInstance(Ljava/lang/String;Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1200ce

    .line 59
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-direct {v2}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;-><init>()V

    const-string v2, "inactive"

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {v2, v3}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->newInstance(Ljava/lang/String;Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1200cf

    .line 62
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipsPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1200d0

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

    const v0, 0x7f0d004b

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->finish()V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 48
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Lista de ades\u00f5es"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->defineToolbar()V

    .line 50
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->populateTabs()V

    .line 51
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;->finish()V

    .line 109
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
