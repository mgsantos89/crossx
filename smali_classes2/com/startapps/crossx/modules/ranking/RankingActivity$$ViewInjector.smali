.class public Lcom/startapps/crossx/modules/ranking/RankingActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "RankingActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/modules/ranking/RankingActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0117

    const-string v1, "field \'container\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 11
    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, p1, Lcom/startapps/crossx/modules/ranking/RankingActivity;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/modules/ranking/RankingActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/startapps/crossx/modules/ranking/RankingActivity;->container:Landroid/widget/FrameLayout;

    return-void
.end method
