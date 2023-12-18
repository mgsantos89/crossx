.class public Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ToPayFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/ToPayFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a04c7

    const-string v1, "field \'viewStatus\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewStatus:Landroid/view/View;

    const v0, 0x7f0a0195

    const-string v1, "field \'expandableListViewToPay\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;->expandableListViewToPay:Landroid/widget/ExpandableListView;

    const v0, 0x7f0a047b

    const-string v1, "field \'textViewTotalValue\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;->textViewTotalValue:Landroid/widget/TextView;

    const v0, 0x7f0a045e

    const-string v1, "field \'textViewItems\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;->textViewItems:Landroid/widget/TextView;

    const v0, 0x7f0a00c6

    const-string v1, "field \'buttonToPay\' and method \'toPay\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;->buttonToPay:Landroid/widget/Button;

    .line 20
    new-instance v1, Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/fragment/ToPayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a011a

    const-string v1, "field \'viewTotalItems\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 29
    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewTotalItems:Landroid/view/View;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/ToPayFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewStatus:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->expandableListViewToPay:Landroid/widget/ExpandableListView;

    .line 35
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->textViewTotalValue:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->textViewItems:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->buttonToPay:Landroid/widget/Button;

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment;->viewTotalItems:Landroid/view/View;

    return-void
.end method
