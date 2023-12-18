.class public Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "WorkoutRankingPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private wodsModel:Lcom/startapps/crossx/model/WorkoutModel;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutModel;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 26
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->wodsModel:Lcom/startapps/crossx/model/WorkoutModel;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "workout"

    .line 34
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->wodsModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->newInstace(I)Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->wodsModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->newInstance(Lcom/startapps/crossx/model/WorkoutModel;)Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->wodsModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;->newInstance(Lcom/startapps/crossx/model/WorkoutModel;)Lcom/startapps/crossx/view/fragment/MyTrainingPagerFragment;

    move-result-object p1

    .line 41
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1201b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1202a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/WorkoutRankingPagerAdapter;->wodsModel:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
