.class public Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "PersonalRecordPagerAdapter.java"


# instance fields
.field protected benchmarksModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BenchmarksModel;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/startapps/crossx/model/UserModel;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BenchmarksModel;",
            ">;",
            "Lcom/startapps/crossx/model/UserModel;",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->benchmarksModelList:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->benchmarksModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v1, p1, 0x1

    const-string v2, "object"

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->benchmarksModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "benchmark"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "usermodel"

    .line 38
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->benchmarksModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/BenchmarksModel;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {p1, v1}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getInstace(Lcom/startapps/crossx/model/BenchmarksModel;Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    move-result-object p1

    .line 41
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->benchmarksModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/BenchmarksModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BenchmarksModel;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
