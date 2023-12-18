.class public Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;
.super Landroid/widget/ListView;
.source "SimpleListViewWithLoadingIndicator.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/interfaces/ListViewWithLoadingIndicator;


# instance fields
.field private listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;-><init>(Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    return-void
.end method


# virtual methods
.method public getLoadingView()Landroid/view/View;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->getLoadingView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->hideLoadingView()V

    return-void
.end method

.method public isLoadingViewVisible()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->isLoadingViewVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->beforeSetAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->afterSetAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->setLoadingView(Landroid/view/View;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/SimpleListViewWithLoadingIndicator;->listViewWithLoadingIndicatorHelper:Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/helpers/ListViewWithLoadingIndicatorHelper;->showLoadingView()V

    return-void
.end method
