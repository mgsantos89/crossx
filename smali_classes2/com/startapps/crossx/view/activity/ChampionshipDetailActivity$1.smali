.class Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;
.super Lcom/startapps/crossx/rest/callback/CancelableCallback;
.source "ChampionshipDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
        "Ljava/util/List<",
        "Lcom/startapps/crossx/model/ChampionshipDetailModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    invoke-direct {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipDetailModel;",
            ">;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 99
    :goto_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 100
    new-instance v0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;-><init>()V

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/ChampionshipDetailModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ChampionshipDetailModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->newInstance(Ljava/lang/String;)Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/ChampionshipDetailModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ChampionshipDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLatitude()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLongitude()D

    move-result-wide p1

    cmpl-double p1, p1, v0

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLocation()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLocation()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    :cond_2
    new-instance p1, Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-direct {p1}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;-><init>()V

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLocation()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLatitude()D

    move-result-wide v6

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getLongitude()D

    move-result-wide v8

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ChampionshipModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->newInstance(Ljava/lang/String;DDLjava/lang/String;)Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Localiza\u00e7\u00e3o"

    .line 106
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    new-instance p2, Lcom/startapps/crossx/view/adapter/ChampionshipPagerAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object v5, v2, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->championshipModel:Lcom/startapps/crossx/model/ChampionshipModel;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapps/crossx/view/adapter/ChampionshipPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/startapps/crossx/model/ChampionshipModel;)V

    iput-object p2, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/ChampionshipPagerAdapter;

    .line 110
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    const v1, 0x7f1201b0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->pagerAdapter:Lcom/startapps/crossx/view/adapter/ChampionshipPagerAdapter;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 113
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->viewPager:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    invoke-virtual {p1, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 115
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
