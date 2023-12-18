.class public Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "ChampionshipDetailActivity.java"


# instance fields
.field private championshipClient:Lcom/startapps/crossx/rest/clients/ChampionshipClient;

.field championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

.field indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field pagerAdapter:Lcom/startapps/crossx/view/adapter/ChampionshipPagerAdapter;

.field public progressBar:Landroid/widget/ProgressBar;

.field title:Ljava/lang/String;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 151
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 152
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0022

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "champ_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->finish()V

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v1, "Campeonato Detalhe"

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->defineToolbar()V

    .line 82
    new-instance p1, Lcom/startapps/crossx/rest/clients/ChampionshipClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/ChampionshipClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipClient:Lcom/startapps/crossx/rest/clients/ChampionshipClient;

    .line 84
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/ChampionshipModel;

    .line 86
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    .line 88
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipClient:Lcom/startapps/crossx/rest/clients/ChampionshipClient;

    iget-wide v1, p1, Lcom/startapps/crossx/model/ChampionshipModel;->id:J

    new-instance p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;-><init>(Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/startapps/crossx/rest/clients/ChampionshipClient;->championshipDetail(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 138
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->finish()V

    .line 147
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
