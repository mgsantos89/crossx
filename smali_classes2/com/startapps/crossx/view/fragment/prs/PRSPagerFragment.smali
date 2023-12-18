.class public Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "PRSPagerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private benchmarksModel:Lcom/startapps/crossx/model/BenchmarksModel;

.field private exerciserAdapter:Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

.field private exercisesModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ExercisesModel;",
            ">;"
        }
    .end annotation
.end field

.field listPRSUser:Landroid/widget/ListView;

.field private page:I

.field progressBar:Landroid/widget/ProgressBar;

.field userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetexerciserAdapter(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)Lcom/startapps/crossx/view/adapter/ExerciserAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exerciserAdapter:Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexercisesModelList(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exercisesModelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msorList(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->sorList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    const/4 v0, 0x5

    .line 46
    iput v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->page:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exercisesModelList:Ljava/util/List;

    return-void
.end method

.method public static getInstace(Lcom/startapps/crossx/model/BenchmarksModel;Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;
    .locals 1

    .line 53
    new-instance v0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;-><init>()V

    .line 54
    iput-object p1, v0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 55
    iput-object p0, v0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->benchmarksModel:Lcom/startapps/crossx/model/BenchmarksModel;

    return-object v0
.end method

.method private getPersonalRecordWhithBenchmark()V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exercisesModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    :cond_0
    new-instance v0, Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    .line 105
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->benchmarksModel:Lcom/startapps/crossx/model/BenchmarksModel;

    iget v3, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->page:I

    new-instance v4, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v5, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v5, p0, v6}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v4, v5}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->getPRSWhithBenchmarks(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/BenchmarksModel;ILcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method private sorList()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exercisesModelList:Ljava/util/List;

    new-instance v1, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0083

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->benchmarksModel:Lcom/startapps/crossx/model/BenchmarksModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/BenchmarksModel;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->userModel:Lcom/startapps/crossx/model/UserModel;

    iget-object p5, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exercisesModelList:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/ExercisesModel;

    invoke-static {p1, p2, p4, p3}, Lcom/startapps/crossx/controller/utils/Intents;->goToExercisesDetail(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/ExercisesModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onStart()V

    .line 95
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getPersonalRecordWhithBenchmark()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    new-instance p1, Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exercisesModelList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exerciserAdapter:Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->listPRSUser:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->listPRSUser:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->exerciserAdapter:Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
