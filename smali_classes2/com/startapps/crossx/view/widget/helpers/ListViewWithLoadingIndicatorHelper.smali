.class public Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;
.super Ljava/lang/Object;
.source "ListViewWithLoadingIndicatorHelper.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/interfaces/ListViewWithLoadingIndicator;


# instance fields
.field private dummyView:Landroid/view/View;

.field private listView:Landroid/widget/ListView;

.field private loadingView:Landroid/view/View;

.field private loadingViewAttached:Z


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->listView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public afterSetAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 30
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->dummyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->dummyView:Landroid/view/View;

    return-void
.end method

.method public beforeSetAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 25
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->dummyView:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingViewAttached:Z

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingViewAttached:Z

    :cond_0
    return-void
.end method

.method public isLoadingViewVisible()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingViewAttached:Z

    return v0
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingView:Landroid/view/View;

    return-void
.end method

.method public showLoadingView()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingViewAttached:Z

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->loadingViewAttached:Z

    :cond_0
    return-void
.end method
