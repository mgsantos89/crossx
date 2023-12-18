.class public Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "PersonalRecordsFragment.java"


# instance fields
.field private benchmarksModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BenchmarksModel;",
            ">;"
        }
    .end annotation
.end field

.field cantentCategories:Landroid/widget/LinearLayout;

.field horizontalScrollView:Lcom/startapps/crossx/view/CustonIndicatePager;

.field private personalRecordPagerAdapter:Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;

.field progressBar:Landroid/widget/ProgressBar;

.field userModel:Lcom/startapps/crossx/model/UserModel;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static bridge synthetic -$$Nest$fgetbenchmarksModelList(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->benchmarksModelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpersonalRecordPagerAdapter(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;)Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->personalRecordPagerAdapter:Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->benchmarksModelList:Ljava/util/List;

    return-void
.end method

.method private getAllBenchmarks()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    new-instance v0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    .line 113
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v3, p0, v4}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->getAll(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method public static getInstace(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;
    .locals 1

    .line 55
    new-instance v0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;-><init>()V

    .line 56
    iput-object p0, v0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0082

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->benchmarksModelList:Ljava/util/List;

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p2, p3, v0, v1}, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;-><init>(Ljava/util/List;Lcom/startapps/crossx/model/UserModel;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->personalRecordPagerAdapter:Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;

    .line 80
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 81
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->horizontalScrollView:Lcom/startapps/crossx/view/CustonIndicatePager;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/CustonIndicatePager;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 104
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 105
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "PR Detalhe outro atleta"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->getAllBenchmarks()V

    return-void
.end method
