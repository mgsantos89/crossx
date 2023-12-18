.class public abstract Lcom/startapps/crossx/view/widget/listview/EditingListView$OnItemClickListener;
.super Ljava/lang/Object;
.source "EditingListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/widget/listview/EditingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnItemClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 261
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;

    .line 265
    :goto_0
    invoke-virtual {v0, p3}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 266
    invoke-virtual {v0, p3}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v5

    const/4 p3, -0x1

    if-ne v5, p3, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    .line 269
    invoke-virtual/range {v1 .. v6}, Lcom/startapps/crossx/view/widget/listview/EditingListView$OnItemClickListener;->onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p4

    .line 271
    invoke-virtual/range {v1 .. v7}, Lcom/startapps/crossx/view/widget/listview/EditingListView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    :goto_1
    return-void
.end method

.method public abstract onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method
