.class public Lcom/startapps/crossx/modules/ranking/RankingActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "RankingActivity.java"


# static fields
.field public static final WORKOUT_KEY:Ljava/lang/String; = "workoutModel"


# instance fields
.field protected container:Landroid/widget/FrameLayout;

.field private workoutModel:Lcom/startapps/crossx/model/WorkoutModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private back()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "workoutModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->finish()V

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->setupactionBar()V

    .line 41
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WorkoutModel;

    iput-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingActivity;->workoutModel:Lcom/startapps/crossx/model/WorkoutModel;

    .line 43
    invoke-static {v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->newInstance(Lcom/startapps/crossx/model/WorkoutModel;)Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0117

    sget-object v3, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->TAG:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->back()V

    .line 65
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->back()V

    .line 75
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d0041

    return v0
.end method

.method protected setupactionBar()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/ranking/RankingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1202a1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method
