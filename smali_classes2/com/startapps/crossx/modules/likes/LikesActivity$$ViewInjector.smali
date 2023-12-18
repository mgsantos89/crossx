.class public Lcom/startapps/crossx/modules/likes/LikesActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "LikesActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/modules/likes/LikesActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0495

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/modules/likes/LikesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a02a7

    const-string v1, "field \'listComments\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 13
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Lcom/startapps/crossx/modules/likes/LikesActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/modules/likes/LikesActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 18
    iput-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
