.class public Lcom/startapps/crossx/view/activity/UserActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "UserActivity.java"


# static fields
.field public static final EXTRA_USER:Ljava/lang/String; = "extra-user"


# instance fields
.field indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field pagerAdapter:Lcom/startapps/crossx/view/adapter/UserPagerAdapter;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field userModel:Lcom/startapps/crossx/model/UserModel;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/UserActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 90
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1200d3

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

    const v0, 0x7f0d0048

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra-user"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->finish()V

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->defineToolbar()V

    .line 65
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 67
    new-instance p1, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-direct {p1, v0, v1, p0}, Lcom/startapps/crossx/view/adapter/UserPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/model/UserModel;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/UserPagerAdapter;

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 71
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserActivity;->goBack()V

    .line 80
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
