.class public Lcom/startapps/crossx/view/activity/CardsActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "CardsActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/CardsActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0492

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CardsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0375

    const-string v1, "field \'recyclerViewCards\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CardsActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0111

    const-string v1, "field \'containerCards\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CardsActivity;->containerCards:Landroid/view/View;

    const v0, 0x7f0a028c

    const-string v1, "field \'viewSafeConnection\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/CardsActivity;->viewSafeConnection:Landroid/view/View;

    const v0, 0x7f0a00b8

    const-string v1, "method \'proceed\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/startapps/crossx/view/activity/CardsActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/CardsActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/CardsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04bd

    const-string v1, "method \'addNewCard\'"

    .line 27
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 28
    new-instance p2, Lcom/startapps/crossx/view/activity/CardsActivity$$ViewInjector$2;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/CardsActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/CardsActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/CardsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 40
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->containerCards:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/CardsActivity;->viewSafeConnection:Landroid/view/View;

    return-void
.end method
