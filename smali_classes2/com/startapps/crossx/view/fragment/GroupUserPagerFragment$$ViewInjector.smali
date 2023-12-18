.class public Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "GroupUserPagerFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02ad

    const-string v1, "field \'listView\', method \'onGroup\', and method \'onDeleteGroup\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    move-object v1, v0

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->listView:Landroid/widget/ListView;

    .line 12
    check-cast v0, Landroid/widget/AdapterView;

    new-instance v1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 23
    new-instance v1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0a01ac

    const-string v1, "field \'floatingActionButton\' and method \'onCreateGroup\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 35
    move-object p2, p0

    check-cast p2, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object p2, p1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->floatingActionButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 36
    new-instance p2, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$3;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$3;-><init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->listView:Landroid/widget/ListView;

    .line 48
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->floatingActionButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-void
.end method
