.class public Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "DataSheetWorkoutActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnFinishEditTrainingResultListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field private pagerAdapter:Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;

.field private titlePage:Ljava/lang/String;

.field protected toolbar:Landroidx/appcompat/widget/Toolbar;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 92
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->titlePage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d002e

    return v0
.end method

.method protected getToToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected goBack()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "workout"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->finish()V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutModel;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "treino - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd"

    const-string v3, "dd/MM/yyyy"

    invoke-static {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->titlePage:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->defineToolbar()V

    .line 52
    new-instance v0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutModel;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;

    .line 53
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 55
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 56
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p1, p0}, Lcom/viewpagerindicator/TitlePageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 58
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onFinishEditTrainingResult()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 88
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
